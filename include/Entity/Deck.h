#pragma once
#include "Entity/Entity.h"
#include <vector>
#include <string>

class Card : public Entity
{
public:
	Card(class Application *app, std::string fileName, int width, int height);
	~Card();

private:
	class Sprite* mSprite;
	class Texture* mTexture;
};

class Deck : public Entity
{
public:
	Deck(class Application *app, int x, int y);
	~Deck();
private:
	std::vector<Card*> mCards;
};