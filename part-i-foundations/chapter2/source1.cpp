/**
 *
 *   File:   source1.cpp
 *
 *           This example clears the whole screen to red. This introduces our first
 *           OpenGL function, glClearBufferfv().
 *           All OpenGL functions start with gl and follow a number of naming conventions,
 *           such as encoding some of their parameter types as suffixes on the end
 *           of the function names. This allows a limited form of overloading even
 *           in languages that don’t directly support this ability. In this case,
 *           the suffix fv means that the function consumes a vector (v) of
 *           floating-point (f) values, where arrays (generally referenced by pointers
 *           in languages like C) and vectors are used interchangeably by OpenGL.
 *
 *   Author: Rambod Rahmani <rambodrahmani@autistici.org>
 *           Created on 9/4/18.
 *
 */

#include <iostream>

#include "../../library/include/GLFWApplication.h"

using namespace std;

/**
 * This class extends GLFWApplication and defines the render() method in order
 * to clear the GL_COLOR buffer to red.
 */
class source1 : public GLFWApplication
{
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
         * Just return true in order to allow for the application to finish
         * startup correctly.
         *
         * @return  true
         */
        bool onStartup() override
        {
            return true;
        }

        /**
         *
         */
        void onShutdown() override
        {
            // nothing to do
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
         * Clears the GL_COLOR buffer to the color defined by red[].
         *
         * @param   currentTime the time, in seconds,  elapsed since GLFW was
         *                      initialized.
         */
        void render(double currentTime) override
        {
            // define the red color
            static const GLfloat red[] = { 1.0f, 0.0f, 0.0f, 1.0f };

            // clear the GL_COLOR buffer to the specified color
            glClearBufferfv(GL_COLOR, 0, red);  // [1]
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
MAIN(source1);

// [1]
/**
 * The glClearBufferfv() function tells OpenGL to clear the buffer specified by
 * the first parameter (in this case GL_COLOR) to the value specified in its third
 * parameter. The second parameter, drawBuffer, is used when there are multiple
 * output buffers that could be cleared. Because we’re using only one here and
 * drawBuffer is a zero-based index, we’ll just set it to 0 in this example.
 * Here, that color is stored in the array red, which contains four floating-point
 * values—one each for red, green, blue, and alpha, in that order.
 *
 * The red, green, and blue terms should be self-explanatory. Alpha is a fourth
 * component that is associated with a color and is often used to encode the
 * opacity of a fragment. When used this way, setting alpha to 0 will make the
 * fragment completely transparent, and setting it to 1 will make it completely
 * opaque. The alpha value can also be stored in the output image and used in some
 * parts of OpenGL’s calculations, even though you can’t see it. You can see that
 * we set both the red and alpha values to 1 and the others to 0. This specifies
 * an opaque red color.
 */
