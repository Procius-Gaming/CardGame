#include "Application.h"
#include "glad/glad.h"
#include "GLFW/glfw3.h"
#include "Renderer/stb_image.h"
#include <iostream>

Application::Application()
{
	mTitle = "CardGame";
	mWidth = 640;
	mHeight = 480;

	mWindow = new Window(mTitle, mWidth, mHeight);
	mRenderer = new Renderer(this);
	if (!mRenderer->Init())
	{
		std::cout << "Failed to init rendere\n";

	}

}

Application::~Application()
{
	Finished();
}

void Application::Run()
{
	while (!mWindow->Close())
	{
		mRenderer->Draw();
		// Poll Events
		glfwPollEvents();
	}
}


void Application::Finished()
{
	mWindow->Finished();
}