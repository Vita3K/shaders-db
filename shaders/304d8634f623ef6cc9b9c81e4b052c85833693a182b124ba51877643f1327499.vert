// Game Maker shader, used by Wasteland Kings and Wizard Wizard both available on VitaDB
#version 410

uniform mat4 gm_Matrices[5];

in vec4 input_aPosition;
in vec4 input_aColour;
in vec2 input_aTexCoord;

out vec4 vColor;
out vec2 vTexCoord;

void main() 
{
    gl_Position = gm_Matrices[4] * input_aPosition;
    vColor = input_aColour;
    vTexCoord = input_aTexCoord;
}
