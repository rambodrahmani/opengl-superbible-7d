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

# Utility rule file for gl3w_gen.

# Include the progress variables for this target.
include library/gl3w/CMakeFiles/gl3w_gen.dir/progress.make

library/gl3w/CMakeFiles/gl3w_gen: library/gl3w/src/gl3w.c
library/gl3w/CMakeFiles/gl3w_gen: library/gl3w/include/GL/gl3w.h
library/gl3w/CMakeFiles/gl3w_gen: library/gl3w/include/GL/glcorearb.h
library/gl3w/CMakeFiles/gl3w_gen: library/gl3w/include/KHR/khrplatform.h


library/gl3w/src/gl3w.c: ../library/gl3w/gl3w_gen.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating src/gl3w.c, include/GL/gl3w.h, include/GL/glcorearb.h, include/KHR/khrplatform.h"
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/gl3w && /usr/bin/python /home/rambodrahmani/DevOps/opengl-superbible-7d/library/gl3w/gl3w_gen.py

library/gl3w/include/GL/gl3w.h: library/gl3w/src/gl3w.c
	@$(CMAKE_COMMAND) -E touch_nocreate library/gl3w/include/GL/gl3w.h

library/gl3w/include/GL/glcorearb.h: library/gl3w/src/gl3w.c
	@$(CMAKE_COMMAND) -E touch_nocreate library/gl3w/include/GL/glcorearb.h

library/gl3w/include/KHR/khrplatform.h: library/gl3w/src/gl3w.c
	@$(CMAKE_COMMAND) -E touch_nocreate library/gl3w/include/KHR/khrplatform.h

gl3w_gen: library/gl3w/CMakeFiles/gl3w_gen
gl3w_gen: library/gl3w/src/gl3w.c
gl3w_gen: library/gl3w/include/GL/gl3w.h
gl3w_gen: library/gl3w/include/GL/glcorearb.h
gl3w_gen: library/gl3w/include/KHR/khrplatform.h
gl3w_gen: library/gl3w/CMakeFiles/gl3w_gen.dir/build.make

.PHONY : gl3w_gen

# Rule to build all files generated by this target.
library/gl3w/CMakeFiles/gl3w_gen.dir/build: gl3w_gen

.PHONY : library/gl3w/CMakeFiles/gl3w_gen.dir/build

library/gl3w/CMakeFiles/gl3w_gen.dir/clean:
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/gl3w && $(CMAKE_COMMAND) -P CMakeFiles/gl3w_gen.dir/cmake_clean.cmake
.PHONY : library/gl3w/CMakeFiles/gl3w_gen.dir/clean

library/gl3w/CMakeFiles/gl3w_gen.dir/depend:
	cd /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rambodrahmani/DevOps/opengl-superbible-7d /home/rambodrahmani/DevOps/opengl-superbible-7d/library/gl3w /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/gl3w /home/rambodrahmani/DevOps/opengl-superbible-7d/cmake-build-debug/library/gl3w/CMakeFiles/gl3w_gen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : library/gl3w/CMakeFiles/gl3w_gen.dir/depend

