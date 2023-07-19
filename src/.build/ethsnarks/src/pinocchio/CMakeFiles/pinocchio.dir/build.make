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

# Include any dependencies generated for this target.
include /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/compiler_depend.make

# Include the progress variables for this target.
include /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/progress.make

# Include the compile flags for this target's objects.
include /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/flags.make

/root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/flags.make
/root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.o: /root/ZKLBS/ethsnarks/src/pinocchio/main.cpp
/root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.o"
	cd /root/ZKLBS/src/.build/ethsnarks/src/pinocchio && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.o -MF CMakeFiles/pinocchio.dir/main.cpp.o.d -o CMakeFiles/pinocchio.dir/main.cpp.o -c /root/ZKLBS/ethsnarks/src/pinocchio/main.cpp

/root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pinocchio.dir/main.cpp.i"
	cd /root/ZKLBS/src/.build/ethsnarks/src/pinocchio && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/ethsnarks/src/pinocchio/main.cpp > CMakeFiles/pinocchio.dir/main.cpp.i

/root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pinocchio.dir/main.cpp.s"
	cd /root/ZKLBS/src/.build/ethsnarks/src/pinocchio && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/ethsnarks/src/pinocchio/main.cpp -o CMakeFiles/pinocchio.dir/main.cpp.s

# Object files for target pinocchio
pinocchio_OBJECTS = \
"CMakeFiles/pinocchio.dir/main.cpp.o"

# External object files for target pinocchio
pinocchio_EXTERNAL_OBJECTS =

/root/ZKLBS/src/.build/ethsnarks/src/pinocchio/pinocchio: /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.o
/root/ZKLBS/src/.build/ethsnarks/src/pinocchio/pinocchio: /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/build.make
/root/ZKLBS/src/.build/ethsnarks/src/pinocchio/pinocchio: /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/libethsnarks_pinocchio.a
/root/ZKLBS/src/.build/ethsnarks/src/pinocchio/pinocchio: /root/ZKLBS/src/.build/ethsnarks/src/libethsnarks_common.a
/root/ZKLBS/src/.build/ethsnarks/src/pinocchio/pinocchio: /root/ZKLBS/src/.build/ethsnarks/libff.a
/root/ZKLBS/src/.build/ethsnarks/src/pinocchio/pinocchio: /usr/lib/x86_64-linux-gnu/libgmp.so
/root/ZKLBS/src/.build/ethsnarks/src/pinocchio/pinocchio: /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pinocchio"
	cd /root/ZKLBS/src/.build/ethsnarks/src/pinocchio && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pinocchio.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
/root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/build: /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/pinocchio
.PHONY : /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/build

/root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/clean:
	cd /root/ZKLBS/src/.build/ethsnarks/src/pinocchio && $(CMAKE_COMMAND) -P CMakeFiles/pinocchio.dir/cmake_clean.cmake
.PHONY : /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/clean

/root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/depend:
	cd /root/ZKLBS/src/grpc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/ZKLBS/src/grpc /root/ZKLBS/ethsnarks/src/pinocchio /root/ZKLBS/src/grpc/build /root/ZKLBS/src/.build/ethsnarks/src/pinocchio /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : /root/ZKLBS/src/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/depend
