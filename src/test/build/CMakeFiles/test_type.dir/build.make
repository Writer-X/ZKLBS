# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/xt/test/ZKLBS/src/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xt/test/ZKLBS/src/test/build

# Include any dependencies generated for this target.
include CMakeFiles/test_type.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_type.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_type.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_type.dir/flags.make

CMakeFiles/test_type.dir/test_type.cpp.o: CMakeFiles/test_type.dir/flags.make
CMakeFiles/test_type.dir/test_type.cpp.o: ../test_type.cpp
CMakeFiles/test_type.dir/test_type.cpp.o: CMakeFiles/test_type.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xt/test/ZKLBS/src/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_type.dir/test_type.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_type.dir/test_type.cpp.o -MF CMakeFiles/test_type.dir/test_type.cpp.o.d -o CMakeFiles/test_type.dir/test_type.cpp.o -c /home/xt/test/ZKLBS/src/test/test_type.cpp

CMakeFiles/test_type.dir/test_type.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_type.dir/test_type.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xt/test/ZKLBS/src/test/test_type.cpp > CMakeFiles/test_type.dir/test_type.cpp.i

CMakeFiles/test_type.dir/test_type.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_type.dir/test_type.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xt/test/ZKLBS/src/test/test_type.cpp -o CMakeFiles/test_type.dir/test_type.cpp.s

# Object files for target test_type
test_type_OBJECTS = \
"CMakeFiles/test_type.dir/test_type.cpp.o"

# External object files for target test_type
test_type_EXTERNAL_OBJECTS =

test_type: CMakeFiles/test_type.dir/test_type.cpp.o
test_type: CMakeFiles/test_type.dir/build.make
test_type: CMakeFiles/test_type.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xt/test/ZKLBS/src/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_type"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_type.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_type.dir/build: test_type
.PHONY : CMakeFiles/test_type.dir/build

CMakeFiles/test_type.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_type.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_type.dir/clean

CMakeFiles/test_type.dir/depend:
	cd /home/xt/test/ZKLBS/src/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xt/test/ZKLBS/src/test /home/xt/test/ZKLBS/src/test /home/xt/test/ZKLBS/src/test/build /home/xt/test/ZKLBS/src/test/build /home/xt/test/ZKLBS/src/test/build/CMakeFiles/test_type.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_type.dir/depend
