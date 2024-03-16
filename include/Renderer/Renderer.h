#pragma once
#include <string>
#include <unordered_map>
#include <vector>

class Renderer
{
public:
	Renderer(class Application* app);
	~Renderer();

	bool Init();
	void Shutdown();
	void UnloadData();

	void Draw();
	
	class Texture* GetTexture(const std::string& fileName);

private:

	bool LoadShaders();
	void CreateSpriteVerts();

	//Map of textures loaded
	std::unordered_map<std::string, class Texture*> mTextures;

	//App
	class Application* mApp;

	//Sprite Vertec array
	class VertexArray* mVerts;

	class Texture* mTexture;

	//Sprite shader
	class Shader* mShader;
};