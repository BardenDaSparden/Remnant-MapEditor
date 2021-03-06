#version 330 

layout (location = 0) in vec2 position;
layout (location = 1) in vec2 texCoord;
layout (location = 2) in vec4 color;

out vec2 v_texCoord0;
out vec4 v_color;

uniform mat4 projection;
uniform mat4 view;

void main(){
	v_texCoord0 = texCoord;
	v_color = color;
	gl_Position = projection * view * vec4(position, 1, 1);
}