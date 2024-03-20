#include "Entity/Deck.h"
#include "Entity/Sprite.h"
#include "Application.h"
#include "Renderer/Renderer.h"
#include "Renderer/Texture.h"

Card::Card(Application* app, std::string fileName, int width, int height)
	: Entity(app)
{
	mSprite = new Sprite(this);
	mTexture = app->GetRenderer()->GetTexture(fileName);
	mTexture->SetWidth(width);
	mTexture->SetHeight(height);
	mSprite->SetTexture(mTexture);
}

Card::~Card() {}

Deck::Deck(Application* app, int x, int y)
	: Entity(app)
{
	SetPosition(Vector2(x, y));
	mCards.push_back(new Card(app, "Assets/game-cards/card-back.jpg", 56, 97));
}


Deck::~Deck() {}