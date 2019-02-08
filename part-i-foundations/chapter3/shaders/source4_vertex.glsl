//
// VERTEX SHADER: source3_vertex.glsl
//
// Passing Data from Stage to Stage
// If we modify our simple vertex shader (source1_vertex.glsl) as shown below to include
// vs_color as an output variable, and correspondingly modify our simple fragment
// shader to include vs_color as an input variable as shown in source2_fragment.glsl,
// we can pass a value from the vertex shader to the fragment shader. Then, rather
// than outputting a hard-coded value, the fragment can simply output the color
// passed to it from the vertex shader.
//
// Author: Rambod Rahmani <rambodrahmani@autistici.org>
//         Created on 10/27/18.
//

#version 450 core

// 'offset' and 'color' are input vertex attributes
layout (location = 0) in vec4 offset;
layout (location = 1) in vec4 color;

// 'vs_color' is an output that will be sent to the next shader stage
out VS_OUT             // [1]
{
    vec4 color;
} vs_out;

void main(void)
{
	// declare a hard-coded array of points
	const vec4 vertices[4] = vec4[3](vec4(0.25, -0.25, 0.5, 1.0),
			                 vec4(-0.25, -0.25, 0.5, 1.0),
			                 vec4(0.25, 0.25, 0.5, 1.0),
					 vec4(0.25, -0.25, 0.5, 1.0));

	// add 'offset' to our hard-coded vertex position
	gl_Position = vertices[gl_VertexID] + offset;

	// output a fixed value for vs_out.color
	vs_out.color = color;
}

// [1]
/*
 * Note that the interface block shown here has both a block name (VS_OUT, uppercase)
 * and an instance name (vs_out, lowercase). Interface blocks are matched between
 * stages using the block name (VS_OUT in this case), but are referenced in shaders
 * using the instance name.
 */
