//
// FRAGMENT SHADER: source2_fragment.glsl
//
// Our fragment shader is an extremely simple example.
//
// Author: Rambod Rahmani <rambodrahmani@autistici.org>
//         Created on 9/4/18.
//

#version 450 core

// input from the vertex shader
in vec4 vs_color;

// output to the framebuffer
out vec4 color;

void main(void)
{
    // simply assign the color we were given by the vertex shader to our output
	color = vs_color;
}
