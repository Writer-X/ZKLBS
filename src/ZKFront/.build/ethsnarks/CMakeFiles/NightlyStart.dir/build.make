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
CMAKE_SOURCE_DIR = /home/xt/test/ZKLBS/src/ZKFront

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xt/test/ZKLBS/src/ZKFront/build

# Utility rule file for NightlyStart.

# Include any custom commands dependencies for this target.
include /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/CMakeFiles/NightlyStart.dir/compiler_depend.make

# Include the progress variables for this target.
include /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/CMakeFiles/NightlyStart.dir/progress.make

/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/CMakeFiles/NightlyStart:
	cd /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks && /usr/bin/ctest -D NightlyStart

NightlyStart: /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/CMakeFiles/NightlyStart
NightlyStart: /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/CMakeFiles/NightlyStart.dir/build.make
.PHONY : NightlyStart

# Rule to build all files generated by this target.
/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/CMakeFiles/NightlyStart.dir/build: NightlyStart
.PHONY : /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/CMakeFiles/NightlyStart.dir/build

/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/CMakeFiles/NightlyStart.dir/clean:
	cd /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks && $(CMAKE_COMMAND) -P CMakeFiles/NightlyStart.dir/cmake_clean.cmake
.PHONY : /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/CMakeFiles/NightlyStart.dir/clean

/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/CMakeFiles/NightlyStart.dir/depend:
	cd /home/xt/test/ZKLBS/src/ZKFront/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xt/test/ZKLBS/src/ZKFront /home/xt/test/ZKLBS/ethsnarks /home/xt/test/ZKLBS/src/ZKFront/build /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/CMakeFiles/NightlyStart.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/CMakeFiles/NightlyStart.dir/depend

