/**
 *
 *   File:   Util.cpp
 *
 *   Author: Rambod Rahmani <rambodrahmani@autistici.org>
 *           Created on 9/5/18.
 *
 */

#include "../include/Util.h"

/**
 * OpenGLUtil namespace.
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

void OpenGLUtil::deleteShader(GLuint shader)
{
    glDeleteShader(shader);
}

void OpenGLUtil::createVertexArrays(GLsizei n, GLuint * arrays)
{
    glCreateVertexArrays(n, arrays);
}

void OpenGLUtil::bindVertexArray(GLuint array)
{
    glBindVertexArray(array);
}

void OpenGLUtil::deleteVertexArrays(GLsizei n, const GLuint * arrays)
{
    glDeleteVertexArrays(n, arrays);
}

void OpenGLUtil::deleteProgram(GLuint program)
{
    glDeleteProgram(program);
}

void OpenGLUtil::clearBufferfv(GLenum buffer, GLint drawbuffer, const GLfloat * value)
{
    glClearBufferfv(buffer, drawbuffer, value);
}
