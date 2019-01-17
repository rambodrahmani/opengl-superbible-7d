/**
 *
 *   File:   source3.cpp
 *
 *           Using Shaders.
 *
 *   Author: Rambod Rahmani <rambodrahmani@autistici.org>
 *           Created on 9/4/18.
 *
 */

#include <iostream>

#include "../../library/include/GLFWApplication.h"

using namespace std;

/**
 * Shows how to extend the GLFWApplication to initialize OpenGL shaders and use
 * them to draw in the GLFWwindow.
 */
class source3 : public GLFWApplication
{
    private:
        /**
         * OpenGL program object to which shader objects can be attached.
         */
        GLuint rendering_program;

        /**
         *
         */
        GLuint vertex_array_object;

        /**
         * Creates and compiles the vertex and fragment shaders. Creates the
         * OpenGL program and attaches the previously compiled shaders. Before
         * returning the OpenGL program, the vertex and fragment shaders previously
         * attached are deleted.
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
                "#version 450 core                                  \n"
                "                                                   \n"
                "void main()                                        \n"
                "{                                                  \n"
                "   gl_Position = vec4(0.0, 0.0, 0.5, 1.0);         \n"
                "}                                                  \n"
            };

            // define the source code for the fragment shader   // [2]
            static const GLchar * fragment_shader_source[] =
            {
                "#version 450 core                                  \n"
                "                                                   \n"
                "out vec4 color;                                    \n"
                "                                                   \n"
                "void main()                                        \n"
                "{                                                  \n"
                "   color = vec4(0.0, 0.8, 1.0, 1.0);               \n"
                "}                                                  \n"
            };

            // create and compile vertex shader         // [3]
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

            // create and compile fragment shader       // [3]
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

            // create program, attach the shaders to it, and link it    // [4]
            program = glCreateProgram();
            glAttachShader(program, vertex_shader);
            glAttachShader(program, fragment_shader);
            glLinkProgram(program);

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
         * // [5]
         * Compiles the shaders, creates the Vertex Array Object and attaches it
         * to the current context.
         *
         * @return  true
         */
        bool onStartup() override
        {
            rendering_program = compile_shaders();
            glCreateVertexArrays(1, &vertex_array_object);      // [6]
            glBindVertexArray(vertex_array_object);

            return true;
        }

        /**
         * When our application is done running, we should also clean up after
         * ourselves. Thus we have also overridden the onShutdown() function; in
         * it, we delete the program object that we created at startup. Just as
         * when we were done with our shader objects we called glDeleteShader(),
         * so when we are done with our program objects we call glDeleteProgram().
         * In our onShutdown() function, we also delete the vertex array object
         * we created in our onStartup() function by calling the glDeleteVertexArrays()
         * function.
         */
        void onShutdown() override
        {
            glDeleteVertexArrays(1, &vertex_array_object);
            glDeleteProgram(rendering_program);
            glDeleteVertexArrays(1, &vertex_array_object);
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

            // increase the rasterized diameter of points       // [9]
            glPointSize(40.0f);

            // install rendering_program as part of current rendering state
            glUseProgram(rendering_program);        // [8]

            // specify the kind of primitives to render
            // GL_POINTS: Draws points on screen. Every vertex specified is a point.
            glDrawArrays(GL_POINTS, 0, 1);      // [8]

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
MAIN(source3);

// [1]
/**
 * This shows our first vertex shader, which is about as simple as it gets. In
 * the first line, we have the "#version 450 core" declaration, which tells the
 * shader compiler that we intend to use version 4.5 of the shading language.
 * Notice that we include the keyword core to indicate that we intend to use only
 * features from the core profile of OpenGL.
 *
 * Next, we have the declaration of our main function, which is where the shader
 * starts executing. This is exactly the same as in a normal C program, except
 * that the main function of a GLSL shader has no parameters. Inside our main
 * function, we assign a value to gl_Position, which is part of the plumbing that
 * connects the shader to the rest of OpenGL. All variables that start with gl_
 * are part of OpenGL and connect shaders to each other or to the various parts
 * of fixed functionality in OpenGL. In the vertex shader, gl_Position represents
 * the output position of the vertex. The value we assign (vec4(0.0, 0.0, 0.5, 1.0))
 * places the vertex right in the middle of OpenGL’s clip space, which is the
 * coordinate system expected by the next stage of the OpenGL pipeline.
 */

// [2]
/**
 * Again, this is an extremely simple example. It, too, starts with a #version
 * 450 core declaration. Next, it declares color as an output variable using the
 * out keyword. In fragment shaders, the value of output variables will be sent
 * to the window or screen. In the main function, it assigns a constant to this
 * output. By default, that value goes directly onto the screen and is vector of
 * four floating-point values, one each for red, green, blue, and alpha, just like
 * in the parameter to glClearBufferfv(). In this shader, the value we’ve used
 * is vec4(0.0, 0.8, 1.0, 1.0), which is a cyan color.
 */

// [3]
/**
 * Now that we have both a vertex and a fragment shader, it’s time to compile them
 * and link them together into a program that can be run by OpenGL. This is
 * similar to the way that programs written in C++ or other similar languages are
 * compiled and linked to produce executables.
 *
 * glCreateShader() creates an empty shader object, ready to accept source code
 * and be compiled.
 *
 * glShaderSource() hands shader source code to the shader object so that it can
 * keep a copy of it.
 *
 * glCompileShader() compiles whatever source code is contained in the shader
 * object.
 *
 * The shader source code is included in our program as constant strings that are
 * passed to the glShaderSource() function, which copies them into the shader
 * objects that we created with glCreateShader(). The shader object stores a copy
 * of our source code; then, when we call glCompileShader(), it compiles the GLSL
 * shader source code into an intermediate binary representation that is also
 * stored in the shader object.
 */

// [4]
/**
 * The program object represents the linked executable that we will use for
 * rendering. We attach our shaders to the program object using glAttachShader()
 * and then call glLinkProgram(), which links the objects together into code that
 * can be run on the graphics processor. Attaching a shader object to a program
 * object creates a reference to the shader; we can then delete it, knowing that
 * the program object will hold onto the shader’s contents as long as it needs
 * it
 *
 * glCreateProgram() creates a program object to which you can attach shader
 * objects.
 *
 * glAttachShader() attaches a shader object to a program object.
 *
 * glLinkProgram() links all of the shader objects attached to a program object
 * together.
 *
 * glDeleteShader() deletes a shader object. Once a shader has been linked into
 * a program object, the program contains the binary code and the shader is no
 * longer needed.
 */

// [5]
/**
 * The compile_shaders function returns the newly created program object. When we
 * call this function, we need to keep the returned program object somewhere so
 * that we can use it to draw things. Also, we really don’t want to recompile the
 * whole program every time we want to use it. So, we need a function that is called
 * once when the program starts up. The application framework provides just such
 * a function: GLFWApplication::onStartup(), which we can override in our sample
 * application and use to perform any one-time setup work.
 */

// [6]
/**
 * One final thing that we need to do before we can draw anything is to create a
 * vertex array object (VAO), which is an object that represents the vertex fetch
 * stage of the OpenGL pipeline and is used to supply input to the vertex shader.
 * As our vertex shader doesn’t have any inputs right now, we don’t need to do
 * much with the VAO. Nevertheless, we still need to create the VAO so that OpenGL
 * will let us draw. To create the VAO, we call the OpenGL function
 * glCreateVertexArrays(); to attach it to our context, we call glBindVertexArray().
 *
 * The vertex array object maintains all of the state related to the input to the
 * OpenGL pipeline. We will add calls to glCreateVertexArrays() and
 * glBindVertexArray() to our startup() function. This pattern will become familiar
 * to you as you learn more about OpenGL. Most things in OpenGL are represented
 * by objects (like vertex array objects). We create them using a creation
 * function (like glCreateVertexArrays()), and let OpenGL know that we want to
 * use them by binding them to the context using a binding function (like
 * glBindVertexArray()).
 */

// [7]
/**
 * Now that we have a program, we need to execute the shaders in it and actually
 * start drawing something on the screen. We modify our render() function to call
 * glUseProgram() to tell OpenGL to use our program object for rendering and then
 * call our first drawing command, glDrawArrays().
 */

// [8]
/**
 * The glDrawArrays() function sends vertices into the OpenGL pipeline. For each
 * vertex, the vertex shader is executed. The first parameter to glDrawArrays()
 * is the mode parameter, which tells OpenGL what type of graphics primitive we
 * want to render. In this case, we specified GL_POINTS because we want to draw
 * a single point. The second parameter (first) is not relevant in this example,
 * so we've set it to zero. Finally, the last parameter is the number of vertices
 * to render. Each point is represented by a single vertex, so we tell OpenGL to
 * render only one vertex, resulting in just one point being rendered.
 */

// [9]
/**
 * As you can see, there is a tiny point in the middle of the window.
 * Congratulations! You’ve made your very first OpenGL rendering. Although it's
 * not terribly impressive, it lays the groundwork for more interesting drawing
 * and proves that our application framework and our first, extremely simple
 * shaders are working.
 *
 * To make our point a little more visible, we can ask OpenGL to draw it a little
 * larger than a single pixel. To do this, we’ll call the glPointSize() function.
 * This function sets the diameter of the point in pixels to the value you specify
 * in size. The maximum value that you can use for points is implementation
 * defined. We will get deeper into the subject and go beyond stock OpenGL
 * functionality, but for the time being, we will rely on the fact that OpenGL
 * guarantees that the maximum supported point size is at least 64 pixels.
 */
