/**
 *
 *   File:   Application.h
 *
 *   Author: Rambod Rahmani <rambodrahmani@autistici.org>
 *           Created on 9/2/18.
 *
 */

#ifndef OPENGL_SUPERBIBLE_7ED_APPLICATION_H
#define OPENGL_SUPERBIBLE_7ED_APPLICATION_H

/**
 *
 */
#define _DEBUG_ 1

/**
 *
 */
class Application
{
    private:
        /**
         * True if the application is running, that is, the run method has been
         * called. False otherwise.
         */
        bool running = false;

    protected:
        /**
         *
         */
        virtual bool init() = 0;

        /**
         *
         */
        virtual bool startup() = 0;

        /**
         *
         */
        virtual void shutdown() = 0;

        /**
         * Sets the application running flag to the given bool value.
         *
         * @param   status  the bool value to be used to set the running flag.
         */
        void setRunningStatus(bool status);

        /**
         * @return  True    if the application is running, false otherwise.
         */
        bool isAppRunning();

    public:
        /**
         * Default constructor.
         */
        Application();

        /**
         * Default destructor.
         */
         ~Application();

        /**
         * Needs to be defined public in order to allow for the MAIN macro to
         * call it from outside context.
         *
         * @param   app
         */
        virtual void run(Application * app) = 0;
};

/**
 *
 */
#if defined __MINGW32__
    #define MAIN(Application)                                       \
        int CALLBACK WinMain(HINSTANCE hInstance,                   \
                             HINSTANCE hPrevInstance,               \
                             LPSTR lpCmdLine,                       \
                             int nCmdShow)                          \
        {                                                           \
            Application * application = new Application();          \
            application->run(application);                          \
                                                                    \
            delete application;                                     \
                                                                    \
            return 0;                                               \
        }
#elif defined __linux__ || defined __APPLE__
    #define MAIN(Application)                                       \
        int main(int argc, const char ** argv)                      \
        {                                                           \
            Application * application = new Application();          \
            application->run(application);                          \
                                                                    \
            delete application;                                     \
                                                                    \
            return 0;                                               \
        }
#else
    #error Undefined platform!
#endif

#endif //OPENGL_SUPERBIBLE_7ED_APPLICATION_H
