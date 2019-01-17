##
# CMake minimum required version for the project.
##
cmake_minimum_required(VERSION 3.11)

##
# Library C++ Project CMakeLists.txt.
##
project(library)

##
# Sets the C++ standard whose features are requested to build this target.
##
set(CMAKE_CXX_STANDARD 14)

##
# Adds main.cpp executable target.
##
add_executable(library-test main.cpp include/Util.h src/Util.cpp include/Application.h src/Application.cpp include/GLFWApplication.h src/GLFWApplication.cpp)

##
# Adds include directories to be used when compiling and libraries to be used when
# linking target library.
##
target_include_directories(library-test PRIVATE ${OPENGL_INCLUDE_DIR})
target_link_libraries(library-test PRIVATE ${OPENGL_gl_LIBRARY} glfw gl3w)
