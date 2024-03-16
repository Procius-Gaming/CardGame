#include "Renderer/Renderer.h"
#include "Application.h"
#include "Renderer/Shader.h"
#include "Renderer/VertexArray.h"
#include <glad/glad.h>
#include <glfw/glfw3.h>
#include <iostream>

Renderer::Renderer(Application* app)
	:mApp(app), mShader(nullptr)
{

}

Renderer::~Renderer() {}

bool Renderer::Init()
{
	//Make sure we can create/compile shaders
	if (!LoadShaders())
	{
		std::cout << "Failed to load shaders\n";
		return false;
	}

	//Create quad for drawing sprites
	CreateSpriteVerts();

	return true;
}

void Renderer::Shutdown()
{
	delete mShader;
	//mVerts->Unload();
	delete mShader;
	//mSpriteShader->Unload();
}

void Renderer::UnloadData()
{
	// Destroy textures
	for (auto i : mTextures) {
		i.second->Unload();
		delete i.second;
	}
	mTextures.clear();
}

void Renderer::Draw()
{
	// Render
	glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
	glClear(GL_COLOR_BUFFER_BIT);

	// bind Texture
	mTexture->SetActive();

	mShader->Use();
	mVerts->SetActive();
	//glBindVertexArray(VAO);
	glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);

	//Swap buffer
	glfwSwapBuffers(mApp->GetWindow()->GetGLFWwindow());
}

Texture* Renderer::GetTexture(const std::string& fileName)
{
	Texture* tex = nullptr;
	auto iter = mTextures.find(fileName);
	if (iter != mTextures.end()) {
		tex = iter->second;
	}
	else {
		tex = new Texture();
		if (tex->Load(fileName)) {
			mTextures.emplace(fileName, tex);
		}
		else {
			delete tex;
			tex = nullptr;
		}
	}
	return tex;
}

bool Renderer::LoadShaders()
{
	// Create sprite shader
	mShader = new Shader("Shader/Vertex.shader", "Shader/Fragment.shader");

	mShader->Use();

	mTexture = new Texture();
	mTexture->Load("Assets/container.jpg");

	return true;
}

void Renderer::CreateSpriteVerts()
{
	mVerts = new VertexArray();
	mVerts->Init();
}