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
CMAKE_SOURCE_DIR = /root/ZKLBS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/ZKLBS/build

# Include any dependencies generated for this target.
include depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/compiler_depend.make

# Include the progress variables for this target.
include depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/progress.make

# Include the compile flags for this target's objects.
include depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/flags.make

depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/test_jubjub_point.cpp.o: depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/flags.make
depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/test_jubjub_point.cpp.o: ../depends/ethsnarks/src/test/jubjub/test_jubjub_point.cpp
depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/test_jubjub_point.cpp.o: depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/test_jubjub_point.cpp.o"
	cd /root/ZKLBS/build/depends/ethsnarks/src/test/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/test_jubjub_point.cpp.o -MF CMakeFiles/test_jubjub_point.dir/test_jubjub_point.cpp.o.d -o CMakeFiles/test_jubjub_point.dir/test_jubjub_point.cpp.o -c /root/ZKLBS/depends/ethsnarks/src/test/jubjub/test_jubjub_point.cpp

depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/test_jubjub_point.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_jubjub_point.dir/test_jubjub_point.cpp.i"
	cd /root/ZKLBS/build/depends/ethsnarks/src/test/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/depends/ethsnarks/src/test/jubjub/test_jubjub_point.cpp > CMakeFiles/test_jubjub_point.dir/test_jubjub_point.cpp.i

depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/test_jubjub_point.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_jubjub_point.dir/test_jubjub_point.cpp.s"
	cd /root/ZKLBS/build/depends/ethsnarks/src/test/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/depends/ethsnarks/src/test/jubjub/test_jubjub_point.cpp -o CMakeFiles/test_jubjub_point.dir/test_jubjub_point.cpp.s

# Object files for target test_jubjub_point
test_jubjub_point_OBJECTS = \
"CMakeFiles/test_jubjub_point.dir/test_jubjub_point.cpp.o"

# External object files for target test_jubjub_point
test_jubjub_point_EXTERNAL_OBJECTS =

depends/ethsnarks/src/test/jubjub/test_jubjub_point: depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/test_jubjub_point.cpp.o
depends/ethsnarks/src/test/jubjub/test_jubjub_point: depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/build.make
depends/ethsnarks/src/test/jubjub/test_jubjub_point: depends/ethsnarks/src/jubjub/libethsnarks_jubjub.a
depends/ethsnarks/src/test/jubjub/test_jubjub_point: depends/ethsnarks/src/gadgets/libethsnarks_gadgets.a
depends/ethsnarks/src/test/jubjub/test_jubjub_point: depends/ethsnarks/src/libethsnarks_common.a
depends/ethsnarks/src/test/jubjub/test_jubjub_point: depends/ethsnarks/libff.a
depends/ethsnarks/src/test/jubjub/test_jubjub_point: /usr/lib/x86_64-linux-gnu/libgmp.so
depends/ethsnarks/src/test/jubjub/test_jubjub_point: depends/ethsnarks/depends/libSHA3IUF.a
depends/ethsnarks/src/test/jubjub/test_jubjub_point: depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_jubjub_point"
	cd /root/ZKLBS/build/depends/ethsnarks/src/test/jubjub && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_jubjub_point.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/build: depends/ethsnarks/src/test/jubjub/test_jubjub_point
.PHONY : depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/build

depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/clean:
	cd /root/ZKLBS/build/depends/ethsnarks/src/test/jubjub && $(CMAKE_COMMAND) -P CMakeFiles/test_jubjub_point.dir/cmake_clean.cmake
.PHONY : depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/clean

depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/depend:
	cd /root/ZKLBS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/ZKLBS /root/ZKLBS/depends/ethsnarks/src/test/jubjub /root/ZKLBS/build /root/ZKLBS/build/depends/ethsnarks/src/test/jubjub /root/ZKLBS/build/depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : depends/ethsnarks/src/test/jubjub/CMakeFiles/test_jubjub_point.dir/depend

