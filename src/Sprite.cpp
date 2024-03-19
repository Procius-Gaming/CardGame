#include "Entity/Sprite.h"
#include "Application.h"
#include "Entity/Entity.h"
#include "Renderer/Renderer.h"
#include "Renderer/Shader.h"
#include "Renderer/Texture.h"

Sprite::Sprite(Entity *owner, int updateOrder, int drawOrder)
    : mOwner(owner), mUpdateOrder(updateOrder), mTexture(nullptr),
      mDrawOrder(drawOrder), mTexWidth(0), mTexHeight(0), mVisible(true) {
  // Add to actor's vector of components
  mOwner->AddSprite(this);
  mOwner->GetApp()->GetRenderer()->AddSprite(this);
}

Sprite::~Sprite() {
  mOwner->RemoveSprite(this);
  mOwner->GetApp()->GetRenderer()->RemoveSprite(this);
}

void Sprite::Draw(Shader *shader) {
  if (mTexture) {
    // Scale the quad by the width/height of texture
    Matrix4 scaleMat = Matrix4::CreateScale(
        static_cast<float>(mTexWidth), static_cast<float>(mTexHeight), 1.0f);

    Matrix4 world = scaleMat * mOwner->GetWorldTransform();

    // Since all sprites use the same shader/vertices,
    // the game first sets them active before any sprite draws

    // Set world transform
    shader->SetMatrixUniform("uWorldTransform", world);
    // Set current texture
    mTexture->SetActive();
    // Draw quad
    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, nullptr);
  }
}

void Sprite::SetTexture(Texture *texture) {
  mTexture = texture;
  // Set width/height
  mTexWidth = texture->GetWidth();
  mTexHeight = texture->GetHeight();
}

void Sprite::Update(float deltaTime) {}

void Sprite::OnUpdateWorldTransform() {}
