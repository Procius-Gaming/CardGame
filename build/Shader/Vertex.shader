#version 330 core

uniform mat4 uWorldTransform;
uniform mat4 uViewProj;

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

out vec3 ourColor;
out vec2 TexCoord;

void main()
{
  vec4 pos = vec4(aPos, 1.0);
	gl_Position = pos * uViewProj; 
	ourColor = aColor;
	TexCoord = vec2(aTexCoord.x, aTexCoord.y);
}
