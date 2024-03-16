#pragma once
#include "Window.h"
#include <vector>

class Application {
public:
  Application();
  ~Application();

  enum AppState { EGameplay, EPaused, EQuit };

  AppState GetState() const { return mAppState; }
  void SetState(AppState state) { mAppState = state; }

  void Run();

  void Finished();

  Window *GetWindow() { return mWindow; }

private:
  void UpdateApp();
  void Render();
  // All entity in the Application

  // Any pending Entity

  Window *mWindow;
  // Track if we're updationg entities right now
  AppState mAppState;
  int mWidth, mHeight;
  std::string mTitle;
};
