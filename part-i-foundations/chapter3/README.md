# Chapter 3. Following the Pipeline

## What You’ll Learn in This Chapter
 * What each of the stages in the OpenGL pipeline does.
 * How to connect your shaders to the fixed-function pipeline stages.
 * How to create a program that uses every stage of the graphics pipelinesimultaneously.

In this chapter, we will walk all the way along the OpenGL pipeline from start to finish, providing insight into each of the stages, which include fixed-function blocks and programmable shader blocks. You have already read a whirlwind introduction to the vertex and fragment shader stages. However, the application that you constructed simply drew a single triangle at a fixed position. If we want to render anything interesting with OpenGL, we're going to have to learn a lot more about the pipeline and all of the things you can do with it. This chapter introduces every part of the pipeline, hooks them up to one another, and provides an example shader for each stage.

## Passing Data to the Vertex Shader
The vertex shader is the first programmable stage in the OpenGL pipeline and has the distinction of being the only mandatory stage in the graphics pipeline. However, before the vertex shader runs, a fixed-function stage known as vertex fetching, or sometimes vertex pulling, is run. This automatically provides inputs to the vertex shader.

## Vertex Attributes
In GLSL, the mechanism for getting data in and out of shaders is to declare global variables with the in and out storage qualifiers. You were briefly introduced to the out qualifier in Chapter 2, "Our First OpenGL Program", when we used it to output a color from the fragment shader. At the start of the OpenGL pipeline, we use the in keyword to bring inputs into the vertex shader. Between stages, in and out can be used to form conduits from shader to shader and pass data between them. We'll get to that shortly. For now, consider the input to the vertex shader and what happens if you declare a variable with an in storage qualifier. This marks the variable as an input to the vertex shader, which means that it is essentially an input to the OpenGL graphics pipeline. It is automatically filled in by the fixed-function vertex fetch stage. The variable becomes known as a vertex attribute.

Vertex attributes are how vertex data is introduced into the OpenGL pipeline. To declare a vertex attribute, you declare a variable in the vertex shader using the in storage qualifier. An example of this is shown in source1.cpp, where we declare the variable offset as an input attribute.

###### Proceed to read the source codes from source1.cpp on and follow the numbered comments in the source files.

## Summary