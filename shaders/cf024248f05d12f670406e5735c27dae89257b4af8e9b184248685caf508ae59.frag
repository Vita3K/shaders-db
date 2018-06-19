// https://github.com/Rinnegatamante/vitaQuake/blob/master/shaders/replace_alpha_fog_f.cg
#version 410

uniform sampler2D tex;
in vec2 vTexcoord;
in float vFog;

out vec4 fragColor;

void main()
{
    vec4 c = texture(tex, vTexcoord);
    c.rgb = c.rgb * vFog;
    if (c.a > 0.666) fragColor = c;
    else discard;
}
