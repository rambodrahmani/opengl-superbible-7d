# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rambodrahmani/DevOps/opengl-superbible-7d

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug

# Include any dependencies generated for this target.
include part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/depend.make

# Include the progress variables for this target.
include part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/progress.make

# Include the compile flags for this target's objects.
include part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/flags.make

part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/source2.cpp.o: part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/flags.make
part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/source2.cpp.o: ../part-i-foundations/chapter3/source2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/source2.cpp.o"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/part-i-foundations/chapter3 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chapter3-source2.dir/source2.cpp.o -c /home/rambodrahmani/DevOps/opengl-superbible-7d/part-i-foundations/chapter3/source2.cpp

part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/source2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chapter3-source2.dir/source2.cpp.i"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/part-i-foundations/chapter3 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rambodrahmani/DevOps/opengl-superbible-7d/part-i-foundations/chapter3/source2.cpp > CMakeFiles/chapter3-source2.dir/source2.cpp.i

part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/source2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chapter3-source2.dir/source2.cpp.s"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/part-i-foundations/chapter3 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rambodrahmani/DevOps/opengl-superbible-7d/part-i-foundations/chapter3/source2.cpp -o CMakeFiles/chapter3-source2.dir/source2.cpp.s

part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/__/__/library/gl3w/src/gl3w.c.o: part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/flags.make
part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/__/__/library/gl3w/src/gl3w.c.o: library/gl3w/src/gl3w.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/__/__/library/gl3w/src/gl3w.c.o"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/part-i-foundations/chapter3 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/chapter3-source2.dir/__/__/library/gl3w/src/gl3w.c.o   -c /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/gl3w/src/gl3w.c

part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/__/__/library/gl3w/src/gl3w.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chapter3-source2.dir/__/__/library/gl3w/src/gl3w.c.i"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/part-i-foundations/chapter3 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/gl3w/src/gl3w.c > CMakeFiles/chapter3-source2.dir/__/__/library/gl3w/src/gl3w.c.i

part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/__/__/library/gl3w/src/gl3w.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chapter3-source2.dir/__/__/library/gl3w/src/gl3w.c.s"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/part-i-foundations/chapter3 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/gl3w/src/gl3w.c -o CMakeFiles/chapter3-source2.dir/__/__/library/gl3w/src/gl3w.c.s

# Object files for target chapter3-source2
chapter3__source2_OBJECTS = \
"CMakeFiles/chapter3-source2.dir/source2.cpp.o" \
"CMakeFiles/chapter3-source2.dir/__/__/library/gl3w/src/gl3w.c.o"

# External object files for target chapter3-source2
chapter3__source2_EXTERNAL_OBJECTS =

part-i-foundations/chapter3/chapter3-source2: part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/source2.cpp.o
part-i-foundations/chapter3/chapter3-source2: part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/__/__/library/gl3w/src/gl3w.c.o
part-i-foundations/chapter3/chapter3-source2: part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/build.make
part-i-foundations/chapter3/chapter3-source2: liblibrary.a
part-i-foundations/chapter3/chapter3-source2: library/glfw/src/libglfw3.a
part-i-foundations/chapter3/chapter3-source2: /usr/lib/librt.so
part-i-foundations/chapter3/chapter3-source2: /usr/lib/libm.so
part-i-foundations/chapter3/chapter3-source2: /usr/lib/libX11.so
part-i-foundations/chapter3/chapter3-source2: /usr/lib/libGLU.so
part-i-foundations/chapter3/chapter3-source2: /usr/lib/libGLX.so
part-i-foundations/chapter3/chapter3-source2: /usr/lib/libOpenGL.so
part-i-foundations/chapter3/chapter3-source2: part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable chapter3-source2"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/part-i-foundations/chapter3 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chapter3-source2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/build: part-i-foundations/chapter3/chapter3-source2

.PHONY : part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/build

part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/clean:
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/part-i-foundations/chapter3 && $(CMAKE_COMMAND) -P CMakeFiles/chapter3-source2.dir/cmake_clean.cmake
.PHONY : part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/clean

part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/depend:
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rambodrahmani/DevOps/opengl-superbible-7d /home/rambodrahmani/DevOps/opengl-superbible-7d/part-i-foundations/chapter3 /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/part-i-foundations/chapter3 /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : part-i-foundations/chapter3/CMakeFiles/chapter3-source2.dir/depend

