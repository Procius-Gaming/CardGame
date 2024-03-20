#pragma once
#include <string>

struct GLFWwindow;

class Window {
public:
  Window(std::string title, int width, int height);
  ~Window();

  bool Init();
  
  bool Close();

  void Finished();

  GLFWwindow *GetGLFWwindow() { return mWindow; }
  int GetWidth() const { return mWidth; }
  int GetHeight() const { return mHeight; }

private:
  GLFWwindow *mWindow;
  int mWidth, mHeight;
  std::string mTitle;
};

void framebuffer_size_callback(GLFWwindow* window, int width, int height);