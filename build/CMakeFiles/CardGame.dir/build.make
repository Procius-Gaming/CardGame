# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:/Playground/CardGame

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:/Playground/CardGame/build

# Include any dependencies generated for this target.
include CMakeFiles/CardGame.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/CardGame.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/CardGame.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CardGame.dir/flags.make

CMakeFiles/CardGame.dir/src/Application.cpp.obj: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/Application.cpp.obj: CMakeFiles/CardGame.dir/includes_CXX.rsp
CMakeFiles/CardGame.dir/src/Application.cpp.obj: D:/Playground/CardGame/src/Application.cpp
CMakeFiles/CardGame.dir/src/Application.cpp.obj: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CardGame.dir/src/Application.cpp.obj"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/Application.cpp.obj -MF CMakeFiles/CardGame.dir/src/Application.cpp.obj.d -o CMakeFiles/CardGame.dir/src/Application.cpp.obj -c D:/Playground/CardGame/src/Application.cpp

CMakeFiles/CardGame.dir/src/Application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/Application.cpp.i"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:/Playground/CardGame/src/Application.cpp > CMakeFiles/CardGame.dir/src/Application.cpp.i

CMakeFiles/CardGame.dir/src/Application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/Application.cpp.s"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:/Playground/CardGame/src/Application.cpp -o CMakeFiles/CardGame.dir/src/Application.cpp.s

CMakeFiles/CardGame.dir/src/Deck.cpp.obj: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/Deck.cpp.obj: CMakeFiles/CardGame.dir/includes_CXX.rsp
CMakeFiles/CardGame.dir/src/Deck.cpp.obj: D:/Playground/CardGame/src/Deck.cpp
CMakeFiles/CardGame.dir/src/Deck.cpp.obj: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CardGame.dir/src/Deck.cpp.obj"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/Deck.cpp.obj -MF CMakeFiles/CardGame.dir/src/Deck.cpp.obj.d -o CMakeFiles/CardGame.dir/src/Deck.cpp.obj -c D:/Playground/CardGame/src/Deck.cpp

CMakeFiles/CardGame.dir/src/Deck.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/Deck.cpp.i"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:/Playground/CardGame/src/Deck.cpp > CMakeFiles/CardGame.dir/src/Deck.cpp.i

CMakeFiles/CardGame.dir/src/Deck.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/Deck.cpp.s"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:/Playground/CardGame/src/Deck.cpp -o CMakeFiles/CardGame.dir/src/Deck.cpp.s

CMakeFiles/CardGame.dir/src/Entity.cpp.obj: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/Entity.cpp.obj: CMakeFiles/CardGame.dir/includes_CXX.rsp
CMakeFiles/CardGame.dir/src/Entity.cpp.obj: D:/Playground/CardGame/src/Entity.cpp
CMakeFiles/CardGame.dir/src/Entity.cpp.obj: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CardGame.dir/src/Entity.cpp.obj"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/Entity.cpp.obj -MF CMakeFiles/CardGame.dir/src/Entity.cpp.obj.d -o CMakeFiles/CardGame.dir/src/Entity.cpp.obj -c D:/Playground/CardGame/src/Entity.cpp

CMakeFiles/CardGame.dir/src/Entity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/Entity.cpp.i"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:/Playground/CardGame/src/Entity.cpp > CMakeFiles/CardGame.dir/src/Entity.cpp.i

CMakeFiles/CardGame.dir/src/Entity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/Entity.cpp.s"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:/Playground/CardGame/src/Entity.cpp -o CMakeFiles/CardGame.dir/src/Entity.cpp.s

CMakeFiles/CardGame.dir/src/Math.cpp.obj: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/Math.cpp.obj: CMakeFiles/CardGame.dir/includes_CXX.rsp
CMakeFiles/CardGame.dir/src/Math.cpp.obj: D:/Playground/CardGame/src/Math.cpp
CMakeFiles/CardGame.dir/src/Math.cpp.obj: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/CardGame.dir/src/Math.cpp.obj"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/Math.cpp.obj -MF CMakeFiles/CardGame.dir/src/Math.cpp.obj.d -o CMakeFiles/CardGame.dir/src/Math.cpp.obj -c D:/Playground/CardGame/src/Math.cpp

CMakeFiles/CardGame.dir/src/Math.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/Math.cpp.i"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:/Playground/CardGame/src/Math.cpp > CMakeFiles/CardGame.dir/src/Math.cpp.i

CMakeFiles/CardGame.dir/src/Math.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/Math.cpp.s"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:/Playground/CardGame/src/Math.cpp -o CMakeFiles/CardGame.dir/src/Math.cpp.s

CMakeFiles/CardGame.dir/src/Renderer.cpp.obj: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/Renderer.cpp.obj: CMakeFiles/CardGame.dir/includes_CXX.rsp
CMakeFiles/CardGame.dir/src/Renderer.cpp.obj: D:/Playground/CardGame/src/Renderer.cpp
CMakeFiles/CardGame.dir/src/Renderer.cpp.obj: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/CardGame.dir/src/Renderer.cpp.obj"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/Renderer.cpp.obj -MF CMakeFiles/CardGame.dir/src/Renderer.cpp.obj.d -o CMakeFiles/CardGame.dir/src/Renderer.cpp.obj -c D:/Playground/CardGame/src/Renderer.cpp

CMakeFiles/CardGame.dir/src/Renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/Renderer.cpp.i"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:/Playground/CardGame/src/Renderer.cpp > CMakeFiles/CardGame.dir/src/Renderer.cpp.i

CMakeFiles/CardGame.dir/src/Renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/Renderer.cpp.s"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:/Playground/CardGame/src/Renderer.cpp -o CMakeFiles/CardGame.dir/src/Renderer.cpp.s

CMakeFiles/CardGame.dir/src/Shader.cpp.obj: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/Shader.cpp.obj: CMakeFiles/CardGame.dir/includes_CXX.rsp
CMakeFiles/CardGame.dir/src/Shader.cpp.obj: D:/Playground/CardGame/src/Shader.cpp
CMakeFiles/CardGame.dir/src/Shader.cpp.obj: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/CardGame.dir/src/Shader.cpp.obj"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/Shader.cpp.obj -MF CMakeFiles/CardGame.dir/src/Shader.cpp.obj.d -o CMakeFiles/CardGame.dir/src/Shader.cpp.obj -c D:/Playground/CardGame/src/Shader.cpp

CMakeFiles/CardGame.dir/src/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/Shader.cpp.i"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:/Playground/CardGame/src/Shader.cpp > CMakeFiles/CardGame.dir/src/Shader.cpp.i

CMakeFiles/CardGame.dir/src/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/Shader.cpp.s"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:/Playground/CardGame/src/Shader.cpp -o CMakeFiles/CardGame.dir/src/Shader.cpp.s

CMakeFiles/CardGame.dir/src/Sprite.cpp.obj: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/Sprite.cpp.obj: CMakeFiles/CardGame.dir/includes_CXX.rsp
CMakeFiles/CardGame.dir/src/Sprite.cpp.obj: D:/Playground/CardGame/src/Sprite.cpp
CMakeFiles/CardGame.dir/src/Sprite.cpp.obj: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/CardGame.dir/src/Sprite.cpp.obj"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/Sprite.cpp.obj -MF CMakeFiles/CardGame.dir/src/Sprite.cpp.obj.d -o CMakeFiles/CardGame.dir/src/Sprite.cpp.obj -c D:/Playground/CardGame/src/Sprite.cpp

CMakeFiles/CardGame.dir/src/Sprite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/Sprite.cpp.i"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:/Playground/CardGame/src/Sprite.cpp > CMakeFiles/CardGame.dir/src/Sprite.cpp.i

CMakeFiles/CardGame.dir/src/Sprite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/Sprite.cpp.s"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:/Playground/CardGame/src/Sprite.cpp -o CMakeFiles/CardGame.dir/src/Sprite.cpp.s

CMakeFiles/CardGame.dir/src/Texture.cpp.obj: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/Texture.cpp.obj: CMakeFiles/CardGame.dir/includes_CXX.rsp
CMakeFiles/CardGame.dir/src/Texture.cpp.obj: D:/Playground/CardGame/src/Texture.cpp
CMakeFiles/CardGame.dir/src/Texture.cpp.obj: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/CardGame.dir/src/Texture.cpp.obj"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/Texture.cpp.obj -MF CMakeFiles/CardGame.dir/src/Texture.cpp.obj.d -o CMakeFiles/CardGame.dir/src/Texture.cpp.obj -c D:/Playground/CardGame/src/Texture.cpp

CMakeFiles/CardGame.dir/src/Texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/Texture.cpp.i"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:/Playground/CardGame/src/Texture.cpp > CMakeFiles/CardGame.dir/src/Texture.cpp.i

CMakeFiles/CardGame.dir/src/Texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/Texture.cpp.s"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:/Playground/CardGame/src/Texture.cpp -o CMakeFiles/CardGame.dir/src/Texture.cpp.s

CMakeFiles/CardGame.dir/src/VertexArray.cpp.obj: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/VertexArray.cpp.obj: CMakeFiles/CardGame.dir/includes_CXX.rsp
CMakeFiles/CardGame.dir/src/VertexArray.cpp.obj: D:/Playground/CardGame/src/VertexArray.cpp
CMakeFiles/CardGame.dir/src/VertexArray.cpp.obj: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/CardGame.dir/src/VertexArray.cpp.obj"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/VertexArray.cpp.obj -MF CMakeFiles/CardGame.dir/src/VertexArray.cpp.obj.d -o CMakeFiles/CardGame.dir/src/VertexArray.cpp.obj -c D:/Playground/CardGame/src/VertexArray.cpp

CMakeFiles/CardGame.dir/src/VertexArray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/VertexArray.cpp.i"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:/Playground/CardGame/src/VertexArray.cpp > CMakeFiles/CardGame.dir/src/VertexArray.cpp.i

CMakeFiles/CardGame.dir/src/VertexArray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/VertexArray.cpp.s"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:/Playground/CardGame/src/VertexArray.cpp -o CMakeFiles/CardGame.dir/src/VertexArray.cpp.s

CMakeFiles/CardGame.dir/src/Window.cpp.obj: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/Window.cpp.obj: CMakeFiles/CardGame.dir/includes_CXX.rsp
CMakeFiles/CardGame.dir/src/Window.cpp.obj: D:/Playground/CardGame/src/Window.cpp
CMakeFiles/CardGame.dir/src/Window.cpp.obj: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/CardGame.dir/src/Window.cpp.obj"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/Window.cpp.obj -MF CMakeFiles/CardGame.dir/src/Window.cpp.obj.d -o CMakeFiles/CardGame.dir/src/Window.cpp.obj -c D:/Playground/CardGame/src/Window.cpp

CMakeFiles/CardGame.dir/src/Window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/Window.cpp.i"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:/Playground/CardGame/src/Window.cpp > CMakeFiles/CardGame.dir/src/Window.cpp.i

CMakeFiles/CardGame.dir/src/Window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/Window.cpp.s"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:/Playground/CardGame/src/Window.cpp -o CMakeFiles/CardGame.dir/src/Window.cpp.s

CMakeFiles/CardGame.dir/src/main.cpp.obj: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/main.cpp.obj: CMakeFiles/CardGame.dir/includes_CXX.rsp
CMakeFiles/CardGame.dir/src/main.cpp.obj: D:/Playground/CardGame/src/main.cpp
CMakeFiles/CardGame.dir/src/main.cpp.obj: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/CardGame.dir/src/main.cpp.obj"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/main.cpp.obj -MF CMakeFiles/CardGame.dir/src/main.cpp.obj.d -o CMakeFiles/CardGame.dir/src/main.cpp.obj -c D:/Playground/CardGame/src/main.cpp

CMakeFiles/CardGame.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/main.cpp.i"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:/Playground/CardGame/src/main.cpp > CMakeFiles/CardGame.dir/src/main.cpp.i

CMakeFiles/CardGame.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/main.cpp.s"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:/Playground/CardGame/src/main.cpp -o CMakeFiles/CardGame.dir/src/main.cpp.s

CMakeFiles/CardGame.dir/src/stb_image.cpp.obj: CMakeFiles/CardGame.dir/flags.make
CMakeFiles/CardGame.dir/src/stb_image.cpp.obj: CMakeFiles/CardGame.dir/includes_CXX.rsp
CMakeFiles/CardGame.dir/src/stb_image.cpp.obj: D:/Playground/CardGame/src/stb_image.cpp
CMakeFiles/CardGame.dir/src/stb_image.cpp.obj: CMakeFiles/CardGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/CardGame.dir/src/stb_image.cpp.obj"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CardGame.dir/src/stb_image.cpp.obj -MF CMakeFiles/CardGame.dir/src/stb_image.cpp.obj.d -o CMakeFiles/CardGame.dir/src/stb_image.cpp.obj -c D:/Playground/CardGame/src/stb_image.cpp

CMakeFiles/CardGame.dir/src/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CardGame.dir/src/stb_image.cpp.i"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:/Playground/CardGame/src/stb_image.cpp > CMakeFiles/CardGame.dir/src/stb_image.cpp.i

CMakeFiles/CardGame.dir/src/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CardGame.dir/src/stb_image.cpp.s"
	C:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:/Playground/CardGame/src/stb_image.cpp -o CMakeFiles/CardGame.dir/src/stb_image.cpp.s

# Object files for target CardGame
CardGame_OBJECTS = \
"CMakeFiles/CardGame.dir/src/Application.cpp.obj" \
"CMakeFiles/CardGame.dir/src/Deck.cpp.obj" \
"CMakeFiles/CardGame.dir/src/Entity.cpp.obj" \
"CMakeFiles/CardGame.dir/src/Math.cpp.obj" \
"CMakeFiles/CardGame.dir/src/Renderer.cpp.obj" \
"CMakeFiles/CardGame.dir/src/Shader.cpp.obj" \
"CMakeFiles/CardGame.dir/src/Sprite.cpp.obj" \
"CMakeFiles/CardGame.dir/src/Texture.cpp.obj" \
"CMakeFiles/CardGame.dir/src/VertexArray.cpp.obj" \
"CMakeFiles/CardGame.dir/src/Window.cpp.obj" \
"CMakeFiles/CardGame.dir/src/main.cpp.obj" \
"CMakeFiles/CardGame.dir/src/stb_image.cpp.obj"

# External object files for target CardGame
CardGame_EXTERNAL_OBJECTS =

CardGame.exe: CMakeFiles/CardGame.dir/src/Application.cpp.obj
CardGame.exe: CMakeFiles/CardGame.dir/src/Deck.cpp.obj
CardGame.exe: CMakeFiles/CardGame.dir/src/Entity.cpp.obj
CardGame.exe: CMakeFiles/CardGame.dir/src/Math.cpp.obj
CardGame.exe: CMakeFiles/CardGame.dir/src/Renderer.cpp.obj
CardGame.exe: CMakeFiles/CardGame.dir/src/Shader.cpp.obj
CardGame.exe: CMakeFiles/CardGame.dir/src/Sprite.cpp.obj
CardGame.exe: CMakeFiles/CardGame.dir/src/Texture.cpp.obj
CardGame.exe: CMakeFiles/CardGame.dir/src/VertexArray.cpp.obj
CardGame.exe: CMakeFiles/CardGame.dir/src/Window.cpp.obj
CardGame.exe: CMakeFiles/CardGame.dir/src/main.cpp.obj
CardGame.exe: CMakeFiles/CardGame.dir/src/stb_image.cpp.obj
CardGame.exe: CMakeFiles/CardGame.dir/build.make
CardGame.exe: GLFW/src/libglfw3.a
CardGame.exe: GLAD/libglad.a
CardGame.exe: CMakeFiles/CardGame.dir/linkLibs.rsp
CardGame.exe: CMakeFiles/CardGame.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=D:/Playground/CardGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable CardGame.exe"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/CardGame.dir/objects.a
	C:/msys64/mingw64/bin/ar.exe qc CMakeFiles/CardGame.dir/objects.a @CMakeFiles/CardGame.dir/objects1.rsp
	C:/msys64/mingw64/bin/c++.exe -Wl,--whole-archive CMakeFiles/CardGame.dir/objects.a -Wl,--no-whole-archive -o CardGame.exe -Wl,--out-implib,libCardGame.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/CardGame.dir/linkLibs.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "Copying Shaders to Binary directory"
	"C:/Program Files/CMake/bin/cmake.exe" -E copy_directory D:/Playground/CardGame/Shader D:/Playground/CardGame/build/Shader
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "Copying Assets to Binary directory"
	"C:/Program Files/CMake/bin/cmake.exe" -E copy_directory D:/Playground/CardGame/Assets D:/Playground/CardGame/build/Assets

# Rule to build all files generated by this target.
CMakeFiles/CardGame.dir/build: CardGame.exe
.PHONY : CMakeFiles/CardGame.dir/build

CMakeFiles/CardGame.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CardGame.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CardGame.dir/clean

CMakeFiles/CardGame.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" D:/Playground/CardGame D:/Playground/CardGame D:/Playground/CardGame/build D:/Playground/CardGame/build D:/Playground/CardGame/build/CMakeFiles/CardGame.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/CardGame.dir/depend

