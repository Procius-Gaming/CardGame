#include "Window.h"
#include <iostream>
#include "glad/glad.h"
#include "GLFW/glfw3.h"

Window::Window(std::string title, int width, int height)
	:mTitle(title), mHeight(height), mWidth(width)
{
	if (!Init())
		std::cout << "Faile to init window";
}

Window::~Window()
{
	Finished();
}

bool Window::Close()
{
	return glfwWindowShouldClose(mWindow);
}

bool Window::Init()
{
	// Init glfw
	if (!glfwInit())
	{
		std::cout << "Failed to init glfw\n";
		return false;
	}

	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	// Init GLFW window
	mWindow = glfwCreateWindow(mWidth, mHeight, mTitle.c_str(), NULL, NULL);

	if (!mWindow)
	{
		std::cout << "Failed to init glfw window\n";
		glfwTerminate();
		return false;
	}

	glfwMakeContextCurrent(mWindow);

	if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
	{
		std::cout << "Failed to initialize GLAD" << std::endl;
		return false;
	}

	glViewport(0, 0, mWidth, mHeight);

	return true;
}

void Window::Finished()
{
	glfwTerminate();
}