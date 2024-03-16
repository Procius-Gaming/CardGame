#pragma once
#include "Window.h"
#include "Renderer/Shader.h"
#include "Renderer/Texture.h"
#include "Renderer/VertexArray.h"
#include "Renderer/Renderer.h"

class Application
{
public:
	Application();
	~Application();

	void Run();

	void Finished();
	
	unsigned int VBO, VAO, EBO, texture;

	Window* GetWindow() { return mWindow; }
	
private:
	Window* mWindow;
	Renderer* mRenderer;
	Shader* mShader;
	Texture* mTexture;
	VertexArray* mVertexArray;
	int mWidth, mHeight;
	std::string mTitle;
};