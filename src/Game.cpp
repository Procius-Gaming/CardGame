#include "enpch.h"
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

void Game::OnRender()
{
    EN_INFO("Hello World!");
}

void Game::OnInput()
{

}

Engine::Application* Engine::CreateApplication()
{
	return new Game();
}