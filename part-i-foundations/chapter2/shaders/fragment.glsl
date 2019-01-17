//
// FRAGMENT SHADER
//
// Our fragment shader is an extremely simple example.
//
// Author: Rambod Rahmani <rambodrahmani@autistici.org>
//         Created on 9/4/18.
//

#version 450 core       // [1]

out vec4 color;         // [2]

void main(void)
{
	color = vec4(0.0, 0.8, 1.0, 1.0);
}

// [1]
// It, too, starts with the version declaration.

// [2]
// Next, it declares the color as an output variables using the out keyword.
//
// The storage qualifiers in and out actually have a purpose that contains and
// supersedes that of varying and attribute. They define what variables are
// respectively inputs and outputs for the shader. See the GLSL 4.2 reference card
// page 7:
//
// in: linkage into shader from previous stage
// out: linkage out of a shader to next stage
// attribute: same as in for vertex shader
// varying: same as out for vertex shader, same as in for fragment shader
//
// With the side note that the latter two are sort of deprecated: they are not
// present in the 4.2 core profile, only in the compatibility profile.
//
// In fragment shaders, the value of output variables will be sent to the window
// or screen. In the main function, it assigns a constant to this output. By default,
// the value goes directly onto the screen and is a vector of four floating-point
// values, one each for red, green and alpha.
//