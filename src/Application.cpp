#include "Application.h"
#include "Renderer/stb_image.h"
#include "glad/glad.h"
#include <algorithm>
#include <iostream>

#include "GLFW/glfw3.h"

Application::Application() {
  mTitle = "CardGame";
  mWidth = 640;
  mHeight = 480;

  mWindow = new Window(mTitle, mWidth, mHeight);
  if (!mWindow->Init()) {
    std::cout << "Faile to init window\n";
  }
}

Application::~Application() { Finished(); }

void Application::Run() {
  while (!mWindow->Close()) {
    UpdateApp();
    Render();
  }
}

void Application::UpdateApp() { float deltaTime; }

void Application::Render() {
  // Poll Events
  glfwPollEvents();
}

void Application::Finished() { mWindow->Finished(); }
