#pragma once
#include "Renderer/Renderer.h"
#include "Window.h"
#include <vector>

class Application {
public:
  Application();
  ~Application();

  void AddEntity(class Entity *entity);
  void RemoveEntity(class Entity *entity);

  class Renderer *GetRenderer() { return mRenderer; }

  enum AppState { EGameplay, EPaused, EQuit };

  AppState GetState() const { return mAppState; }
  void SetState(AppState state) { mAppState = state; }

  void Run();

  void Finished();

  Window *GetWindow() { return mWindow; }

private:
  void UpdateApp();
  void Render();

  std::vector<class Entity *> mEntities;
  std::vector<class Entity *> mPendingEntities;

  Window *mWindow;
  Renderer *mRenderer;
  // Track if we're updationg entities right now
  AppState mAppState;
  int mWidth, mHeight;
  std::string mTitle;
  bool mUpdatingEntities;

  class Entity *mTestEnt;
  class Sprite *mTestSp;
};
