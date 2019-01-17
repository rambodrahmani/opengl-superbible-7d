##
# CMake minimum required version for the project.
##
cmake_minimum_required(VERSION 3.11)

##
# OpenGL-Superbible-7ED C++ Project CMakeLists.txt.
##
project(OpenGL_Superbible_7ED)

##
# Include module pkg-config for CMake.
##
INCLUDE(FindPkgConfig)

##
# Sets the C++ standard whose features are requested to build this target.
##
set(CMAKE_CXX_STANDARD 14)

##
# Find OpenGL include directories and link libraries.
##
find_package(OpenGL REQUIRED)

##
# Add subdirectories to the build.
##

##
# Add library subdirectory.
##
add_subdirectory(library)

##
# Add library for library subdirectory.
##
add_library(library library/include/GLFWApplication.h library/src/GLFWApplication.cpp library/include/Application.h library/src/Application.cpp library/include/Util.h library/src/Util.cpp library/include/KHR/provva.h)

##
# Add library/glfw subdirectory.
##
add_subdirectory(library/glfw)

set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

##
# Add library/gl3w subdirectory.
##
add_subdirectory(library/gl3w)

##
# Add Part I - Foundations subdirectory.
##
add_subdirectory(part-i-foundations)

##
# Add Part II - In Depth subdirectory.
##
add_subdirectory(part-ii-in-depth)

##
# Add Part III - In Practice subdirectory.
##
add_subdirectory(part-iii-in-practice)
