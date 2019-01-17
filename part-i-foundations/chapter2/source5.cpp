/**
 *
 *   File:   source5.cpp
 *
 *           This implementation adds utility methods to the one provided in source4.cpp
 *           in order to obtain a cleaner source code.
 *
 *   Author: Rambod Rahmani <rambodrahmani@autistici.org>
 *           Created on 9/5/18.
 *
 */

#include <iostream>
#include <vector>

#include "../../library/include/GLFWApplication.h"
#include "../../library/include/Util.h"

using namespace std;

/**
 * Shows how to extend the GLFWApplication to initialize OpenGL shaders and use
 * them to draw in the GLFWwindow.
 */
class source5 : public GLFWApplication
{
    private:
        /**
         * OpenGL program object to which shader objects can be attached.
         */
        GLuint rendering_program = 0;

        /**
         * Vertex Array Object.
         */
        GLuint vertex_array_object = 0;

        /**
         * Creates and compiles the vertex and fragment shaders. Creates the
         * OpenGL program and attaches the previously compiled shaders. Before
         * returning the OpenGL program, the vertex and fragment shaders are deleted.
         *
         * @return  the OpenGL program with the vertex and fragment shaders
         *          attached.
         */
        GLuint compile_shaders()
        {
            GLuint vertex_shader;
            GLuint fragment_shader;
            GLuint program;

            // define the source code for the vertex shader
            static const GLchar * vertex_shader_source[] =
            {
                "#version 450 core                                                  \n"
                "                                                                   \n"
                "void main(void)                                                    \n"
                "{                                                                  \n"
                "   // declare a hard-coded array of points                         \n"
                "   const vec4 vertices[3] = vec4[3](vec4(0.25, -0.25, 0.5, 1.0),   \n"
                "                                    vec4(-0.25, -0.25, 0.5, 1.0),  \n"
                "                                    vec4(0.25, 0.25, 0.5, 1.0));   \n"
                "                                                                   \n"
                "   // index into our array using gl_VertexID                       \n"
                "   gl_Position = vertices[gl_VertexID];                            \n"
                "}                                                                  \n"
            };

            // define the source code for the fragment shader
            static const GLchar * fragment_shader_source[] =
            {
                "#version 450 core                                  \n"
                "                                                   \n"
                "out vec4 color;                                    \n"
                "                                                   \n"
                "void main(void)                                    \n"
                "{                                                  \n"
                "   color = vec4(0.0, 0.8, 1.0, 1.0);               \n"
                "}                                                  \n"
            };

            // create and compile vertex shader
            vertex_shader = OpenGLUtil::createShader(GL_VERTEX_SHADER, vertex_shader_source);

            // create and compile fragment shader
            fragment_shader = OpenGLUtil::createShader(GL_FRAGMENT_SHADER, fragment_shader_source);

            // shader objects to be attached to the program object
            vector<GLuint> shaders = {vertex_shader, fragment_shader};

            // create program, attach the shaders to it, and link it
            program = OpenGLUtil::createProgram(shaders);

            // delete the shaders as they are now attached to the program
            glDeleteShader(vertex_shader);
            glDeleteShader(fragment_shader);

            return program;
        }

    public:
        /**
         * Just return true in order to allow for the application to finish
         * initialization correctly.
         *
         * @return  true
         */
        bool onInit() override
        {
            return true;
        }

        /**
         * Compiles the shaders, creates the Vertex Array Object and attaches it
         * to the current context.
         *
         * @return  true
         */
        bool onStartup() override
        {
            rendering_program = compile_shaders();
            glCreateVertexArrays(1, &vertex_array_object);
            glBindVertexArray(vertex_array_object);

            return true;
        }

        /**
         * Deletes the program object and the vertex array object created at startup.
         */
        void onShutdown() override
        {
            glDeleteVertexArrays(1, &vertex_array_object);
            glDeleteProgram(rendering_program);
        }

        /**
         * Prints the given OpenGL error to stderr.
         *
         * @param   error   the OpenGL error to be printed.
         */
        void onOpenGLError(GLenum error) override
        {
            cerr << "OpenGL Error Code: " << error << "\n";
        }

        /**
         * Clears the GL_COLOR buffer to the specified color.
         *
         * @param   currentTime the time, in seconds,  elapsed since GLFW was
         *                      initialized
         */
        void render(double currentTime) override
        {
            // define a random color using the currentTime
            const GLfloat color[] = {
                    (float) abs(sin(currentTime)) * 0.5f + 0.5f,
                    (float) abs(cos(currentTime)) * 0.5f + 0.5f,
                    0.0,
                    1.0
            };

            // clear the GL_COLOR buffer to the specified color
            glClearBufferfv(GL_COLOR, 0, color);

            // install rendering_program as part of current rendering state
            glUseProgram(rendering_program);

            // specify the kind of primitives to render
            glDrawArrays(GL_TRIANGLES, 0, 3);

            // uninstall any rendering program
            glUseProgram(0);
        }
};

/**
 * Entry point.
 *
 * @param   argc    command line arguments counter.
 * @param   argv    command line arguments.
 *
 * @return          execution exit code.
 */
MAIN(source5);
