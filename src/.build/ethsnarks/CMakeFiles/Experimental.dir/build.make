# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/ZKLBS/src/grpc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/ZKLBS/src/grpc/build

# Utility rule file for Experimental.

# Include any custom commands dependencies for this target.
include /root/ZKLBS/src/.build/ethsnarks/CMakeFiles/Experimental.dir/compiler_depend.make

# Include the progress variables for this target.
include /root/ZKLBS/src/.build/ethsnarks/CMakeFiles/Experimental.dir/progress.make

/root/ZKLBS/src/.build/ethsnarks/CMakeFiles/Experimental:
	cd /root/ZKLBS/src/.build/ethsnarks && /usr/local/bin/ctest -D Experimental

Experimental: /root/ZKLBS/src/.build/ethsnarks/CMakeFiles/Experimental
Experimental: /root/ZKLBS/src/.build/ethsnarks/CMakeFiles/Experimental.dir/build.make
.PHONY : Experimental

# Rule to build all files generated by this target.
/root/ZKLBS/src/.build/ethsnarks/CMakeFiles/Experimental.dir/build: Experimental
.PHONY : /root/ZKLBS/src/.build/ethsnarks/CMakeFiles/Experimental.dir/build

/root/ZKLBS/src/.build/ethsnarks/CMakeFiles/Experimental.dir/clean:
	cd /root/ZKLBS/src/.build/ethsnarks && $(CMAKE_COMMAND) -P CMakeFiles/Experimental.dir/cmake_clean.cmake
.PHONY : /root/ZKLBS/src/.build/ethsnarks/CMakeFiles/Experimental.dir/clean

/root/ZKLBS/src/.build/ethsnarks/CMakeFiles/Experimental.dir/depend:
	cd /root/ZKLBS/src/grpc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/ZKLBS/src/grpc /root/ZKLBS/ethsnarks /root/ZKLBS/src/grpc/build /root/ZKLBS/src/.build/ethsnarks /root/ZKLBS/src/.build/ethsnarks/CMakeFiles/Experimental.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : /root/ZKLBS/src/.build/ethsnarks/CMakeFiles/Experimental.dir/depend

