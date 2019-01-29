/**
 *
 *   File:   Application.cpp
 *
 *   Author: Rambod Rahmani <rambodrahmani@autistici.org>
 *           Created on 9/2/18.
 *
 */

#include "../include/Application.h"

Application::Application()
{

}

Application::~Application()
{

}

void Application::setRunningStatus(bool status)
{
    running = status;
}

bool Application::isAppRunning()
{
    return running;
}
