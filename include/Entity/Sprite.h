#pragma once
#include "Math.h"

class Sprite {
public:
  // Constructor
  // (the lower the update order, the earlier the component updates)
  Sprite(class Entity *owner, int updateOrder = 100, int drawOrder = 100);
  // Destructor
  virtual ~Sprite();
  // Update this component by delta time
  virtual void Update(float deltaTime);
  // Called when world transform changes
  virtual void OnUpdateWorldTransform();

  virtual void Draw(class Shader *shader);
  virtual void SetTexture(class Texture *texture);

  int GetDrawOrder() const { return mDrawOrder; }
  int GetTexHeight() const { return mTexHeight; }
  int GetTexWidth() const { return mTexWidth; }

  void SetVisible(bool visible) { mVisible = visible; }
  bool GetVisible() const { return mVisible; }

  class Entity *GetOwner() { return mOwner; }
  int GetUpdateOrder() const { return mUpdateOrder; }

protected:
  // Owning actor
  class Entity *mOwner;
  class Texture *mTexture;
  // Update order of component
  int mUpdateOrder, mDrawOrder, mTexHeight, mTexWidth;
  bool mVisible;
};
