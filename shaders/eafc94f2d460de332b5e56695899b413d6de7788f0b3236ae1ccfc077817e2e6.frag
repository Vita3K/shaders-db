// Fragment shader.
#version 410

uniform sampler2D tex;

in vec2 vTexcoord;

out vec4 fragColor;

void main() {
    fragColor = texture(tex, vTexcoord);
}
