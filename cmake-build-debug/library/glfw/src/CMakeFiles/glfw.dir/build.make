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
CMAKE_COMMAND = /opt/clion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug

# Include any dependencies generated for this target.
include library/glfw/src/CMakeFiles/glfw.dir/depend.make

# Include the progress variables for this target.
include library/glfw/src/CMakeFiles/glfw.dir/progress.make

# Include the compile flags for this target's objects.
include library/glfw/src/CMakeFiles/glfw.dir/flags.make

library/glfw/src/CMakeFiles/glfw.dir/context.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/context.c.o: ../library/glfw/src/context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object library/glfw/src/CMakeFiles/glfw.dir/context.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/context.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/context.c

library/glfw/src/CMakeFiles/glfw.dir/context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/context.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/context.c > CMakeFiles/glfw.dir/context.c.i

library/glfw/src/CMakeFiles/glfw.dir/context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/context.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/context.c -o CMakeFiles/glfw.dir/context.c.s

library/glfw/src/CMakeFiles/glfw.dir/init.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/init.c.o: ../library/glfw/src/init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object library/glfw/src/CMakeFiles/glfw.dir/init.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/init.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/init.c

library/glfw/src/CMakeFiles/glfw.dir/init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/init.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/init.c > CMakeFiles/glfw.dir/init.c.i

library/glfw/src/CMakeFiles/glfw.dir/init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/init.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/init.c -o CMakeFiles/glfw.dir/init.c.s

library/glfw/src/CMakeFiles/glfw.dir/input.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/input.c.o: ../library/glfw/src/input.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object library/glfw/src/CMakeFiles/glfw.dir/input.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/input.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/input.c

library/glfw/src/CMakeFiles/glfw.dir/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/input.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/input.c > CMakeFiles/glfw.dir/input.c.i

library/glfw/src/CMakeFiles/glfw.dir/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/input.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/input.c -o CMakeFiles/glfw.dir/input.c.s

library/glfw/src/CMakeFiles/glfw.dir/monitor.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/monitor.c.o: ../library/glfw/src/monitor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object library/glfw/src/CMakeFiles/glfw.dir/monitor.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/monitor.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/monitor.c

library/glfw/src/CMakeFiles/glfw.dir/monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/monitor.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/monitor.c > CMakeFiles/glfw.dir/monitor.c.i

library/glfw/src/CMakeFiles/glfw.dir/monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/monitor.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/monitor.c -o CMakeFiles/glfw.dir/monitor.c.s

library/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o: ../library/glfw/src/vulkan.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object library/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/vulkan.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/vulkan.c

library/glfw/src/CMakeFiles/glfw.dir/vulkan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/vulkan.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/vulkan.c > CMakeFiles/glfw.dir/vulkan.c.i

library/glfw/src/CMakeFiles/glfw.dir/vulkan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/vulkan.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/vulkan.c -o CMakeFiles/glfw.dir/vulkan.c.s

library/glfw/src/CMakeFiles/glfw.dir/window.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/window.c.o: ../library/glfw/src/window.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object library/glfw/src/CMakeFiles/glfw.dir/window.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles/glfw.dir/window.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/window.c

library/glfw/src/CMakeFiles/glfw.dir/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/window.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/window.c > CMakeFiles/glfw.dir/window.c.i

library/glfw/src/CMakeFiles/glfw.dir/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/window.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/window.c -o CMakeFiles/glfw.dir/window.c.s

library/glfw/src/CMakeFiles/glfw.dir/x11_init.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/x11_init.c.o: ../library/glfw/src/x11_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object library/glfw/src/CMakeFiles/glfw.dir/x11_init.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/x11_init.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/x11_init.c

library/glfw/src/CMakeFiles/glfw.dir/x11_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/x11_init.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/x11_init.c > CMakeFiles/glfw.dir/x11_init.c.i

library/glfw/src/CMakeFiles/glfw.dir/x11_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/x11_init.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/x11_init.c -o CMakeFiles/glfw.dir/x11_init.c.s

library/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.o: ../library/glfw/src/x11_monitor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object library/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/x11_monitor.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/x11_monitor.c

library/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/x11_monitor.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/x11_monitor.c > CMakeFiles/glfw.dir/x11_monitor.c.i

library/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/x11_monitor.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/x11_monitor.c -o CMakeFiles/glfw.dir/x11_monitor.c.s

library/glfw/src/CMakeFiles/glfw.dir/x11_window.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/x11_window.c.o: ../library/glfw/src/x11_window.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object library/glfw/src/CMakeFiles/glfw.dir/x11_window.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/x11_window.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/x11_window.c

library/glfw/src/CMakeFiles/glfw.dir/x11_window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/x11_window.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/x11_window.c > CMakeFiles/glfw.dir/x11_window.c.i

library/glfw/src/CMakeFiles/glfw.dir/x11_window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/x11_window.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/x11_window.c -o CMakeFiles/glfw.dir/x11_window.c.s

library/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.o: ../library/glfw/src/xkb_unicode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object library/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/xkb_unicode.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/xkb_unicode.c

library/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/xkb_unicode.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/xkb_unicode.c > CMakeFiles/glfw.dir/xkb_unicode.c.i

library/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/xkb_unicode.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/xkb_unicode.c -o CMakeFiles/glfw.dir/xkb_unicode.c.s

library/glfw/src/CMakeFiles/glfw.dir/posix_time.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/posix_time.c.o: ../library/glfw/src/posix_time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object library/glfw/src/CMakeFiles/glfw.dir/posix_time.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/posix_time.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/posix_time.c

library/glfw/src/CMakeFiles/glfw.dir/posix_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/posix_time.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/posix_time.c > CMakeFiles/glfw.dir/posix_time.c.i

library/glfw/src/CMakeFiles/glfw.dir/posix_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/posix_time.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/posix_time.c -o CMakeFiles/glfw.dir/posix_time.c.s

library/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o: ../library/glfw/src/posix_thread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object library/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/posix_thread.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/posix_thread.c

library/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/posix_thread.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/posix_thread.c > CMakeFiles/glfw.dir/posix_thread.c.i

library/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/posix_thread.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/posix_thread.c -o CMakeFiles/glfw.dir/posix_thread.c.s

library/glfw/src/CMakeFiles/glfw.dir/glx_context.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/glx_context.c.o: ../library/glfw/src/glx_context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object library/glfw/src/CMakeFiles/glfw.dir/glx_context.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/glx_context.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/glx_context.c

library/glfw/src/CMakeFiles/glfw.dir/glx_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/glx_context.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/glx_context.c > CMakeFiles/glfw.dir/glx_context.c.i

library/glfw/src/CMakeFiles/glfw.dir/glx_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/glx_context.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/glx_context.c -o CMakeFiles/glfw.dir/glx_context.c.s

library/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o: ../library/glfw/src/egl_context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object library/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/egl_context.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/egl_context.c

library/glfw/src/CMakeFiles/glfw.dir/egl_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/egl_context.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/egl_context.c > CMakeFiles/glfw.dir/egl_context.c.i

library/glfw/src/CMakeFiles/glfw.dir/egl_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/egl_context.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/egl_context.c -o CMakeFiles/glfw.dir/egl_context.c.s

library/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o: ../library/glfw/src/osmesa_context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object library/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/osmesa_context.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/osmesa_context.c

library/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/osmesa_context.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/osmesa_context.c > CMakeFiles/glfw.dir/osmesa_context.c.i

library/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/osmesa_context.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/osmesa_context.c -o CMakeFiles/glfw.dir/osmesa_context.c.s

library/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.o: library/glfw/src/CMakeFiles/glfw.dir/flags.make
library/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.o: ../library/glfw/src/linux_joystick.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object library/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.o"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/linux_joystick.c.o   -c /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/linux_joystick.c

library/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/linux_joystick.c.i"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/linux_joystick.c > CMakeFiles/glfw.dir/linux_joystick.c.i

library/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/linux_joystick.c.s"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src/linux_joystick.c -o CMakeFiles/glfw.dir/linux_joystick.c.s

# Object files for target glfw
glfw_OBJECTS = \
"CMakeFiles/glfw.dir/context.c.o" \
"CMakeFiles/glfw.dir/init.c.o" \
"CMakeFiles/glfw.dir/input.c.o" \
"CMakeFiles/glfw.dir/monitor.c.o" \
"CMakeFiles/glfw.dir/vulkan.c.o" \
"CMakeFiles/glfw.dir/window.c.o" \
"CMakeFiles/glfw.dir/x11_init.c.o" \
"CMakeFiles/glfw.dir/x11_monitor.c.o" \
"CMakeFiles/glfw.dir/x11_window.c.o" \
"CMakeFiles/glfw.dir/xkb_unicode.c.o" \
"CMakeFiles/glfw.dir/posix_time.c.o" \
"CMakeFiles/glfw.dir/posix_thread.c.o" \
"CMakeFiles/glfw.dir/glx_context.c.o" \
"CMakeFiles/glfw.dir/egl_context.c.o" \
"CMakeFiles/glfw.dir/osmesa_context.c.o" \
"CMakeFiles/glfw.dir/linux_joystick.c.o"

# External object files for target glfw
glfw_EXTERNAL_OBJECTS =

library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/context.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/init.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/input.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/monitor.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/window.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/x11_init.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/x11_window.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/posix_time.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/glx_context.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.o
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/build.make
library/glfw/src/libglfw3.a: library/glfw/src/CMakeFiles/glfw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking C static library libglfw3.a"
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean_target.cmake
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glfw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
library/glfw/src/CMakeFiles/glfw.dir/build: library/glfw/src/libglfw3.a

.PHONY : library/glfw/src/CMakeFiles/glfw.dir/build

library/glfw/src/CMakeFiles/glfw.dir/clean:
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean.cmake
.PHONY : library/glfw/src/CMakeFiles/glfw.dir/clean

library/glfw/src/CMakeFiles/glfw.dir/depend:
	cd /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/library/glfw/src /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src /home/rambodrahmani/DevOps/OpenGL-Superbible-7ED/cmake-build-debug/library/glfw/src/CMakeFiles/glfw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : library/glfw/src/CMakeFiles/glfw.dir/depend

