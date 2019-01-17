//
// VERTEX SHADER
//
// This shows our first vertex shader, which is about as simple as it gets.
//
// Author: Rambod Rahmani <rambodrahmani@autistici.org>
//         Created on 9/4/18.
//

#version 450 core       // [1]

void main(void)         // [2]
{
	// declare a hard-coded array of points                // [4]
	const vec4 vertices[3] = vec4[3](vec4(0.25, -0.25, 0.5, 1.0),
					                 vec4(-0.25, -0.25, 0.5, 1.0),
					                 vec4(0.25, 0.25, 0.5, 1.0));

	// index into our array using gl_VertexID
	gl_Position = vertices[gl_VertexID];        // [3]
}

// [1]
// In the first line, we have the version declaration. No matter what your target
// GL version is, it is best to put the version number at the top of each shader
// (vertex shader, geometry shader, fragment shader and any other shader stage).
// It makes things clearer. People will understand what version of GLSL you are
// aiming for and so they don't have to guess it by looking at the rest of the
// code. Also, the driver might be more strict in terms of the syntax if it sees
// that. Strictness is a good thing because it enforces the GLSL standard and no
// additional features that the IHV might provide (IHV such as nVidia).

// [2]
// Next we have the declaration of our main function, which is where the shader
// starts executing. This is exactly the same as in a normal C program, except
// that the main function of a GLSL shader has no parameters.

// [3]
// Inside our main function, we assign a value to gl_Position, which is part of
// the plumbing that connects the shader to the rest of the OpenGL. All variables
// that start with gl_ are part of OpenGL and connect shaders to each other or to
// the various parts of fixed functionality in OpenGL. In the vertex shader,
// gl_Position represents the output position of the vertex.
//
// In the vertex, tessellation evaluation and geometry languages, a single global
// instance of the gl_PerVertex named block is available and its gl_Position member
// is an output that receives the homogeneous vertex position. It may be written
// at any time during shader execution. The value written to gl_Position will be
// used by primitive assembly, clipping, culling and other fixed functionality
// operations, if present, that operate on primitives after vertex processing has
// occurred.
//
// The value we assign places the vertex right in the middle of OpenGL's clip space,
// which is the coordinate system expected by the next stage of the OpenGL pipeline.

// [4]
// Why is a vec4 used?
// A vec4 represents the position in homogeneous coordinates, so w is 1. In homogeneous
// coordinates, points have a w of 1 and vectors have a w of 0. So a point minus
// a point is a vector and so on. Note that valid values for w are just 0 and 1,
// so it doesn't make sense to add a point and a point.
//
// You need the W component in matrix operations if you want to translate a point.
// The translation part is in the 4th column of a matrix, so the translation wont
// affect a vector with W=0. One should mention, that in theory also values for
// W aside 0 and 1 are allowed in homogeneous coordinates. W = 0 means a vector,
// W != 0 means a point. All points (WX, WY, WZ, W) in R^4 specify the same point
// (X,Y,Z) in R^3.
