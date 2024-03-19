#pragma once
#include "Math.h"
#include <vector>

class Entity {
public:
  enum State { EActive, EPaused, EDead };

  Entity(class Application *app);
  virtual ~Entity();

  // Update function called from Game (not overridable)
  void Update(float deltaTime);
  // Updates all the components attached to the actor (not overridable)
  void UpdateSprite(float deltaTime);
  // Any actor-specific update code (overridable)
  virtual void UpdateEntity(float deltaTime);

  // Getters/setters
  const Vector2 &GetPosition() const { return mPosition; }
  void SetPosition(const Vector2 &pos) {
    mPosition = pos;
    mRecomputeTransform = true;
  }
  float GetScale() const { return mScale; }
  void SetScale(float scale) {
    mScale = scale;
    mRecomputeTransform = true;
  }
  const Quaternion &GetRotation() const { return mRotation; }
  void SetRotation(const Quaternion &rotation) {
    mRotation = rotation;
    mRecomputeTransform = true;
  }

  void ComputeWorldTransform();
  const Matrix4 &GetWorldTransform() const { return mWorldTransform; }

  State GetState() const { return mState; }
  void SetState(State state) { mState = state; }

  class Application *GetApp() { return mApp; }

  // Add/remove components
  void AddSprite(class Sprite *sprite);
  void RemoveSprite(class Sprite *sprite);

  const std::vector<class Sprite *> &GetSprites() const { return mSprites; }

private:
  // Actor's state
  State mState;

  // Transform
  Matrix4 mWorldTransform;
  Vector2 mPosition;
  Quaternion mRotation;
  float mScale;
  bool mRecomputeTransform;

  std::vector<class Sprite *> mSprites;
  class Application *mApp;
};
