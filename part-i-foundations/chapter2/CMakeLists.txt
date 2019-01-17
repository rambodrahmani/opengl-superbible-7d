##
# CMake minimum required version for the project.
##
cmake_minimum_required(VERSION 3.11)

##
# chapter2 C++ Project CMakeLists.txt.
##
project(chapter2)

##
# Sets the C++ standard whose features are requested to build this target.
##
set(CMAKE_CXX_STANDARD 14)

##
# Adds source1.cpp executable target.
##
add_executable(chapter2-source1 source1.cpp)

##
# Adds include directories to be used when compiling and libraries to be used when
# linking target chapter2-source1.
##
target_include_directories(chapter2-source1 PRIVATE ${OPENGL_INCLUDE_DIR} ${LIBRARY_INCLUDE_DIR})
target_link_libraries(chapter2-source1 PRIVATE ${OPENGL_gl_LIBRARY} library glfw gl3w)

##
# Adds source2.cpp executable target.
##
add_executable(chapter2-source2 source2.cpp)

##
# Adds include directories to be used when compiling and libraries to be used when
# linking target chapter2-source2.
##
target_include_directories(chapter2-source2 PRIVATE ${OPENGL_INCLUDE_DIR} ${LIBRARY_INCLUDE_DIR})
target_link_libraries(chapter2-source2 PRIVATE ${OPENGL_gl_LIBRARY} library glfw gl3w)

##
# Adds source3.cpp executable target.
##
add_executable(chapter2-source3 source3.cpp)

##
# Adds include directories to be used when compiling and libraries to be used when
# linking target chapter2-source3.
##
target_include_directories(chapter2-source3 PRIVATE ${OPENGL_INCLUDE_DIR} ${LIBRARY_INCLUDE_DIR})
target_link_libraries(chapter2-source3 PRIVATE ${OPENGL_gl_LIBRARY} library glfw gl3w)

##
# Adds source4.cpp executable target.
##
add_executable(chapter2-source4 source4.cpp)

##
# Adds include directories to be used when compiling and libraries to be used when
# linking target chapter2-source4.
##
target_include_directories(chapter2-source4 PRIVATE ${OPENGL_INCLUDE_DIR} ${LIBRARY_INCLUDE_DIR})
target_link_libraries(chapter2-source4 PRIVATE ${OPENGL_gl_LIBRARY} library glfw gl3w)

##
# Adds source5.cpp executable target.
##
add_executable(chapter2-source5 source5.cpp)

##
# Adds include directories to be used when compiling and libraries to be used when
# linking target chapter2-source5.
##
target_include_directories(chapter2-source5 PRIVATE ${OPENGL_INCLUDE_DIR} ${LIBRARY_INCLUDE_DIR})
target_link_libraries(chapter2-source5 PRIVATE ${OPENGL_gl_LIBRARY} library glfw gl3w)

##
# Adds source6.cpp executable target.
##
add_executable(chapter2-source6 source6.cpp)

##
# Adds include directories to be used when compiling and libraries to be used when
# linking target chapter2-source6.
##
target_include_directories(chapter2-source6 PRIVATE ${OPENGL_INCLUDE_DIR} ${LIBRARY_INCLUDE_DIR})
target_link_libraries(chapter2-source6 PRIVATE ${OPENGL_gl_LIBRARY} library glfw gl3w)

##
# Adds source7.cpp executable target.
##
add_executable(chapter2-source7 source7.cpp)

##
# Adds include directories to be used when compiling and libraries to be used when
# linking target chapter2-source7.
##
target_include_directories(chapter2-source7 PRIVATE ${OPENGL_INCLUDE_DIR} ${LIBRARY_INCLUDE_DIR})
target_link_libraries(chapter2-source7 PRIVATE ${OPENGL_gl_LIBRARY} library glfw gl3w)
