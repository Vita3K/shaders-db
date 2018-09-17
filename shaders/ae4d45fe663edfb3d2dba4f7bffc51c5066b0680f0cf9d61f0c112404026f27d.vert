// Vertex shader.
// Downwell
#version 410

in vec4 input__in_Position;
in vec2 input__in_TextureCoord;

out vec2 vTexcoord;
uniform mat4 _gm_Matrices[5];

void main() {
    vec4 _object_space_pos = vec4(input__in_Position.xyz, 1.0);
    gl_Position = _gm_Matrices[4] * _object_space_pos;
    vTexcoord = input__in_TextureCoord;
}
