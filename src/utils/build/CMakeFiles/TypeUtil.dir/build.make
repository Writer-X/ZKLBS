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
CMAKE_SOURCE_DIR = /home/xt/test/ZKLBS/src/utils

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xt/test/ZKLBS/src/utils/build

# Include any dependencies generated for this target.
include CMakeFiles/TypeUtil.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/TypeUtil.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/TypeUtil.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TypeUtil.dir/flags.make

CMakeFiles/TypeUtil.dir/TypeUtil.cpp.o: CMakeFiles/TypeUtil.dir/flags.make
CMakeFiles/TypeUtil.dir/TypeUtil.cpp.o: ../TypeUtil.cpp
CMakeFiles/TypeUtil.dir/TypeUtil.cpp.o: CMakeFiles/TypeUtil.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xt/test/ZKLBS/src/utils/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TypeUtil.dir/TypeUtil.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TypeUtil.dir/TypeUtil.cpp.o -MF CMakeFiles/TypeUtil.dir/TypeUtil.cpp.o.d -o CMakeFiles/TypeUtil.dir/TypeUtil.cpp.o -c /home/xt/test/ZKLBS/src/utils/TypeUtil.cpp

CMakeFiles/TypeUtil.dir/TypeUtil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TypeUtil.dir/TypeUtil.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xt/test/ZKLBS/src/utils/TypeUtil.cpp > CMakeFiles/TypeUtil.dir/TypeUtil.cpp.i

CMakeFiles/TypeUtil.dir/TypeUtil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TypeUtil.dir/TypeUtil.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xt/test/ZKLBS/src/utils/TypeUtil.cpp -o CMakeFiles/TypeUtil.dir/TypeUtil.cpp.s

# Object files for target TypeUtil
TypeUtil_OBJECTS = \
"CMakeFiles/TypeUtil.dir/TypeUtil.cpp.o"

# External object files for target TypeUtil
TypeUtil_EXTERNAL_OBJECTS =

libTypeUtil.so: CMakeFiles/TypeUtil.dir/TypeUtil.cpp.o
libTypeUtil.so: CMakeFiles/TypeUtil.dir/build.make
libTypeUtil.so: CMakeFiles/TypeUtil.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xt/test/ZKLBS/src/utils/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libTypeUtil.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TypeUtil.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TypeUtil.dir/build: libTypeUtil.so
.PHONY : CMakeFiles/TypeUtil.dir/build

CMakeFiles/TypeUtil.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TypeUtil.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TypeUtil.dir/clean

CMakeFiles/TypeUtil.dir/depend:
	cd /home/xt/test/ZKLBS/src/utils/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xt/test/ZKLBS/src/utils /home/xt/test/ZKLBS/src/utils /home/xt/test/ZKLBS/src/utils/build /home/xt/test/ZKLBS/src/utils/build /home/xt/test/ZKLBS/src/utils/build/CMakeFiles/TypeUtil.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TypeUtil.dir/depend
