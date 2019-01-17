/**
 *
 *   File:   source4.cpp
 *
 *           Drawing Our First Triangle
 *           Drawing a single point is not really that impressive (even if it is
 *           really big!) - we already mentioned that OpenGL supports many different
 *           primitive types, and that the most important are points, lines, and
 *           triangles. In our toy example, we draw a single point by passing the
 *           token GL_POINTS to the glDrawArrays() function. What we really want
 *           to do is draw lines or triangles. As you may have guessed, we could
 *           have passed GL_LINES or GL_TRIANGLES to glDrawArrays() but there's
 *           one hitch: The vertex shader used in source3.cpp places every vertex
 *           in the same place, right in the middle of clip space. For points,
 *           that’s fine: OpenGL assigns area to points for you. But for lines and
 *           triangles, having two or more vertices in the exact same place
 *           produces a degenerate primitive, which is a line with zero length or
 *           a triangle with zero area. If we try to draw anything but points with
 *           this shader, we won’t get any output at all because all of the primitives
 *           will be degenerate. To fix this, we need to modify our vertex shader
 *           to assign a different position to each vertex.
 *
 *   Author: Rambod Rahmani <rambodrahmani@autistici.org>
 *           Created on 9/5/18.
 *
 */

#include <iostream>

#include "../../library/include/GLFWApplication.h"

using namespace std;

/**
 * Shows how to extend the GLFWApplication to initialize OpenGL shaders and use
 * them to draw in the GLFWwindow.
 */
class source4 : public GLFWApplication
{
    private:
        /**
         * OpenGL program object to which shader objects can be attached.
         */
        GLuint rendering_program;

        /**
         * Vertex Array Object.
         */
        GLuint vertex_array_object;

        /**
         * Creates and compiles the vertex and fragment shaders. Creates the
         * OpenGL program and attaches the previously compiled shaders. Before
         * returning the OpenGL program, the vertex and fragment shaders are deleted.
         *
         * @return  the OpenGL program with the vertex and fragment shaders
         *          attached.
         */
        GLuint compile_shaders(void)
        {
            GLuint vertex_shader;
            GLuint fragment_shader;
            GLuint program;

            // define the source code for the vertex shader     // [1]
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
            vertex_shader = glCreateShader(GL_VERTEX_SHADER);
            glShaderSource(vertex_shader, 1, vertex_shader_source, NULL);
            glCompileShader(vertex_shader);

            // check vertex shader was correctly compiled
            GLint vertex_compiled;
            glGetShaderiv(vertex_shader, GL_COMPILE_STATUS, &vertex_compiled);
            if (vertex_compiled != GL_TRUE)
            {
                GLsizei log_length = 0;
                GLchar message[1024];
                glGetShaderInfoLog(vertex_shader, 1024, &log_length, message);
                cerr << message << "\n";
            }

            // create and compile fragment shader
            fragment_shader = glCreateShader(GL_FRAGMENT_SHADER);
            glShaderSource(fragment_shader, 1, fragment_shader_source, NULL);
            glCompileShader(fragment_shader);

            // check vertex shader was correctly compiled
            GLint fragment_compiled;
            glGetShaderiv(fragment_shader, GL_COMPILE_STATUS, &fragment_compiled);
            if (fragment_compiled != GL_TRUE)
            {
                GLsizei log_length = 0;
                GLchar message[1024];
                glGetShaderInfoLog(fragment_shader, 1024, &log_length, message);
                cerr << message << "\n";
            }

            // create program, attach the shaders to it, and link it
            program = glCreateProgram();
            glAttachShader(program, vertex_shader);
            glAttachShader(program, fragment_shader);
            glLinkProgram(program);     // [2]

            // check program was correclt created and linked
            GLint program_linked;
            glGetProgramiv(program, GL_LINK_STATUS, &program_linked);
            if(program_linked != GL_TRUE)
            {
                GLsizei log_length = 0;
                GLchar message[1024];
                glGetProgramInfoLog(program, 1024, &log_length, message);
                cerr << message << "\n";
            }

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
MAIN(source4);

// [1]
/**
 * Fortunately, GLSL includes a special input to the vertex shader called gl_VertexID,
 * which is the index of the vertex that is being processed at the time. The
 * gl_VertexID input starts counting from the value given by the first parameter
 * of glDrawArrays() and counts upward one vertex at a time for count vertices
 * (the third parameter of glDrawArrays()). This input is one of the many built-in
 * variables provided by GLSL, which represent data that is generated by OpenGL
 * or that you should generate in your shader and give to OpenGL. (gl_Position,
 * which we just covered, is another example of a built-in variable.) We can use
 * this index to assign a different position to each vertex.
 */

// [2]
/**
 * glLinkProgram links the program object specified by program. If any shader
 * objects of type GL_VERTEX_SHADER are attached to program, they will be used to
 * create an executable that will run on the programmable vertex processor. If any
 * shader objects of type GL_GEOMETRY_SHADER are attached to program, they will
 * be used to create an executable that will run on the programmable geometry
 * processor. If any shader objects of type GL_FRAGMENT_SHADER are attached to
 * program, they will be used to create an executable that will run on the
 * programmable fragment processor.
 *
 * The status of the link operation will be stored as part of the program object's
 * state. This value will be set to GL_TRUE if the program object was linked
 * without errors and is ready for use, and GL_FALSE otherwise. It can be queried
 * by calling glGetProgram with arguments program and GL_LINK_STATUS.
 */

// Summary
/**
 * This concludes the construction of our first OpenGL program. We will soon cover
 * how to get data into your shaders from your application, how to pass your own
 * inputs to the vertex shader, how to pass data from shader stage to shader stage,
 * and more. In this chapter, you have been briefly introduced to the application
 * framework, compiled a shader, cleared the window, and drawn points and triangles.
 * You have seen how to change the size of points using the glPointSize() function
 * and have seen your first drawing command - glDrawArrays().
 */
