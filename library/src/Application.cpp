/**
 *
 *   File:   Application.cpp
 *
 *   Author: Rambod Rahmani <rambodrahmani@autistici.org>
 *           Created on 9/2/18.
 *
 */

#include "../include/Application.h"

/**
 * Default constructor.
 */
Application::Application()
{

}

/**
 * Default destructor.
 */
Application::~Application()
{

}

/**
 * Sets the application running flag to the given bool value.
 *
 * @param   status  the bool value to be used to set the running flag.
 */
void Application::setRunningStatus(bool status)
{
    running = status;
}

/**
* @return  True    if the application is running, false otherwise.
*/
bool Application::isAppRunning()
{
    return running;
}
