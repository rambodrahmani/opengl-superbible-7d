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
include library/glfw/tests/CMakeFiles/reopen.dir/depend.make

# Include the progress variables for this target.
include library/glfw/tests/CMakeFiles/reopen.dir/progress.make

# Include the compile flags for this target's objects.
include library/glfw/tests/CMakeFiles/reopen.dir/flags.make

library/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o: library/glfw/tests/CMakeFiles/reopen.dir/flags.make
library/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o: ../library/glfw/tests/reopen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object library/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/reopen.dir/reopen.c.o   -c /home/rambodrahmani/DevOps/opengl-superbible-7d/library/glfw/tests/reopen.c

library/glfw/tests/CMakeFiles/reopen.dir/reopen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/reopen.dir/reopen.c.i"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rambodrahmani/DevOps/opengl-superbible-7d/library/glfw/tests/reopen.c > CMakeFiles/reopen.dir/reopen.c.i

library/glfw/tests/CMakeFiles/reopen.dir/reopen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/reopen.dir/reopen.c.s"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rambodrahmani/DevOps/opengl-superbible-7d/library/glfw/tests/reopen.c -o CMakeFiles/reopen.dir/reopen.c.s

library/glfw/tests/CMakeFiles/reopen.dir/__/deps/glad.c.o: library/glfw/tests/CMakeFiles/reopen.dir/flags.make
library/glfw/tests/CMakeFiles/reopen.dir/__/deps/glad.c.o: ../library/glfw/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object library/glfw/tests/CMakeFiles/reopen.dir/__/deps/glad.c.o"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/reopen.dir/__/deps/glad.c.o   -c /home/rambodrahmani/DevOps/opengl-superbible-7d/library/glfw/deps/glad.c

library/glfw/tests/CMakeFiles/reopen.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/reopen.dir/__/deps/glad.c.i"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rambodrahmani/DevOps/opengl-superbible-7d/library/glfw/deps/glad.c > CMakeFiles/reopen.dir/__/deps/glad.c.i

library/glfw/tests/CMakeFiles/reopen.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/reopen.dir/__/deps/glad.c.s"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rambodrahmani/DevOps/opengl-superbible-7d/library/glfw/deps/glad.c -o CMakeFiles/reopen.dir/__/deps/glad.c.s

# Object files for target reopen
reopen_OBJECTS = \
"CMakeFiles/reopen.dir/reopen.c.o" \
"CMakeFiles/reopen.dir/__/deps/glad.c.o"

# External object files for target reopen
reopen_EXTERNAL_OBJECTS =

library/glfw/tests/reopen: library/glfw/tests/CMakeFiles/reopen.dir/reopen.c.o
library/glfw/tests/reopen: library/glfw/tests/CMakeFiles/reopen.dir/__/deps/glad.c.o
library/glfw/tests/reopen: library/glfw/tests/CMakeFiles/reopen.dir/build.make
library/glfw/tests/reopen: library/glfw/src/libglfw3.a
library/glfw/tests/reopen: /usr/lib/libm.so
library/glfw/tests/reopen: /usr/lib/librt.so
library/glfw/tests/reopen: /usr/lib/libm.so
library/glfw/tests/reopen: /usr/lib/libX11.so
library/glfw/tests/reopen: library/glfw/tests/CMakeFiles/reopen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable reopen"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reopen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
library/glfw/tests/CMakeFiles/reopen.dir/build: library/glfw/tests/reopen

.PHONY : library/glfw/tests/CMakeFiles/reopen.dir/build

library/glfw/tests/CMakeFiles/reopen.dir/clean:
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/reopen.dir/cmake_clean.cmake
.PHONY : library/glfw/tests/CMakeFiles/reopen.dir/clean

library/glfw/tests/CMakeFiles/reopen.dir/depend:
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rambodrahmani/DevOps/opengl-superbible-7d /home/rambodrahmani/DevOps/opengl-superbible-7d/library/glfw/tests /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/tests /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/glfw/tests/CMakeFiles/reopen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : library/glfw/tests/CMakeFiles/reopen.dir/depend

