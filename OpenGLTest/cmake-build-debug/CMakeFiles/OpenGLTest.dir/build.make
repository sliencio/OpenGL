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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/sliencio/CLionProjects/OpenGL/OpenGLTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/sliencio/CLionProjects/OpenGL/OpenGLTest/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/OpenGLTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenGLTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenGLTest.dir/flags.make

CMakeFiles/OpenGLTest.dir/glad.c.o: CMakeFiles/OpenGLTest.dir/flags.make
CMakeFiles/OpenGLTest.dir/glad.c.o: ../glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sliencio/CLionProjects/OpenGL/OpenGLTest/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/OpenGLTest.dir/glad.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/OpenGLTest.dir/glad.c.o   -c /Users/sliencio/CLionProjects/OpenGL/OpenGLTest/glad.c

CMakeFiles/OpenGLTest.dir/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OpenGLTest.dir/glad.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/sliencio/CLionProjects/OpenGL/OpenGLTest/glad.c > CMakeFiles/OpenGLTest.dir/glad.c.i

CMakeFiles/OpenGLTest.dir/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OpenGLTest.dir/glad.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/sliencio/CLionProjects/OpenGL/OpenGLTest/glad.c -o CMakeFiles/OpenGLTest.dir/glad.c.s

CMakeFiles/OpenGLTest.dir/main.cpp.o: CMakeFiles/OpenGLTest.dir/flags.make
CMakeFiles/OpenGLTest.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sliencio/CLionProjects/OpenGL/OpenGLTest/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/OpenGLTest.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenGLTest.dir/main.cpp.o -c /Users/sliencio/CLionProjects/OpenGL/OpenGLTest/main.cpp

CMakeFiles/OpenGLTest.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenGLTest.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sliencio/CLionProjects/OpenGL/OpenGLTest/main.cpp > CMakeFiles/OpenGLTest.dir/main.cpp.i

CMakeFiles/OpenGLTest.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenGLTest.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sliencio/CLionProjects/OpenGL/OpenGLTest/main.cpp -o CMakeFiles/OpenGLTest.dir/main.cpp.s

# Object files for target OpenGLTest
OpenGLTest_OBJECTS = \
"CMakeFiles/OpenGLTest.dir/glad.c.o" \
"CMakeFiles/OpenGLTest.dir/main.cpp.o"

# External object files for target OpenGLTest
OpenGLTest_EXTERNAL_OBJECTS =

OpenGLTest: CMakeFiles/OpenGLTest.dir/glad.c.o
OpenGLTest: CMakeFiles/OpenGLTest.dir/main.cpp.o
OpenGLTest: CMakeFiles/OpenGLTest.dir/build.make
OpenGLTest: /usr/local/Cellar/glew/2.1.0/lib/libGLEW.2.1.dylib
OpenGLTest: /usr/local/Cellar/glfw/3.2.1/lib/libglfw.3.dylib
OpenGLTest: CMakeFiles/OpenGLTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/sliencio/CLionProjects/OpenGL/OpenGLTest/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable OpenGLTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenGLTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenGLTest.dir/build: OpenGLTest

.PHONY : CMakeFiles/OpenGLTest.dir/build

CMakeFiles/OpenGLTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OpenGLTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OpenGLTest.dir/clean

CMakeFiles/OpenGLTest.dir/depend:
	cd /Users/sliencio/CLionProjects/OpenGL/OpenGLTest/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sliencio/CLionProjects/OpenGL/OpenGLTest /Users/sliencio/CLionProjects/OpenGL/OpenGLTest /Users/sliencio/CLionProjects/OpenGL/OpenGLTest/cmake-build-debug /Users/sliencio/CLionProjects/OpenGL/OpenGLTest/cmake-build-debug /Users/sliencio/CLionProjects/OpenGL/OpenGLTest/cmake-build-debug/CMakeFiles/OpenGLTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OpenGLTest.dir/depend

