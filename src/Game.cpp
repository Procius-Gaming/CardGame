#include "Game.h"

Game::Game()
{
    //app.GetWindow().SetName("CardGame");
}

Game::~Game()
{

}

void Game::Setup()
{
    ResourceManager::LoadShader("Assets/shaders/Basic.shader", nullptr, "Global");
    glm::mat4 projection = glm::ortho(0.0f, static_cast<float>(app.GetWindow().GetWidth()),
    static_cast<float>(app.GetWindow().GetHeight()), 0.0f, -1.0f, 1.0f);

    ResourceManager::GetShader("Global").Use().SetInteger("image", 0);
    ResourceManager::GetShader("Global").SetMatrix4("projection", projection);

    shader = ResourceManager::GetShader("Global");
    Renderer = new SpriteRenderer(shader);

    ResourceManager::LoadTexture("Assets/cards/2.1.png", true, "back");
}
void Game::OnInput()
{
           
}

void Game::OnRender()
{ 
    glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
    Texture2D back = ResourceManager::GetTexture("back");
    Renderer->DrawSprite(back, glm::vec2(0, 0),glm::vec2(back.Width, back.Height) , 0.0f);
    
}

void Game::ImGui()
{
    ImGui::Begin("TEST");
    ImGui::End();
}

Application* Engine::CreateApplication()
{
	return new Game();
}
