/**
 *
 *   File:   GLFWApplication.cpp
 *
 *   Author: Rambod Rahmani <rambodrahmani@autistici.org>
 *           Created on 8/29/18.
 *
 */

#include "../include/GLFWApplication.h"

/**
 * Define internal GLFWApplication static reference.
 */
GLFWApplication * GLFWApplication::application = nullptr;

GLFWApplication::GLFWApplication()
{
    // nothing to do
}

GLFWApplication::~GLFWApplication()
{
    // nothing to do
}

void GLFWApplication::run(Application * app)
{
    // check if the application is already running
    if (!isAppRunning())
    {
        // update internal application static reference
        application = (GLFWApplication *) app;

        // set application running status to true
        setRunningStatus(true);

        // call application-specific init method
        if (init())
        {
            if (startup())
            {
                do
                {
                    // call render method passing the time elapsed since GLFW was initialized
                    render(glfwGetTime());

                    // swap the front and back buffers of the window
                    glfwSwapBuffers(window);

                    // process all pending events
                    glfwPollEvents();

                    // check for OpenGL errors
                    GLenum error;
                    while ((error = glGetError()) != GL_NO_ERROR)
                    {
                        onOpenGLError(error);
                    }

                    setRunningStatus(isAppRunning() & (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_RELEASE));
                    setRunningStatus(isAppRunning() & (glfwWindowShouldClose(window) != GL_TRUE));
                }
                while (isAppRunning());

                // call application-specific shutdown method
                shutdown();

                // destroy the specified window and its context
                glfwDestroyWindow(window);

                // terminates the GLFW library
                glfwTerminate();
            }
            else
            {
                fprintf(stderr, "Application startup failed.\n");
            }
        }
        else
        {
            fprintf(stderr, "Application initialization failed.\n");
        }
    }
    else
    {
        fprintf(stderr, "Application is already running.\n");
    }
}

bool GLFWApplication::init()
{
    // set the application name
    strcpy(info.name, "GLFWApplication");

    // set the application version
    info.majorVersion = 1;
    info.minorVersion = 0;

    // set GLFWwindow title
    strcpy(info.title, "GLFWApplication Main Window");

    // set GLFWwindow size
    info.windowWidth = 800;
    info.windowHeight = 600;

    // set OpenGL Context version based on platform
    #ifdef __APPLE__
        info.openglMajorVersion = 3;
        info.openglMinorVersion = 2;
    #else
        info.openglMajorVersion = 4;
        info.openglMinorVersion = 3;
    #endif

    info.samples = 0;
    info.flags.all = 0;
    info.flags.cursor = 1;

    if (_DEBUG_)
    {
        info.flags.debug = 1;
    }

    // initialize the GLFW library
    if (!glfwInit())
    {
        fprintf(stderr, "Failed to initialize GLFW.\n");
        return false;
    }

    // set OpenGL Context window hints
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, info.openglMajorVersion);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, info.openglMinorVersion);

    // if application debug flag is set
    if (info.flags.debug)
    {
    	// create a debug OpenGL context, which may have additional error and
    	// performance issue reporting functionality
        glfwWindowHint(GLFW_OPENGL_DEBUG_CONTEXT, GL_TRUE);
    }

	// if application robust flag is set
    if (info.flags.robust)
    {
        glfwWindowHint(GLFW_CONTEXT_ROBUSTNESS, GLFW_LOSE_CONTEXT_ON_RESET);
    }

    // specifies to create the context for the OpenGL core profile
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // specifies that the OpenGL context should be forward-compatible,
    // i.e. one where all functionality deprecated in the requested version of OpenGL is removed
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);

    // specifies the desired number of samples to use for multisampling
    glfwWindowHint(GLFW_SAMPLES, info.samples);

    // specifies whether to use stereoscopic rendering. This is a hard constraint.
    glfwWindowHint(GLFW_STEREO, info.flags.stereo ? GL_TRUE : GL_FALSE);

    // create the GLFWwindow and its associated OpenGL context
    window = glfwCreateWindow(info.windowWidth, info.windowHeight, info.title, info.flags.fullscreen ? glfwGetPrimaryMonitor() : nullptr, nullptr);

    // check if the GLFWwindow was correctly created
    if (!window)
    {
        fprintf(stderr, "Failed to create GLFWwindow.\n");
        return false;
    }

    // make the OpenGL context of the specified window current on the calling thread
    glfwMakeContextCurrent(window);

    // set GLFWwindow callbacks
    glfwSetWindowSizeCallback(window, glfw_onWindowResized);
    glfwSetWindowFocusCallback(window, glfw_onWindowFocused);
    glfwSetWindowCloseCallback(window, glfw_onWindowClosed);
    glfwSetKeyCallback(window, glfw_onKey);
    glfwSetMouseButtonCallback(window, glfw_onMouseButton);
    glfwSetCursorPosCallback(window, glfw_onCursorMoved);
    glfwSetScrollCallback(window, glfw_onScroll);

    // if the application cursor flag is not set
    if (!info.flags.cursor)
    {
    	// sets an input option for the specified window
    	// makes the cursor invisible when it is over the client area of the window
    	// but does not restrict the cursor from leaving
        glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_HIDDEN);
    }

    // info.flags.stereo = (glfwGetWindowParam(GLFW_STEREO) ? 1 : 0);

    // initialize the GL3W library
    if (gl3wInit())
    {
        fprintf(stderr, "Failed to initialize Gl3w.\n");
        return false;
    }

    // check the required OpenGL core profile version is supported
    if (!gl3wIsSupported(info.openglMajorVersion, info.openglMinorVersion))
    {
        fprintf(stderr, "OpenGL %i.%i not supported.\n", info.openglMajorVersion, info.openglMinorVersion);
        return false;
    }

    // if the debug flag is set
    if (info.flags.debug)
    {
        // print infos of the current GL connection
        fprintf(stdout, "VENDOR: %s\n", (char *) glGetString(GL_VENDOR));
        fprintf(stdout, "VERSION: %s\n", (char *) glGetString(GL_VERSION));
        fprintf(stdout, "RENDERER: %s\n", (char *) glGetString(GL_RENDERER));

        fprintf(stdout, "GL_EXTENSIONS:\n");
        GLint extensionCount;
        glGetIntegerv(GL_NUM_EXTENSIONS, &extensionCount);
        for (int i = 0; i < extensionCount; i++) {
            fprintf(stdout, "%s\n", (char *) glGetStringi(GL_EXTENSIONS, i));
        }
    }

    // finally, return onInit() result
    return onInit();
}

bool GLFWApplication::startup()
{
    // finally, return onStartup() result
    return onStartup();
}

void GLFWApplication::shutdown()
{
    // finally, call onShutdown()
    onShutdown();
}

void GLFWApplication::glfw_onWindowResized(GLFWwindow * window, int w, int h)
{
    application->onWindowResized(w, h);
}

void GLFWApplication::onWindowResized(int w, int h)
{
    info.windowWidth = w;
    info.windowHeight = h;
}

/**
 * Calls GLFWApplication::onWindowFocused() passing the focused flag.
 *
 * @param   window  the window that gained or lost input focus.
 * @param   focused GLFW_TRUE if the window was given input focus, or GLFW_FALSE
 *                  if it lost it.
 */
void GLFWApplication::glfw_onWindowFocused(GLFWwindow * window, int focused)
{
    application->onWindowFocused(focused);
}

/**
 *
 * @param   focused GLFW_TRUE if the window was given input focus, or GLFW_FALSE
 *                  if it lost it.
 */
void GLFWApplication::onWindowFocused(int focused)
{

}

/**
 * Calls GLFWApplication::onWindowClosed().
 *
 * @param   window  the window that the user attempted to close.
 */
void GLFWApplication::glfw_onWindowClosed(GLFWwindow * window)
{
    application->onWindowClosed();
}

/**
 *
 */
void GLFWApplication::onWindowClosed()
{

}

/**
 * Calls GLFWApplication::onKey() passing the keyboard key that was pressed or
 * released, the system-specific scancode of the key, the action performed on the
 * key and the bit field describing which modifier keys were held down.
 *
 * @param   window      the window that received the event.
 * @param   key         the keyboard key that was pressed or released.
 * @param   scancode    the system-specific scancode of the key.
 * @param   action      GLFW_PRESS, GLFW_RELEASE or GLFW_REPEAT.
 * @param   mods        bit field describing which modifier keys were held down.
 */
void GLFWApplication::glfw_onKey(GLFWwindow * window, int key, int scancode, int action, int mods)
{
    application->onKey(key, scancode, action, mods);
}

/**
 *
 * @param   key         the keyboard key that was pressed or released.
 * @param   scancode    the system-specific scancode of the key.
 * @param   action      GLFW_PRESS, GLFW_RELEASE or GLFW_REPEAT.
 * @param   mods        bit field describing which modifier keys were held down.
 */
void GLFWApplication::onKey(int key, int scancode, int action, int mods)
{

}

/**
 * Calls GLFWApplication::onMouseButton() passing the mouse button that was
 * pressed or released, the action performed on the key and the bit field describing
 * which modifier keys were held down.
 *
 * @param   window  the window that received the event.
 * @param   button  the mouse button that was pressed or released.
 * @param   action  one of GLFW_PRESS or GLFW_RELEASE.
 * @param   mods    bit field describing which modifier keys were held down.
 */
void GLFWApplication::glfw_onMouseButton(GLFWwindow * window, int button, int action, int mods)
{
    application->onMouseButton(button, action, mods);
}

/**
 *
 * @param   button  the mouse button that was pressed or released.
 * @param   action  one of GLFW_PRESS or GLFW_RELEASE.
 * @param   mods    bit field describing which modifier keys were held down.
 */
void GLFWApplication::onMouseButton(int button, int action, int mods)
{

}

/**
 * Calls GLFWApplication::onCursorMoved() passing the new cursor x-coordinate,
 * relative to the left edge of the client area and the new cursor y-coordinate,
 * relative to the top edge of the client area.
 *
 * @param   window  the window that received the event.
 * @param   x       the new cursor x-coordinate, relative to the left edge of the
 *                  client area.
 * @param   y       the new cursor y-coordinate, relative to the top edge of the
 *                  client area.
 */
void GLFWApplication::glfw_onCursorMoved(GLFWwindow * window, double x, double y)
{
    application->onCursorMoved(x, y);
}

/**
 *
 * @param   x       the new cursor x-coordinate, relative to the left edge of the
 *                  client area.
 * @param   y       the new cursor y-coordinate, relative to the top edge of the
 *                  client area.
 */
void GLFWApplication::onCursorMoved(double x, double y)
{
}

/**
 * Calls GLFWApplication::onScroll() passing the scroll offset along the x-axis
 * and the scroll offset along the y-axis.
 *
 * @param   window  the window that received the event.
 * @param   xoffset the scroll offset along the x-axis.
 * @param   yoffset the scroll offset along the y-axis.
 */
void GLFWApplication::glfw_onScroll(GLFWwindow * window, double xoffset, double yoffset)
{
    application->onScroll(xoffset, yoffset);
}

/**
 *
 * @param   xoffset the scroll offset along the x-axis.
 * @param   yoffset the scroll offset along the y-axis.
 */
void GLFWApplication::onScroll(double xoffset, double yoffset)
{

}

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
void APIENTRY GLFWApplication::debug_callback(GLenum source,
                                              GLenum type,
                                              GLuint id,
                                              GLenum severity,
                                              GLsizei length,
                                              const GLchar * message,
                                              GLvoid * userParam
)
{
    reinterpret_cast<GLFWApplication *>(userParam)->onDebugMessage(source, type, id, severity, length, message);
}

/**
 *
 * @param source
 * @param type
 * @param id
 * @param severity
 * @param length
 * @param message
 */
void GLFWApplication::onDebugMessage(GLenum source,
                                     GLenum type,
                                     GLuint id,
                                     GLenum severity,
                                     GLsizei length,
                                     const GLchar * message)
{
    #ifdef __MINGW32__
        OutputDebugStringA(message);
        OutputDebugStringA("\n");
    #endif
}

/**
 * Returns the address of an OpenGL extension function. Generally, you won't
 * need to use it since gl3w loads all functions defined in the OpenGL core
 * profile on initialization. It allows you to load OpenGL extensions outside of
 * the core profile.
 *
 * @param proc
 *
 * @return
 */
GL3WglProc GLFWApplication::getProcAddress(const char * proc)
{
    return gl3wGetProcAddress(proc);
}

/**
 *
 * @param extname
 * @return
 */
int GLFWApplication::isExtensionSupported(const char *extname)
{
    GLint numExtensions;
    GLint i;

    glGetIntegerv(GL_NUM_EXTENSIONS, &numExtensions);

    for (i = 0; i < numExtensions; i++)
    {
        const GLubyte * e = glGetStringi(GL_EXTENSIONS, i);
        if (!strcmp((const char *)e, extname))
        {
            return 1;
        }
    }

    return 0;
}

/**
 * Sets the GLFWwindow title to the given title and updates the internal APPINFO
 * struct title field.
 *
 * @param   title   the char * to be used for the GLFWwindow.
 */
void GLFWApplication::setWindowTitle(const char * title)
{
    glfwSetWindowTitle(window, title);

    strcpy(info.title, title);
}

/**
 *
 * @param x
 * @param y
 */
void GLFWApplication::getMousePosition(int& x, int& y)
{
    double dx, dy;
    glfwGetCursorPos(window, &dx, &dy);

    x = static_cast<int>(floor(dx));
    y = static_cast<int>(floor(dy));
}

/**
 *
 * @param enable
 */
void GLFWApplication::setVsync(bool enable)
{
    info.flags.vsync = enable ? 1 : 0;
    glfwSwapInterval((int)info.flags.vsync);
}
