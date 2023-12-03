#include <Engine.h>

using namespace Engine;
class Game : public Application
{
public:
	Game();
	~Game();

	void Setup() override;
	void OnInput() override;
	void OnRender() override;

	Application& app = Application::Get();
};
