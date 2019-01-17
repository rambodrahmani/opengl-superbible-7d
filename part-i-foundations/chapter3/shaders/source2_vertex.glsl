//
// VERTEX SHADER: source2_vertex.glsl
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
out vec4 vs_color;

void main(void)
{
	// declare a hard-coded array of points
	const vec4 vertices[3] = vec4[3](vec4(0.25, -0.25, 0.5, 1.0),
					                 vec4(-0.25, -0.25, 0.5, 1.0),
					                 vec4(0.25, 0.25, 0.5, 1.0));

	// add 'offset' to our hard-coded vertex position
	gl_Position = vertices[gl_VertexID] + offset;

	// output a fixed value for vs_color
	vs_color = color;       // [1]
}

// [1]
/*
 * As you can see in, we declare a second input to our vertex shader, color (this
 * time at location 1), and write its value to the vs_color output. This is pickedup
 * by the fragment shader of source2_fragment.glsl and written to the framebuffer.
 * This allows us to pass a color all the way from a vertex attribute that we can
 * set with glVertexAttrib*() through the vertex shader, into the fragment shader,
 * and out to the framebuffer. As aconsequence, we can draw different-colored triangles!
 */
