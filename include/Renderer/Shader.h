#pragma once
#include <string>

class Shader
{
public:
	Shader(const char* vertexPath, const char* fragmentPath);

	void Use();
	void SetBool(const std::string& name, bool value) const;
	void SetInt(const std::string& name, int value) const;
	void SetFloat(const std::string& name, float value) const;

private:
	unsigned int mID;
	int mSuccess;
	char mInfoLog[1024];
	void CheckCompileErrors(unsigned int shader, std::string type);
};