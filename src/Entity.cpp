#include "Entity/Entity.h"
#include "Application.h"
#include "Entity/Sprite.h"
#include <algorithm>

Entity::Entity(Application *app)
    : mState(EActive), mPosition(Vector2::Zero),
      mRotation(Quaternion::Identity), mScale(1.0f), mApp(app),
      mRecomputeTransform(true) {
  mApp->AddEntity(this);
}

Entity::~Entity() {
  mApp->RemoveEntity(this);
  // Need to delete components
  // Because ~Sprite calls RemoveSprite, need a different style loop
  while (!mSprites.empty()) {
    delete mSprites.back();
  }
}

void Entity::Update(float deltaTime) {
  if (mState == EActive) {
    if (mRecomputeTransform) {
      ComputeWorldTransform();
    }
    UpdateSprite(deltaTime);
    UpdateEntity(deltaTime);
  }
}

void Entity::UpdateSprite(float deltaTime) {
  for (auto comp : mSprites) {
    comp->Update(deltaTime);
  }
}

void Entity::UpdateEntity(float deltaTime) {}

void Entity::ComputeWorldTransform() {
  mRecomputeTransform = false;
  // Scale, then rotate, then translate
  mWorldTransform = Matrix4::CreateScale(mScale);
  mWorldTransform *= Matrix4::CreateFromQuaternion(mRotation);
  Vector3 pos(mPosition.x, mPosition.y, 0);
  mWorldTransform *= Matrix4::CreateTranslation(pos);

  // Inform components world transform updated
  for (auto comp : mSprites) {
    comp->OnUpdateWorldTransform();
  }
}

void Entity::AddSprite(Sprite *component) {
  // Find the insertion point in the sorted vector
  // (The first element with a order higher than me)
  int myOrder = component->GetUpdateOrder();
  auto iter = mSprites.begin();
  for (; iter != mSprites.end(); ++iter) {
    if (myOrder < (*iter)->GetUpdateOrder()) {
      break;
    }
  }

  // Inserts element before position of iterator
  mSprites.insert(iter, component);
}

void Entity::RemoveSprite(Sprite *component) {
  auto iter = std::find(mSprites.begin(), mSprites.end(), component);
  if (iter != mSprites.end()) {
    mSprites.erase(iter);
  }
}
