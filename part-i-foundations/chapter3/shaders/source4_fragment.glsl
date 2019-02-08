//
// FRAGMENT SHADER: source4_fragment.glsl
//
// Our fragment shader is an extremely simple example.
//
// Author: Rambod Rahmani <rambodrahmani@autistici.org>
//         Created on 9/4/18.
//

#version 450 core

// declare VS_OUT as an input interface block
in VS_OUT           // [1]
{
    vec4 color;
} fs_in;

// output to the framebuffer
out vec4 color;

void main(void)
{
    // simply assign the color we were given by the vertex shader to our output
	color = fs_in.color;
}

// [1]
/*
 * Matching interface blocks by block name but allowing block instances to have
 * different names in each shader stage serves two important purposes. First, it
 * allows the name byw hich you refer to the block to be different in each stage,
 * thereby avoiding confusing things such as having to use vs_out in a fragment
 * shader. Second, it allows interfaces to go from being single items to arrays
 * when crossing between certain shader stages, such as the vertex and tessellation
 * or geometry shader stages, as we will see in a short while. Note that interface
 * blocks are only for moving data from shader stage to shader stage — you can't
 * use them to group together inputs to the vertex shader or outputs from the
 * fragment shader.
 */
