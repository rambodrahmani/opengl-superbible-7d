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
include library/glfw/examples/CMakeFiles/heightmap.dir/depend.make

# Include the progress variables for this target.
include library/glfw/examples/CMakeFiles/heightmap.dir/progress.make

# Include the compile flags for this target's objects.
include library/glfw/examples/CMakeFiles/heightmap.dir/flags.make

library/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.o: library/glfw/examples/CMakeFiles/heightmap.dir/flags.make
library/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.o: ../library/glfw/examples/heightmap.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object library/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.o"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/heightmap.dir/heightmap.c.o   -c /home/rambodrahmani/DevOps/opengl-superbible-7d/library/glfw/examples/heightmap.c

library/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/heightmap.dir/heightmap.c.i"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rambodrahmani/DevOps/opengl-superbible-7d/library/glfw/examples/heightmap.c > CMakeFiles/heightmap.dir/heightmap.c.i

library/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/heightmap.dir/heightmap.c.s"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rambodrahmani/DevOps/opengl-superbible-7d/library/glfw/examples/heightmap.c -o CMakeFiles/heightmap.dir/heightmap.c.s

library/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.o: library/glfw/examples/CMakeFiles/heightmap.dir/flags.make
library/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.o: ../library/glfw/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object library/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.o"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/heightmap.dir/__/deps/glad.c.o   -c /home/rambodrahmani/DevOps/opengl-superbible-7d/library/glfw/deps/glad.c

library/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/heightmap.dir/__/deps/glad.c.i"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rambodrahmani/DevOps/opengl-superbible-7d/library/glfw/deps/glad.c > CMakeFiles/heightmap.dir/__/deps/glad.c.i

library/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/heightmap.dir/__/deps/glad.c.s"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rambodrahmani/DevOps/opengl-superbible-7d/library/glfw/deps/glad.c -o CMakeFiles/heightmap.dir/__/deps/glad.c.s

# Object files for target heightmap
heightmap_OBJECTS = \
"CMakeFiles/heightmap.dir/heightmap.c.o" \
"CMakeFiles/heightmap.dir/__/deps/glad.c.o"

# External object files for target heightmap
heightmap_EXTERNAL_OBJECTS =

library/glfw/examples/heightmap: library/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.o
library/glfw/examples/heightmap: library/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.o
library/glfw/examples/heightmap: library/glfw/examples/CMakeFiles/heightmap.dir/build.make
library/glfw/examples/heightmap: library/glfw/src/libglfw3.a
library/glfw/examples/heightmap: /usr/lib/libm.so
library/glfw/examples/heightmap: /usr/lib/librt.so
library/glfw/examples/heightmap: /usr/lib/libm.so
library/glfw/examples/heightmap: /usr/lib/libX11.so
library/glfw/examples/heightmap: library/glfw/examples/CMakeFiles/heightmap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable heightmap"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/heightmap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
library/glfw/examples/CMakeFiles/heightmap.dir/build: library/glfw/examples/heightmap

.PHONY : library/glfw/examples/CMakeFiles/heightmap.dir/build

library/glfw/examples/CMakeFiles/heightmap.dir/clean:
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/examples && $(CMAKE_COMMAND) -P CMakeFiles/heightmap.dir/cmake_clean.cmake
.PHONY : library/glfw/examples/CMakeFiles/heightmap.dir/clean

library/glfw/examples/CMakeFiles/heightmap.dir/depend:
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rambodrahmani/DevOps/opengl-superbible-7d /home/rambodrahmani/DevOps/opengl-superbible-7d/library/glfw/examples /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/examples /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/examples/CMakeFiles/heightmap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : library/glfw/examples/CMakeFiles/heightmap.dir/depend

