#include "Game.h"

Game::Game()
{

}

Game::~Game()
{

}

void Game::Setup()
{

}
void Game::OnInput()
{
           
}

void Game::OnRender()
{ 
    glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
    EN_INFO("Hello World!");
}



Application* Engine::CreateApplication()
{
	return new Game();
}
