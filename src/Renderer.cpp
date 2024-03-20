#include "Renderer/Renderer.h"
#include "Application.h"
#include "Entity/Sprite.h"
#include "Renderer/Shader.h"
#include "Renderer/Texture.h"
#include "Renderer/VertexArray.h"
#include <algorithm>
#include <glad/glad.h>
#include <iostream>

#include <GLFW/glfw3.h>

Renderer::Renderer(Application *app) : mApp(app), mSpriteShader(nullptr) {}

Renderer::~Renderer() {}

bool Renderer::Initialize() {

  // Make sure we can create/compile shaders
  if (!LoadShaders()) {
    std::cout << "Failed to load shaders.\n";
    return false;
  }

  // Create quad for drawing sprites
  CreateSpriteVerts();

  return true;
}

void Renderer::Shutdown() {
  delete mSpriteVerts;
  mSpriteShader->Unload();
  delete mSpriteShader;
}

void Renderer::UnloadData() {
  // Destroy textures
  for (auto i : mTextures) {
    i.second->Unload();
    delete i.second;
  }
  mTextures.clear();
}

void Renderer::Draw() {
  // Clear color buffer/depth buffer
  glClearColor(0.0f, 0.5f, 0.0f, 1.0f);
  glDepthMask(GL_TRUE);
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

  // Draw mesh components
  // Enable depth buffering/disable alpha blend
  glEnable(GL_DEPTH_TEST);
  glDisable(GL_BLEND);

  // Draw all sprite components
  // Disable depth buffering
  glDisable(GL_DEPTH_TEST);
  // Enable alpha blending on the color buffer
  glEnable(GL_BLEND);

  // Set shader/vao as active
  mSpriteShader->SetActive();
  mSpriteVerts->SetActive();
  for (auto sprite : mSprites) {
    if (sprite->GetVisible()) {
      sprite->Draw(mSpriteShader);
    }
  }
  /*
    // Draw any UI screens
    for (auto ui : mApp->GetUIStack()) {
      ui->Draw(mSpriteShader);
    }*/

  // Swap the buffers
  glfwSwapBuffers(mApp->GetWindow()->GetGLFWwindow());
}

void Renderer::AddSprite(Sprite *sprite) {
  // Find the insertion point in the sorted vector
  // (The first element with a higher draw order than me)
  int myDrawOrder = sprite->GetDrawOrder();
  auto iter = mSprites.begin();
  for (; iter != mSprites.end(); ++iter) {
    if (myDrawOrder < (*iter)->GetDrawOrder()) {
      break;
    }
  }

  // Inserts element before position of iterator
  mSprites.insert(iter, sprite);
}

void Renderer::RemoveSprite(Sprite *sprite) {
  auto iter = std::find(mSprites.begin(), mSprites.end(), sprite);
  mSprites.erase(iter);
}

Texture *Renderer::GetTexture(const std::string &fileName) {
  Texture *tex = nullptr;
  auto iter = mTextures.find(fileName);
  if (iter != mTextures.end()) {
    tex = iter->second;
  } else {
    tex = new Texture();
    if (tex->Load(fileName)) {
      mTextures.emplace(fileName, tex);
    } else {
      delete tex;
      tex = nullptr;
    }
  }
  return tex;
}

bool Renderer::LoadShaders() {
  // Create sprite shader
  mSpriteShader = new Shader();
  if (!mSpriteShader->Load("Shader/Vertex.shader", "Shader/Fragment.shader")) {
    return false;
  }

  mSpriteShader->SetActive();
  // Set the view-projection matrix
  Matrix4 spriteViewProj = Matrix4::CreateSimpleViewProj(
      mApp->GetWindow()->GetWidth(), mApp->GetWindow()->GetHeight());
  mSpriteShader->SetMatrixUniform("uViewProj", spriteViewProj);

  // Set the view-projection matrix
  mView = Matrix4::CreateLookAt(Vector3::Zero, Vector3::UnitX, Vector3::UnitZ);
  mProjection = Matrix4::CreatePerspectiveFOV(
      Math::ToRadians(70.0f), mApp->GetWindow()->GetWidth(),
      mApp->GetWindow()->GetHeight(), 10.0f, 10000.0f);

  return true;
}

void Renderer::CreateSpriteVerts() {
  float vertices[] = {
      -0.5f, 0.5f,  0.f, 0.f, 0.f, 0.0f, 0.f, 0.f, // top left
      0.5f,  0.5f,  0.f, 0.f, 0.f, 0.0f, 1.f, 0.f, // top right
      0.5f,  -0.5f, 0.f, 0.f, 0.f, 0.0f, 1.f, 1.f, // bottom right
      -0.5f, -0.5f, 0.f, 0.f, 0.f, 0.0f, 0.f, 1.f  // bottom left
  };

  unsigned int indices[] = {0, 1, 2, 2, 3, 0};

  mSpriteVerts =
      new VertexArray(vertices, 4, VertexArray::PosNormTex, indices, 6);
}

Vector3 Renderer::Unproject(const Vector3 &screenPoint) const {
  // Convert screenPoint to device coordinates (between -1 and +1)
  Vector3 deviceCoord = screenPoint;
  deviceCoord.x /= (mApp->GetWindow()->GetWidth()) * 0.5f;
  deviceCoord.y /= (mApp->GetWindow()->GetHeight()) * 0.5f;

  // Transform vector by unprojection matrix
  Matrix4 unprojection = mView * mProjection;
  unprojection.Invert();
  return Vector3::TransformWithPerspDiv(deviceCoord, unprojection);
}

void Renderer::GetScreenDirection(Vector3 &outStart, Vector3 &outDir) const {
  // Get start point (in center of screen on near plane)
  Vector3 screenPoint(0.0f, 0.0f, 0.0f);
  outStart = Unproject(screenPoint);
  // Get end point (in center of screen, between near and far)
  screenPoint.z = 0.9f;
  Vector3 end = Unproject(screenPoint);
  // Get direction vector
  outDir = end - outStart;
  outDir.Normalize();
}
