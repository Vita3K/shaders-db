// Vertex shader.
// Looks like a Game Maker shader, but I don't think Downwell uses it - PetMac
#version 410

in vec4 input_aPosition;
in vec4 input_aColour;
in vec2 input_aTexCoord;

uniform mat4 gm_Matrices[5];

out vec4 vColor;
out vec2 vTexCoord;

void main() 
{
    gl_Position = gm_Matrices[4] * input_aPosition;
    vColor = input_aColour;
    vTexCoord = input_aTexCoord;
}
