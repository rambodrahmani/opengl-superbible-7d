# Chapter 2. Our First OpenGL Program

## What You’ll Learn in This Chapter
* How to create and compile shader code.
* How to draw with OpenGL.
* How to use this repository application framework to initialize your programs and clean up after yourself.

In this chapter, we introduce the simple application framework that is used for almost all of the samples in this repository. This shows you how to create the main window with the repository’s application framework and how to render simple graphics into it. You’ll also see what a very simple GLSL shader looks like, how to compile it, and how to use it to render simple points. The chapter concludes with your very first OpenGL triangle.

## Creating a Simple Application
To introduce the application framework that’ll be used in the remainder of this book, we’ll start with an extremely simple example application. Of course, to write a large- scale OpenGL program you don’t have to use our framework—in fact, we wouldn’t recommend it, as it’s quite simple. However, it does simplify things a little and allows you to get to writing OpenGL code sooner.

The application framework is brought into your application by including GLFWApplication.h in your source code. This is a C++ header file that includes the declaration of an application class, GLFWApplication, from which we can derive our examples. The framework also includes a number of utility functions and a simple math library to help you with some of the number crunching involved in OpenGL.

To create an application, we simply include GLFWApplication.h, derive a class from GLFWApplication, and, in exactly one of our source files, include an instance of the MAIN macro. This defines the main entry point of our application, which creates an instance of our class (the type of which is passed as a parameter to the macro) and calls its run() method, which implements the application’s main loop.

In turn, this performs some initialization by first calling the startup() method and then calling the render() method in a loop. In the default implementation, both methods are defined as virtual functions with empty bodies. We override the render() method in our derived class and write our drawing code inside it. The application framework takes care of creating a window, handling input, and displaying the rendered results to the user.

## Using Shaders
As we mentioned in the introduction to the graphics pipeline in Chapter 1, OpenGL works by connecting a number of mini-programs called shaders together with fixed-function glue. When you draw, the graphics processor executes your shaders and pipes their inputs and outputs along the pipeline until pixels come out the end. To draw anything at all, you’ll need to write at least a couple of shaders.

OpenGL shaders are written in a language called the OpenGL Shading Language, or GLSL. This language has its origins in C, but has been modified over time to make it better suited to running on graphics processors. If you are familiar with C, then it shouldn’t be hard to pick up GLSL. The compiler for this language is built into OpenGL. The source code for your shader is placed into a shader object and compiled, and then multiple shader objects can be linked together to form a program object. Each program object can contain shaders for one or more shader stages. The shader stages of OpenGL are vertex shaders, tessellation control and evaluation shaders, geometry shaders, fragment shaders, and compute shaders. The minimal useful pipeline configuration consists of only a vertex shader - If you try to draw anything when your pipeline does not contain a vertex shader, the results will be undefined and almost certainly not what you were hoping for - (or just a compute shader), but if you wish to see any pixels on the screen, you will also need a fragment shader.

###### Proceed to read the source codes from source1.cpp on and follow the numbered comments in the source files.

## Summary
This concludes the construction of our first OpenGL program. We will soon cover how to get data into your shaders from your application, how to pass your own inputs to the vertex shader, how to pass data from shader stage to shader stage, and more. In this chapter, you have been briefly introduced to the application framework, compiled a shader, cleared the window, and drawn points and triangles. You have seen how to change the size of points using the glPointSize()function and have seen your first drawing command — glDrawArrays().
