#include "Application.h"
#include "Entity/Entity.h"
#include "Entity/Sprite.h"
#include "Renderer/Renderer.h"
#include "Renderer/stb_image.h"
#include "glad/glad.h"
#include <algorithm>
#include <iostream>

#include "GLFW/glfw3.h"

Application::Application() {
  mTitle = "CardGame";
  mWidth = 640;
  mHeight = 480;
  mUpdatingEntities = false;

  mWindow = new Window(mTitle, mWidth, mHeight);
  if (!mWindow->Init()) {
    std::cout << "Faile to init window\n";
  }

  mRenderer = new Renderer(this);
  if (!mRenderer->Initialize()) {
    std::cout << "Failed to init Renderer\n";
  }

  mTestEnt = new Entity(this);
  mTestSp = new Sprite(mTestEnt);
  mTestSp->SetTexture(GetRenderer()->GetTexture("Assets/container.jpg"));
  mTestEnt->SetPosition(Vector2(100, 100));

  mTestEnt = new Entity(this);
  mTestSp = new Sprite(mTestEnt);
  mTestSp->SetTexture(
      GetRenderer()->GetTexture("Assets/game-cards/card-back.jpg"));
  mTestEnt->SetPosition(Vector2(100, 100));
}

Application::~Application() { Finished(); }

void Application::Run() {
  while (!mWindow->Close()) {
    UpdateApp();
    Render();
  }
}

void Application::UpdateApp() {
  float deltaTime;
  if (mAppState == EGameplay) {
    // Update all actors
    mUpdatingEntities = true;
    for (auto actor : mEntities) {
      actor->Update(deltaTime);
    }
    mUpdatingEntities = false;

    // Move any pending actors to mActors
    for (auto pending : mPendingEntities) {
      pending->ComputeWorldTransform();
      mEntities.emplace_back(pending);
    }
    mPendingEntities.clear();

    // Add any dead actors to a temp vector
    std::vector<Entity *> deadEntities;
    for (auto actor : mEntities) {
      if (actor->GetState() == Entity::EDead) {
        deadEntities.emplace_back(actor);
      }
    }

    // Delete dead actors (which removes them from mActors)
    for (auto actor : deadEntities) {
      delete actor;
    }
  }
}

void Application::AddEntity(Entity *entity) {
  // If we're updating actors, need to add to pending
  if (mUpdatingEntities) {
    mPendingEntities.emplace_back(entity);
  } else {
    mEntities.emplace_back(entity);
  }
}

void Application::RemoveEntity(Entity *entity) {
  // Is it in pending actors?
  auto iter =
      std::find(mPendingEntities.begin(), mPendingEntities.end(), entity);
  if (iter != mPendingEntities.end()) {
    // Swap to end of vector and pop off (avoid erase copies)
    std::iter_swap(iter, mPendingEntities.end() - 1);
    mPendingEntities.pop_back();
  }

  // Is it in actors?
  iter = std::find(mEntities.begin(), mEntities.end(), entity);
  if (iter != mEntities.end()) {
    // Swap to end of vector and pop off (avoid erase copies)
    std::iter_swap(iter, mEntities.end() - 1);
    mEntities.pop_back();
  }
}

void Application::Render() {
  mRenderer->Draw();
  // Poll Events
  glfwPollEvents();
}

void Application::Finished() { mWindow->Finished(); }
