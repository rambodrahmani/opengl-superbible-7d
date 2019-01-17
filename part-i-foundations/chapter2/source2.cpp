/**
 *
 *   File:   source2.cpp
 *
 *           The initial application isn’t particularly interesting, as all it does
 *           is fill the window with a solid red color. You will notice that our
 *           render() function takes a single parameter currentTime. This contains
 *           the number of seconds since the application was started, and we can
 *           use it to create a simple animation. In this case, we can use it to
 *           change the color that we use to clear the window.
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
 * to clear the GL_COLOR buffer to varying colours using the provided currentTime
 * value to change color.
 */
class source2 : public GLFWApplication
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
            glClearBufferfv(GL_COLOR, 0, color);    // [1]
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
MAIN(source2);

// [1]
/**
 * Now our window fades from red through yellow, orange, green, and back to red
 * again.
 * Still not that exciting, but at least it does something.
 */

/**
 * Buffer Objects are OpenGL Objects that store an array of unformatted memory
 * allocated by the OpenGL context (AKA the GPU). These can be used to store
 * vertex data, pixel data retrieved from images or the framebuffer, and a
 * variety of other things.
 *
 * Buffer objects are general purpose memory storage blocks allocated by OpenGL.
 * They are intended to be used in a great many ways. To give the implementation
 * great flexibility in exactly what a particular buffer object's data store will
 * be, so as to better optimize performance, the user is required to give usage
 * hints. These provide a general description as to how exactly the user will be
 * using the buffer object.
 *
 * A buffer object's storage can be cleared, in part or in full, to a specific value.
 *
 * If buffer is GL_COLOR, a particular draw buffer GL_DRAW_BUFFERi is specified
 * by passing i as drawbuffer, and value points to a four-element vector specifying
 * the R, G, B and A color to clear that draw buffer to. If the value of
 * GL_DRAW_BUFFERi is GL_NONE, the command has no effect. Otherwise, the value of
 * GL_DRAW_BUFFERi identifies one or more color buffers, each of which is cleared
 * to the same value. Clamping and type conversion for fixed-point color buffers
 * are performed in the same fashion as for glClearColor. The *fv, *iv and *uiv
 * forms of these commands should be used to clear fixed- and floating-point,
 * signed integer, and unsigned integer color buffers respectively.
 */
