# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/Nesmy/Playground/CardGame

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/Nesmy/Playground/CardGame/build

# Include any dependencies generated for this target.
include CMakeFiles/CardGame.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/CardGame.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/CardGame.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CardGame.dir/flags.make

CMakeFiles/CardGame.dir/src/Application.cpp.o: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/Application.cpp.o: /home/Nesmy/Playground/CardGame/src/Application.cpp
CMakeFiles/CardGame.dir/src/Application.cpp.o: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Nesmy/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CardGame.dir/src/Application.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/Application.cpp.o -MF CMakeFiles/CardGame.dir/src/Application.cpp.o.d -o CMakeFiles/CardGame.dir/src/Application.cpp.o -c /home/Nesmy/Playground/CardGame/src/Application.cpp

CMakeFiles/CardGame.dir/src/Application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/Application.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/Nesmy/Playground/CardGame/src/Application.cpp > CMakeFiles/CardGame.dir/src/Application.cpp.i

CMakeFiles/CardGame.dir/src/Application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/Application.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/Nesmy/Playground/CardGame/src/Application.cpp -o CMakeFiles/CardGame.dir/src/Application.cpp.s

CMakeFiles/CardGame.dir/src/Math.cpp.o: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/Math.cpp.o: /home/Nesmy/Playground/CardGame/src/Math.cpp
CMakeFiles/CardGame.dir/src/Math.cpp.o: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Nesmy/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CardGame.dir/src/Math.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/Math.cpp.o -MF CMakeFiles/CardGame.dir/src/Math.cpp.o.d -o CMakeFiles/CardGame.dir/src/Math.cpp.o -c /home/Nesmy/Playground/CardGame/src/Math.cpp

CMakeFiles/CardGame.dir/src/Math.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/Math.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/Nesmy/Playground/CardGame/src/Math.cpp > CMakeFiles/CardGame.dir/src/Math.cpp.i

CMakeFiles/CardGame.dir/src/Math.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/Math.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/Nesmy/Playground/CardGame/src/Math.cpp -o CMakeFiles/CardGame.dir/src/Math.cpp.s

CMakeFiles/CardGame.dir/src/Window.cpp.o: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/Window.cpp.o: /home/Nesmy/Playground/CardGame/src/Window.cpp
CMakeFiles/CardGame.dir/src/Window.cpp.o: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Nesmy/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CardGame.dir/src/Window.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/Window.cpp.o -MF CMakeFiles/CardGame.dir/src/Window.cpp.o.d -o CMakeFiles/CardGame.dir/src/Window.cpp.o -c /home/Nesmy/Playground/CardGame/src/Window.cpp

CMakeFiles/CardGame.dir/src/Window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/Window.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/Nesmy/Playground/CardGame/src/Window.cpp > CMakeFiles/CardGame.dir/src/Window.cpp.i

CMakeFiles/CardGame.dir/src/Window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/Window.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/Nesmy/Playground/CardGame/src/Window.cpp -o CMakeFiles/CardGame.dir/src/Window.cpp.s

CMakeFiles/CardGame.dir/src/main.cpp.o: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/main.cpp.o: /home/Nesmy/Playground/CardGame/src/main.cpp
CMakeFiles/CardGame.dir/src/main.cpp.o: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Nesmy/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/CardGame.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/main.cpp.o -MF CMakeFiles/CardGame.dir/src/main.cpp.o.d -o CMakeFiles/CardGame.dir/src/main.cpp.o -c /home/Nesmy/Playground/CardGame/src/main.cpp

CMakeFiles/CardGame.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/Nesmy/Playground/CardGame/src/main.cpp > CMakeFiles/CardGame.dir/src/main.cpp.i

CMakeFiles/CardGame.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/Nesmy/Playground/CardGame/src/main.cpp -o CMakeFiles/CardGame.dir/src/main.cpp.s

CMakeFiles/CardGame.dir/src/stb_image.cpp.o: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/stb_image.cpp.o: /home/Nesmy/Playground/CardGame/src/stb_image.cpp
CMakeFiles/CardGame.dir/src/stb_image.cpp.o: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Nesmy/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/CardGame.dir/src/stb_image.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/stb_image.cpp.o -MF CMakeFiles/CardGame.dir/src/stb_image.cpp.o.d -o CMakeFiles/CardGame.dir/src/stb_image.cpp.o -c /home/Nesmy/Playground/CardGame/src/stb_image.cpp

CMakeFiles/CardGame.dir/src/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/stb_image.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/Nesmy/Playground/CardGame/src/stb_image.cpp > CMakeFiles/CardGame.dir/src/stb_image.cpp.i

CMakeFiles/CardGame.dir/src/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/stb_image.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/Nesmy/Playground/CardGame/src/stb_image.cpp -o CMakeFiles/CardGame.dir/src/stb_image.cpp.s

# Object files for target CardGame
CardGame_OBJECTS = \
"CMakeFiles/CardGame.dir/src/Application.cpp.o" \
"CMakeFiles/CardGame.dir/src/Math.cpp.o" \
"CMakeFiles/CardGame.dir/src/Window.cpp.o" \
"CMakeFiles/CardGame.dir/src/main.cpp.o" \
"CMakeFiles/CardGame.dir/src/stb_image.cpp.o"

# External object files for target CardGame
CardGame_EXTERNAL_OBJECTS =

CardGame: CMakeFiles/CardGame.dir/src/Application.cpp.o
CardGame: CMakeFiles/CardGame.dir/src/Math.cpp.o
CardGame: CMakeFiles/CardGame.dir/src/Window.cpp.o
CardGame: CMakeFiles/CardGame.dir/src/main.cpp.o
CardGame: CMakeFiles/CardGame.dir/src/stb_image.cpp.o
CardGame: CMakeFiles/CardGame.dir/build.make
CardGame: GLFW/src/libglfw3.a
CardGame: GLAD/libglad.a
CardGame: /usr/lib/librt.a
CardGame: /usr/lib/libm.so
CardGame: CMakeFiles/CardGame.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/Nesmy/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable CardGame"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CardGame.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "Copying Shaders to Binary directory"
	/usr/bin/cmake -E copy_directory /home/Nesmy/Playground/CardGame/Shader /home/Nesmy/Playground/CardGame/build/Shader
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "Copying Assets to Binary directory"
	/usr/bin/cmake -E copy_directory /home/Nesmy/Playground/CardGame/Assets /home/Nesmy/Playground/CardGame/build/Assets

# Rule to build all files generated by this target.
CMakeFiles/CardGame.dir/build: CardGame
.PHONY : CMakeFiles/CardGame.dir/build

CMakeFiles/CardGame.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CardGame.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CardGame.dir/clean

CMakeFiles/CardGame.dir/depend:
	cd /home/Nesmy/Playground/CardGame/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/Nesmy/Playground/CardGame /home/Nesmy/Playground/CardGame /home/Nesmy/Playground/CardGame/build /home/Nesmy/Playground/CardGame/build /home/Nesmy/Playground/CardGame/build/CMakeFiles/CardGame.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/CardGame.dir/depend

