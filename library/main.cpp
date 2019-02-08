/**
 *
 *   File:   main.cpp
 *           Developer test harness.
 *
 *   Author: Rambod Rahmani <rambodrahmani@autistici.org>
 *
 */

#include <iostream>

#include "include/GLFWApplication.h"
#include "include/Util.h"

using namespace std;

/**
 * Developer test harness shows how to extend and use the GLFWApplication class.
 */
class glfwApplicationTest : public GLFWApplication
{
    public:
        void render(double currentTime) override
        {
            static const GLfloat red[] = { 1.0f, 0.0f, 0.0f, 1.0f };

            glClearBufferfv(GL_COLOR, 0, red);
        }

        bool onInit() override
        {
            return true;
        }

        bool onStartup() override
        {
            setWindowTitle("GLFWApplication Developer Test Harness");

            return true;
        }

        void onShutdown() override
        {
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

        void onWindowResized(int w, int h) override
        {
            GLFWApplication::onWindowResized(w, h);
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
MAIN(glfwApplicationTest);
