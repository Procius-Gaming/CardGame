#include "Window.h"
#include "glad/glad.h"
#include <iostream>

#include "GLFW/glfw3.h"

Window::Window(std::string title, int width, int height)
    : mTitle(title), mHeight(height), mWidth(width) {}

Window::~Window() { Finished(); }

bool Window::Close() { return glfwWindowShouldClose(mWindow); }

bool Window::Init() {
  // Init glfw
  if (!glfwInit()) {
    std::cout << "Failed to init glfw\n";
    return false;
  }

  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

  // Init GLFW window
  mWindow = glfwCreateWindow(mWidth, mHeight, mTitle.c_str(), NULL, NULL);

  if (!mWindow) {
    std::cout << "Failed to init glfw window\n";
    glfwTerminate();
    return false;
  }

  glfwMakeContextCurrent(mWindow);
  glfwSetFramebufferSizeCallback(mWindow, framebuffer_size_callback);

  if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
    std::cout << "Failed to initialize GLAD" << std::endl;
    return false;
  }

  //glViewport(0, 0, mWidth, mHeight);

  return true;
}

void Window::Finished() { glfwTerminate(); }

void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    glViewport(0, 0, width, height);
}
