##
# CMake minimum required version for the project.
##
cmake_minimum_required(VERSION 3.11)

##
# chapter3 C++ Project CMakeLists.txt.
##
project(chapter3)

##
# Sets the C++ standard whose features are requested to build this target.
##
set(CMAKE_CXX_STANDARD 14)

##
# Adds source1.cpp executable target.
##
add_executable(chapter3-source1 source1.cpp)

##
# Adds include directories to be used when compiling and libraries to be used when
# linking target chapter3-source1.
##
target_include_directories(chapter3-source1 PRIVATE ${OPENGL_INCLUDE_DIR} ${LIBRARY_INCLUDE_DIR})
target_link_libraries(chapter3-source1 PRIVATE ${OPENGL_gl_LIBRARY} library glfw gl3w)

##
# Adds source2.cpp executable target.
##
add_executable(chapter3-source2 source2.cpp)

##
# Adds include directories to be used when compiling and libraries to be used when
# linking target chapter3-source2.
##
target_include_directories(chapter3-source2 PRIVATE ${OPENGL_INCLUDE_DIR} ${LIBRARY_INCLUDE_DIR})
target_link_libraries(chapter3-source2 PRIVATE ${OPENGL_gl_LIBRARY} library glfw gl3w)

##
# Adds source3.cpp executable target.
##
add_executable(chapter3-source3 source3.cpp)

##
# Adds include directories to be used when compiling and libraries to be used when
# linking target chapter3-source3.
##
target_include_directories(chapter3-source3 PRIVATE ${OPENGL_INCLUDE_DIR} ${LIBRARY_INCLUDE_DIR})
target_link_libraries(chapter3-source3 PRIVATE ${OPENGL_gl_LIBRARY} library glfw gl3w)
