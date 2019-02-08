##
# CMake minimum required version for the project.
##
cmake_minimum_required(VERSION 3.11)

##
# chapter1 C++ Project CMakeLists.txt.
##
project(chapter1)

##
# Sets the C++ standard whose features are requested to build this target.
##
set(CMAKE_CXX_STANDARD 14)

##
# Adds main.cpp executable target.
##
add_executable(chapter1-source1 source1.cpp)
