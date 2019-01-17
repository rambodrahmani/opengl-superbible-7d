/**
 *
 *   File:   source6.cpp
 *
 *           This implementation adds utility methods to the one provided in
 *           source5.cpp in order to be able to load shaders from external files.
 *
 *           If the shaders are located in text files they must be loaded into memory
 *           first. This part has nothing to do with OpenGL, it is a simple ASCII
 *           file loader. If you write your shaders in Unicode (for the comments),
 *           you have to write your own loader. The actual program in memory should
 *           be in ASCII. You could also embed your shaders into your C++ code using
 *           a static char array. In other words: it doesn't matter how you get your
 *           shaders into memory. I recommend using ASCII files. This way you can
 *           change your shader code without recompiling your application.
 *
 *   Author: Rambod Rahmani <rambodrahmani@autistici.org>
 *           Created on 9/19/18.
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
class source6 : public GLFWApplication
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

            // load the source code for the vertex shader
            string vertex_shader_str = OpenGLUtil::readShader("../../../../opengl-superbible-7ed/part-i-foundations/chapter2/shaders/vertex.glsl");
            static const char * vertex_shader_src = vertex_shader_str.c_str();

            // load the source code for the fragment shader
            string fragment_shader_str = OpenGLUtil::readShader("../../../../opengl-superbible-7ed/part-i-foundations/chapter2/shaders/fragment.glsl");
            static const char * fragment_shader_src = fragment_shader_str.c_str();

            // create and compile vertex shader
            vertex_shader = OpenGLUtil::createShader(GL_VERTEX_SHADER, &vertex_shader_src);

            // create and compile fragment shader
            fragment_shader = OpenGLUtil::createShader(GL_FRAGMENT_SHADER, &fragment_shader_src);

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
MAIN(source6);

// [1]
/**
 * What is the correct file extension for GLSL shaders?
 * There is no standard file extension for GLSL shaders. The most common ones are
 * probably .vert and .frag, as these are the extensions that 3D Labs used in some
 * of their tools. But that's about it for any form of standard extension.
 */
