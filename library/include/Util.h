/**
 *
 *   File:   Util.h
 *
 *           This class provides utility methods. Each defined namespace provides
 *           utility methods for different applications.
 *
 *   Author: Rambod Rahmani <rambodrahmani@autistici.org>
 *           Created on 9/5/18.
 *
 */

#ifndef OPENGL_SUPERBIBLE_7ED_UTIL_H
#define OPENGL_SUPERBIBLE_7ED_UTIL_H

#include <iostream>
#include <fstream>
#include <vector>

#include "../gl3w/include/GL/gl3w.h"
#include "../glfw/include/GLFW/glfw3.h"

using namespace std;

/**
 * This namespace provides utility methods to be used to work with OpenGL.
 */
namespace OpenGLUtil
{
    /**
     * Reads the shader file located at the given file path and returns a string
     * containing the shader file content.
     *
     * @param  filePath    the path to the shader file to be read.
     *
     * @return             the string containing the shader file content.
     */
    string readShader(const char * filePath);

    /**
     * Creates, compiles and returns a shader object of the given type with the
     * given source code.
     *
     * @param   shaderType      the type of the shader object to be created.
     * @param   shaderSource    the source code for the shader object to be created.
     *
     * @return                  the created shader object.
     */
    const GLuint createShader(GLenum shaderType, const GLchar * const * shaderSource);

    /**
     * Creates, links and returns a program object attaching the given shader
     * objects.
     *
     * @param   shaders the shader objects to be attached to the created program
     *                  object.
     *
     * @return          the created program object.
     */
    const GLuint createProgram(vector<GLuint> shaders);

    /**
     * Frees the memory and invalidates the name associated with the given shader
     * object.
     *
     * @param   shader  the shader object to be deleted.
     */
    void deleteShader(GLuint shader);

    /**
     * Creates vertex array objects.
     *
     * @param   n       number of vertex array objects to create.
     * @param   arrays  specifies an array in which names of the new vertex array
     *                  objects are stored.
     */
    void createVertexArrays(GLsizei n, GLuint * arrays);

    /**
     * Binds the given vertex array object.
     *
     * @param   array   specifies the name of the vertex array to bind.
     */
    void bindVertexArray(GLuint array);

    /**
     * Deletes n vertex array objects whose names are stored in the given array.
     *
     * @param   n       specifies the number of vertex array objects to be deleted.
     * @param   arrays  specifies the address of an array containing the n names of
     *                  the objects to be deleted.
     */
    void deleteVertexArrays(GLsizei n, const GLuint * arrays);

    /**
     * Frees the memory and invalidates the name associated with the program object
     * specified by program.
     *
     * @param   program the program to be deleted.
     */
    void deleteProgram(GLuint program);

    /**
     * Clears the specified buffer of a framebuffer to the specified value(s).
     *
     * @param   buffer      the buffer to clear.
     * @param   drawbuffer  a particular draw buffer to clear.
     * @param   value       a pointer to the value or values to clear the buffer to.
     */
    void clearBufferfv(GLenum buffer, GLint drawbuffer, const GLfloat * value);
}

#endif //OPENGL_SUPERBIBLE_7ED_UTIL_H
