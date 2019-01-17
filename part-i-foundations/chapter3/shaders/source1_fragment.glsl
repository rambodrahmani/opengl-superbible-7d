//
// FRAGMENT SHADER: source1_fragment.glsl
//
// Our fragment shader is an extremely simple example.
//
// Author: Rambod Rahmani <rambodrahmani@autistici.org>
//         Created on 9/4/18.
//

#version 450 core

out vec4 color;

void main(void)
{
	color = vec4(0.5, 0.5, 1.0, 1.0);
}
