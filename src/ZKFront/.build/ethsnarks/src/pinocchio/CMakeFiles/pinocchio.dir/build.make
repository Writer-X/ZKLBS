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

# Include any dependencies generated for this target.
include /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/compiler_depend.make

# Include the progress variables for this target.
include /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/progress.make

# Include the compile flags for this target's objects.
include /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/flags.make

/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/pinocchio_autogen/mocs_compilation.cpp.o: /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/flags.make
/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/pinocchio_autogen/mocs_compilation.cpp.o: /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/pinocchio_autogen/mocs_compilation.cpp
/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/pinocchio_autogen/mocs_compilation.cpp.o: /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xt/test/ZKLBS/src/ZKFront/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/pinocchio_autogen/mocs_compilation.cpp.o"
	cd /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/pinocchio_autogen/mocs_compilation.cpp.o -MF CMakeFiles/pinocchio.dir/pinocchio_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/pinocchio.dir/pinocchio_autogen/mocs_compilation.cpp.o -c /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/pinocchio_autogen/mocs_compilation.cpp

/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/pinocchio_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pinocchio.dir/pinocchio_autogen/mocs_compilation.cpp.i"
	cd /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/pinocchio_autogen/mocs_compilation.cpp > CMakeFiles/pinocchio.dir/pinocchio_autogen/mocs_compilation.cpp.i

/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/pinocchio_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pinocchio.dir/pinocchio_autogen/mocs_compilation.cpp.s"
	cd /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/pinocchio_autogen/mocs_compilation.cpp -o CMakeFiles/pinocchio.dir/pinocchio_autogen/mocs_compilation.cpp.s

/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.o: /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/flags.make
/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.o: /home/xt/test/ZKLBS/ethsnarks/src/pinocchio/main.cpp
/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.o: /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xt/test/ZKLBS/src/ZKFront/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.o"
	cd /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.o -MF CMakeFiles/pinocchio.dir/main.cpp.o.d -o CMakeFiles/pinocchio.dir/main.cpp.o -c /home/xt/test/ZKLBS/ethsnarks/src/pinocchio/main.cpp

/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pinocchio.dir/main.cpp.i"
	cd /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xt/test/ZKLBS/ethsnarks/src/pinocchio/main.cpp > CMakeFiles/pinocchio.dir/main.cpp.i

/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pinocchio.dir/main.cpp.s"
	cd /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xt/test/ZKLBS/ethsnarks/src/pinocchio/main.cpp -o CMakeFiles/pinocchio.dir/main.cpp.s

# Object files for target pinocchio
pinocchio_OBJECTS = \
"CMakeFiles/pinocchio.dir/pinocchio_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/pinocchio.dir/main.cpp.o"

# External object files for target pinocchio
pinocchio_EXTERNAL_OBJECTS =

/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/pinocchio: /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/pinocchio_autogen/mocs_compilation.cpp.o
/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/pinocchio: /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/main.cpp.o
/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/pinocchio: /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/build.make
/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/pinocchio: /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/libethsnarks_pinocchio.a
/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/pinocchio: /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/libethsnarks_common.a
/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/pinocchio: /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/libff.a
/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/pinocchio: /usr/lib/x86_64-linux-gnu/libgmp.so
/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/pinocchio: /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xt/test/ZKLBS/src/ZKFront/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable pinocchio"
	cd /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pinocchio.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/build: /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/pinocchio
.PHONY : /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/build

/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/clean:
	cd /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio && $(CMAKE_COMMAND) -P CMakeFiles/pinocchio.dir/cmake_clean.cmake
.PHONY : /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/clean

/home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/depend:
	cd /home/xt/test/ZKLBS/src/ZKFront/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xt/test/ZKLBS/src/ZKFront /home/xt/test/ZKLBS/ethsnarks/src/pinocchio /home/xt/test/ZKLBS/src/ZKFront/build /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : /home/xt/test/ZKLBS/src/ZKFront/.build/ethsnarks/src/pinocchio/CMakeFiles/pinocchio.dir/depend

