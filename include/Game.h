#pragma once
#include <Engine.h>

//using Engine;
class Game : Engine::Application
{
public:
    Game();
    ~Game();

    void Setup() override;
    void OnInput() override;
    void OnRender() override;
};