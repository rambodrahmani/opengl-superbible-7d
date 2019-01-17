/**
 *
 *   File:   GLFWApplication.h
 *
 *           Extends the Application base class in order to implement a GLFW backed
 *           application. By default, it initializes the GLFW and the GL3W libraries,
 *           it provides a GLFWwindow where rendering operation can be performed
 *           using the render method.
 *
 *   Author: Rambod Rahmani <rambodrahmani@autistici.org>
 *           Created on 8/28/18.
 *
 */

#ifndef OPENGL_SUPERBIBLE_7ED_GLFWAPPLICATION_H
#define OPENGL_SUPERBIBLE_7ED_GLFWAPPLICATION_H

#include "Application.h"

#ifdef __MINGW32__
#pragma once
    #define _CRT_SECURE_NO_WARNINGS 1

    #define WIN32_LEAN_AND_MEAN 1
    #include <Windows.h>
#else
    #include <unistd.h>
    #define Sleep(t) sleep(t)
#endif

#include <stdio.h>
#include <string.h>
#include <math.h>

#include "../gl3w/include/GL/gl3w.h"
#include "../glfw/include/GLFW/glfw3.h"

#define GLFW_INCLUDE_GLCOREARB 1

/**
 *
 */
class GLFWApplication : public Application
{
    private:
        /**
         *
         */
        struct APPINFO
        {
            char title[128];
            int windowWidth;
            int windowHeight;
            int majorVersion;
            int minorVersion;
            int samples;

            union
            {
                struct
                {
                    unsigned int    fullscreen  : 1;
                    unsigned int    vsync       : 1;
                    unsigned int    cursor      : 1;
                    unsigned int    stereo      : 1;
                    unsigned int    debug       : 1;
                    unsigned int    robust      : 1;
                };
                unsigned int        all;
            } flags;
        };

        static          GLFWApplication * application;
        GLFWwindow *    window;
        APPINFO         info;

        /**
         *
         * @param source
         * @param type
         * @param id
         * @param severity
         * @param length
         * @param message
         * @param userParam
         */
        static void APIENTRY debug_callback(GLenum source,
                                            GLenum type,
                                            GLuint id,
                                            GLenum severity,
                                            GLsizei length,
                                            const GLchar * message,
                                            GLvoid * userParam);

        /**
         *
         */
        bool init() override;

        /**
         *
         */
        bool startup() override;

        /**
         *
         */
        void shutdown() override;

    protected:
        /**
         * No GLFW nor GL3W support at this point. Use onStartup() for that.
         */
        virtual bool onInit() = 0;

        /**
         *
         */
        virtual bool onStartup() = 0;

        /**
         *
         */
        virtual void onShutdown() = 0;

        /**
        * Implement this method in order to have a callback where to handle OpenGL
        * errors.
        *
        * @param   error   the OpenGL error to be handled.
        */
        virtual void onOpenGLError(GLenum error) = 0;

        /**
         *
         * @param   currentTime the time, in seconds,  elapsed since GLFW was
         *                      initialized.
         */
        virtual void render(double currentTime) = 0;

        /**
         * The size callback of the GLFWwindow, which is called when the window is resized.
         * The callback is provided with the size, in screen coordinates, of the client
         * area of the window.
         *
         * @param   window  the window that was resized.
         * @param   w       the new width, in screen coordinates, of the window.
         * @param   h       the new height, in screen coordinates, of the window.
         */
        static void glfw_onWindowResized(GLFWwindow * window, int w, int h);

        /**
         *
         * @param w
         * @param h
         */
        virtual void onWindowResized(int w, int h);

        /**
         * The focus callback of the GLFWwindow, which is called when the window gains
         * or loses input focus.
         *
         * @param   window  the window that gained or lost input focus.
         * @param   focused GLFW_TRUE if the window was given input focus, or GLFW_FALSE
         *                  if it lost it.
         */
        static void glfw_onWindowFocused(GLFWwindow * window, int focused);

        /**
         *
         * @param focused
         */
        virtual void onWindowFocused(int focused);

        /**
         * The close callback of the GLFWwindow, which is called when the user attempts
         * to close the window, for example by clicking the close widget in the title bar.
         *
         * @param   window  the window that the user attempted to close.
         */
        static void glfw_onWindowClosed(GLFWwindow * window);

        /**
         *
         */
        virtual void onWindowClosed();

        /**
         * The key callback of the GLFWwindow, which is called when a key is pressed,
         * repeated or released.
         *
         * @param   window      the window that received the event.
         * @param   key         the keyboard key that was pressed or released.
         * @param   scancode    the system-specific scancode of the key.
         * @param   action      GLFW_PRESS, GLFW_RELEASE or GLFW_REPEAT.
         * @param   mods        bit field describing which modifier keys were held down.
         */
        static void glfw_onKey(GLFWwindow * window, int key, int scancode, int action, int mods);

        /**
         *
         * @param key
         * @param scancode
         * @param action
         * @param mods
         */
        virtual void onKey(int key, int scancode, int action, int mods);

        /**
         * The mouse button callback of the GLFWwindow, which is called when a mouse
         * button is pressed or released.
         *
         * @param   window  the window that received the event.
         * @param   button  the mouse button that was pressed or released.
         * @param   action  one of GLFW_PRESS or GLFW_RELEASE.
         * @param   mods    bit field describing which modifier keys were held down.
         */
        static void glfw_onMouseButton(GLFWwindow * window, int button, int action, int mods);

        /**
         *
         * @param button
         * @param action
         * @param mods
         */
        virtual void onMouseButton(int button, int action, int mods);

        /**
         * The cursor position callback of the specified window, which is called when the
         * cursor is moved. The callback is provided with the position, in screen coordinates,
         * relative to the upper-left corner of the client area of the window.
         *
         * @param   window  the window that received the event.
         * @param   x       the new cursor x-coordinate, relative to the left edge of the
         *                  client area.
         * @param   y       the new cursor y-coordinate, relative to the top edge of the
         *                  client area.
         */
        static void glfw_onCursorMoved(GLFWwindow * window, double x, double y);

        /**
         *
         * @param x
         * @param y
         */
        virtual void onCursorMoved(double x, double y);

        /**
         * The scroll callback of the GLFWwindow, which is called when a scrolling device
         * is used, such as a mouse wheel or scrolling area of a touchpad.
         *
         * @param   window  the window that received the event.
         * @param   xoffset the scroll offset along the x-axis.
         * @param   yoffset the scroll offset along the y-axis.
         */
        static void glfw_onScroll(GLFWwindow * window, double xoffset, double yoffset);

        /**
         *
         * @param pos
         */
        virtual void onScroll(double xoffset, double yoffset);

        /**
         *
         * @param proc
         *
         * @return
         */
        GL3WglProc getProcAddress(const char * proc);

        /**
         *
         * @param extname
         *
         * @return
         */
        int isExtensionSupported(const char * extname);

        /**
         *
         * @param source
         * @param type
         * @param id
         * @param severity
         * @param length
         * @param message
         */
        virtual void onDebugMessage(GLenum source,
                                    GLenum type,
                                    GLuint id,
                                    GLenum severity,
                                    GLsizei length,
                                    const GLchar * message);

        /**
         *
         * @param x
         * @param y
         */
        void getMousePosition(int& x, int& y);

        /**
         *
         * @param enable
         */
        void setVsync(bool enable);

    public:
        /**
         * Default constructor.
         */
        GLFWApplication();

        /**
         * Default destructor.
         */
        ~GLFWApplication();

        /**
         * Never call this method directly. Instead use the MAIN macro for your
         * application entry point.
         *
         * @param   app the instance of the application to be executed.
         */
        void run(Application * app) override;

        /**
         * Sets the GLFWwindow title to the given title.
         *
         * @param   title   the char * to be used for the GLFWwindow.
         */
        void setWindowTitle(const char * title);
};

#endif //OPENGL_SUPERBIBLE_7ED_GLFWAPPLICATION_H
