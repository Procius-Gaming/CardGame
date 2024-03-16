#pragma once
#include <string>

struct GLFWwindow;

class Window
{
public:
	Window(std::string title, int width, int height);
	~Window();

	bool Init();

	bool Close();

	void Finished();

	GLFWwindow *GetGLFWwindow() { return mWindow; }

private:
	GLFWwindow* mWindow;
	int mWidth, mHeight;
	std::string mTitle;
};