#pragma once
#include "Math.h"
#include <string>
#include <unordered_map>
#include <vector>

class Renderer {
public:
  Renderer(class Application *app);
  ~Renderer();

  bool Initialize();
  void Shutdown();
  void UnloadData();

  void Draw();

  void AddSprite(class Sprite *sprite);
  void RemoveSprite(class Sprite *sprite);

  class Texture *GetTexture(const std::string &fileName);

  void SetViewMatrix(const Matrix4 &view) { mView = view; }

  // Given a screen space point, unprojects it into world space,
  // based on the current 3D view/projection matrices
  // Expected ranges:
  // x = [-screenWidth/2, +screenWidth/2]
  // y = [-screenHeight/2, +screenHeight/2]
  // z = [0, 1) -- 0 is closer to camera, 1 is further
  Vector3 Unproject(const Vector3 &screenPoint) const;

  // Gets start point and direction of screen vector
  void GetScreenDirection(Vector3 &outStart, Vector3 &outDir) const;

private:
  bool LoadShaders();
  void CreateSpriteVerts();

  // Map of textures loaded
  std::unordered_map<std::string, class Texture *> mTextures;

  // All the sprite components drawn
  std::vector<class Sprite *> mSprites;

  // Game
  class Application *mApp;

  // Sprite shader
  class Shader *mSpriteShader;
  // Sprite vertex array
  class VertexArray *mSpriteVerts;

  // View/projection for 3D shaders
  Matrix4 mView;
  Matrix4 mProjection;
};
