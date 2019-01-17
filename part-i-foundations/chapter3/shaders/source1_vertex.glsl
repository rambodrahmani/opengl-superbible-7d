//
// VERTEX SHADER: source1_vertex.glsl
//
// This shows our first vertex shader, which is about as simple as it gets.
//
// Author: Rambod Rahmani <rambodrahmani@autistici.org>
//         Created on 10/27/18.
//

#version 450 core

// offset is an input vertex attribute
layout (location = 0) in vec4 offset;           // [1]

void main(void)
{
	// declare a hard-coded array of points
	const vec4 vertices[3] = vec4[3](vec4(0.25, -0.25, 0.5, 1.0),
					                 vec4(-0.25, -0.25, 0.5, 1.0),
					                 vec4(0.25, 0.25, 0.5, 1.0));

	// add 'offset' to our hard-coded vertex position
	gl_Position = vertices[gl_VertexID] + offset;
}

// [1]
/*
 * We have added the variable offset as an input to the vertex shader. As it is an
 * input to the first shader in the pipeline, it will be filled automatically by
 * the vertex fetch stage. We can tell this stage what to fill the variable with
 * by using one of the many variants of the vertex attribute functions,
 * glVertexAttrib*().
 *
 * The prototype forglVertexAttrib4fv(), which we use in this example, is
 * void glVertexAttrib4fv(GLuint index, constGLfloat * v);
 *
 * Here, the parameter index is used to reference the attribute and v is a pointer
 * to the new data to put into the attribute. You may have noticed the layout (location = 0)
 * code in the declaration of the offset attribute. This is a layout qualifier,
 * which we have used to set the location of the vertex attribute to zero. This
 * location is the value we'll pass in index to refer to the attribute. Each time
 * we call one of the glVertexAttrib*() functions (of which there are many), it will
 * update the value of the vertex attribute that is passed to the vertex shader.
 * We canuse this approach to animate our one triangle.
 */
