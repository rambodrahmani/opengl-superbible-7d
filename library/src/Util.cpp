/**
 *
 *   File:   Util.h
 *
 *           This class provides utility methods.
 *
 *   Author: Rambod Rahmani <rambodrahmani@autistici.org>
 *           Created on 9/5/18.
 *
 */

#include "../include/Util.h"

/**
 * OpenGLUtil namespace.
 */

 /**
  * Reads the shader file located at the given file path and returns a string
  * containing the shader file content.
  *
  * @param  filePath    the path to the shader file to be read.
  *
  * @return             the string containing the shader file content.
  */
string OpenGLUtil::readShader(const char * filePath)
{
    string ret;

    // create an input file stream for the given file path
    ifstream fileStream(filePath, ios::in);

    // check whether the stream is currently associated to a file
    if(!fileStream.is_open())
    {
        fprintf(stderr, "Could not read file %s. File does not exist.\n", filePath);
        return "";
    }

    std::string line = "";

    // while !true if the eofbit error state flag is set for the stream
    while (!fileStream.eof())
    {
        // extract characters from fileStream and store them into line
        getline(fileStream, line);

        // append the file to the return string
        ret.append(line + "\n");
    }

    // close the file currently associated with the stream
    fileStream.close();

    return ret;
}

/**
 * Creates a shader object of the given type, attaches the given shader source
 * and compiles it. Before returning the created shader object, checks for
 * compilation errors.
 *
 * @param   shaderType      the type of the shader object to be created.
 * @param   shaderSource    the source code for the shader object to be created.
 *
 * @return                  the created shader object.
 */
const GLuint OpenGLUtil::createShader(GLenum shaderType, const GLchar * const * shaderSource)
{
    GLuint ret;

    // create an empty shader object
    ret = glCreateShader(shaderType);

    // set shader source code
    glShaderSource(ret, 1, shaderSource, NULL);

    // compile the shader object
    glCompileShader(ret);

    // check if the shader object was correctly compiled
    GLint shaderCompiled;

    // query shader object for GL_COMPILE_STATUS
    glGetShaderiv(ret, GL_COMPILE_STATUS, &shaderCompiled);

    // GL_TRUE if the last compile operation on shader was successful, and GL_FALSE otherwise.
    if (shaderCompiled != GL_TRUE)
    {
        GLsizei logLength = 0;
        GLchar message[1024];

        // retrieve the information log for the shader object
        glGetShaderInfoLog(ret, 1024, &logLength, message);

        // print shader object information log to stderr
        cerr << message << "\n";
    }

    return ret;
}

/**
 * Creates a program object, attaches the given shader objects and links the program
 * object. Before returning the created program object, it checks for linking errors.
 *
 * @param   shaders the shader objects to be attached to the created program
 *                  object.
 *
 * @return          the created program object.
 */
const GLuint OpenGLUtil::createProgram(vector<GLuint> shaders)
{
    GLuint ret;

    // create an empty program object
    ret = glCreateProgram();

    // loop through the given shader objects
    for (GLuint shader : shaders)
    {
        // attach shader object to the program object
        glAttachShader(ret, shader);
    }

    // link the program object
    glLinkProgram(ret);

    // check if the program object was correclt created and linked
    GLint programLinked;

    // query the program object for GL_LINK_STATUS
    glGetProgramiv(ret, GL_LINK_STATUS, &programLinked);

    // GL_TRUE if the last link operation on program was successful, and GL_FALSE otherwise.
    if (programLinked != GL_TRUE)
    {
        GLsizei logLength = 0;
        GLchar message[1024];

        // retrieve the information log for the program object
        glGetProgramInfoLog(ret, 1024, &logLength, message);

        // print program object information log to stderr
        cerr << message << "\n";
    }

    return ret;
}

/**
 * Frees the memory and invalidates the name associated with the given shader
 * object.
 *
 * @param   shader  the shader object to be deleted.
 */
void OpenGLUtil::deleteShader(GLuint shader)
{
    glDeleteShader(shader);
}

/**
 * Creates vertex array objects.
 *
 * @param   n       number of vertex array objects to create.
 * @param   arrays  specifies an array in which names of the new vertex array
 *                  objects are stored.
 */
void OpenGLUtil::createVertexArrays(GLsizei n, GLuint * arrays)
{
    glCreateVertexArrays(n, arrays);
}

/**
 * Binds the given vertex array object.
 *
 * @param   array   specifies the name of the vertex array to bind.
 */
void OpenGLUtil::bindVertexArray(GLuint array)
{
    glBindVertexArray(array);
}

/**
 * Deletes n vertex array objects whose names are stored in the given array.
 *
 * @param   n       specifies the number of vertex array objects to be deleted.
 * @param   arrays  specifies the address of an array containing the n names of
 *                  the objects to be deleted.
 */
void OpenGLUtil::deleteVertexArrays(GLsizei n, const GLuint * arrays)
{
    glDeleteVertexArrays(n, arrays);
}

/**
 * Frees the memory and invalidates the name associated with the program object
 * specified by program.
 *
 * @param   program the program to be deleted.
 */
void OpenGLUtil::deleteProgram(GLuint program)
{
    glDeleteProgram(program);
}

/**
 * Clears the specified buffer of a framebuffer to the specified value(s).
 *
 * @param   buffer      the buffer to clear.
 * @param   drawbuffer  a particular draw buffer to clear.
 * @param   value       a pointer to the value or values to clear the buffer to.
 */
void OpenGLUtil::clearBufferfv(GLenum buffer, GLint drawbuffer, const GLfloat * value)
{
    glClearBufferfv(buffer, drawbuffer, value);
}
