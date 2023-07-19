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
include /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/compiler_depend.make

# Include the progress variables for this target.
include /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/progress.make

# Include the compile flags for this target's objects.
include /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/flags.make

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/flags.make
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul.cpp.o: /root/ZKLBS/ethsnarks/src/jubjub/fixed_base_mul.cpp
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul.cpp.o"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul.cpp.o -MF CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul.cpp.o.d -o CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul.cpp.o -c /root/ZKLBS/ethsnarks/src/jubjub/fixed_base_mul.cpp

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul.cpp.i"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/ethsnarks/src/jubjub/fixed_base_mul.cpp > CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul.cpp.i

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul.cpp.s"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/ethsnarks/src/jubjub/fixed_base_mul.cpp -o CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul.cpp.s

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/conditional_point.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/flags.make
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/conditional_point.cpp.o: /root/ZKLBS/ethsnarks/src/jubjub/conditional_point.cpp
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/conditional_point.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/conditional_point.cpp.o"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/conditional_point.cpp.o -MF CMakeFiles/ethsnarks_jubjub.dir/conditional_point.cpp.o.d -o CMakeFiles/ethsnarks_jubjub.dir/conditional_point.cpp.o -c /root/ZKLBS/ethsnarks/src/jubjub/conditional_point.cpp

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/conditional_point.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_jubjub.dir/conditional_point.cpp.i"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/ethsnarks/src/jubjub/conditional_point.cpp > CMakeFiles/ethsnarks_jubjub.dir/conditional_point.cpp.i

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/conditional_point.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_jubjub.dir/conditional_point.cpp.s"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/ethsnarks/src/jubjub/conditional_point.cpp -o CMakeFiles/ethsnarks_jubjub.dir/conditional_point.cpp.s

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/scalarmult.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/flags.make
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/scalarmult.cpp.o: /root/ZKLBS/ethsnarks/src/jubjub/scalarmult.cpp
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/scalarmult.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/scalarmult.cpp.o"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/scalarmult.cpp.o -MF CMakeFiles/ethsnarks_jubjub.dir/scalarmult.cpp.o.d -o CMakeFiles/ethsnarks_jubjub.dir/scalarmult.cpp.o -c /root/ZKLBS/ethsnarks/src/jubjub/scalarmult.cpp

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/scalarmult.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_jubjub.dir/scalarmult.cpp.i"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/ethsnarks/src/jubjub/scalarmult.cpp > CMakeFiles/ethsnarks_jubjub.dir/scalarmult.cpp.i

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/scalarmult.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_jubjub.dir/scalarmult.cpp.s"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/ethsnarks/src/jubjub/scalarmult.cpp -o CMakeFiles/ethsnarks_jubjub.dir/scalarmult.cpp.s

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/adder.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/flags.make
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/adder.cpp.o: /root/ZKLBS/ethsnarks/src/jubjub/adder.cpp
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/adder.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/adder.cpp.o"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/adder.cpp.o -MF CMakeFiles/ethsnarks_jubjub.dir/adder.cpp.o.d -o CMakeFiles/ethsnarks_jubjub.dir/adder.cpp.o -c /root/ZKLBS/ethsnarks/src/jubjub/adder.cpp

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/adder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_jubjub.dir/adder.cpp.i"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/ethsnarks/src/jubjub/adder.cpp > CMakeFiles/ethsnarks_jubjub.dir/adder.cpp.i

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/adder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_jubjub.dir/adder.cpp.s"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/ethsnarks/src/jubjub/adder.cpp -o CMakeFiles/ethsnarks_jubjub.dir/adder.cpp.s

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/doubler.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/flags.make
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/doubler.cpp.o: /root/ZKLBS/ethsnarks/src/jubjub/doubler.cpp
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/doubler.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/doubler.cpp.o"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/doubler.cpp.o -MF CMakeFiles/ethsnarks_jubjub.dir/doubler.cpp.o.d -o CMakeFiles/ethsnarks_jubjub.dir/doubler.cpp.o -c /root/ZKLBS/ethsnarks/src/jubjub/doubler.cpp

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/doubler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_jubjub.dir/doubler.cpp.i"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/ethsnarks/src/jubjub/doubler.cpp > CMakeFiles/ethsnarks_jubjub.dir/doubler.cpp.i

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/doubler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_jubjub.dir/doubler.cpp.s"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/ethsnarks/src/jubjub/doubler.cpp -o CMakeFiles/ethsnarks_jubjub.dir/doubler.cpp.s

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/isoncurve.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/flags.make
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/isoncurve.cpp.o: /root/ZKLBS/ethsnarks/src/jubjub/isoncurve.cpp
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/isoncurve.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/isoncurve.cpp.o"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/isoncurve.cpp.o -MF CMakeFiles/ethsnarks_jubjub.dir/isoncurve.cpp.o.d -o CMakeFiles/ethsnarks_jubjub.dir/isoncurve.cpp.o -c /root/ZKLBS/ethsnarks/src/jubjub/isoncurve.cpp

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/isoncurve.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_jubjub.dir/isoncurve.cpp.i"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/ethsnarks/src/jubjub/isoncurve.cpp > CMakeFiles/ethsnarks_jubjub.dir/isoncurve.cpp.i

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/isoncurve.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_jubjub.dir/isoncurve.cpp.s"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/ethsnarks/src/jubjub/isoncurve.cpp -o CMakeFiles/ethsnarks_jubjub.dir/isoncurve.cpp.s

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/commitment.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/flags.make
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/commitment.cpp.o: /root/ZKLBS/ethsnarks/src/jubjub/commitment.cpp
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/commitment.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/commitment.cpp.o"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/commitment.cpp.o -MF CMakeFiles/ethsnarks_jubjub.dir/commitment.cpp.o.d -o CMakeFiles/ethsnarks_jubjub.dir/commitment.cpp.o -c /root/ZKLBS/ethsnarks/src/jubjub/commitment.cpp

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/commitment.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_jubjub.dir/commitment.cpp.i"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/ethsnarks/src/jubjub/commitment.cpp > CMakeFiles/ethsnarks_jubjub.dir/commitment.cpp.i

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/commitment.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_jubjub.dir/commitment.cpp.s"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/ethsnarks/src/jubjub/commitment.cpp -o CMakeFiles/ethsnarks_jubjub.dir/commitment.cpp.s

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/notloworder.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/flags.make
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/notloworder.cpp.o: /root/ZKLBS/ethsnarks/src/jubjub/notloworder.cpp
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/notloworder.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/notloworder.cpp.o"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/notloworder.cpp.o -MF CMakeFiles/ethsnarks_jubjub.dir/notloworder.cpp.o.d -o CMakeFiles/ethsnarks_jubjub.dir/notloworder.cpp.o -c /root/ZKLBS/ethsnarks/src/jubjub/notloworder.cpp

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/notloworder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_jubjub.dir/notloworder.cpp.i"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/ethsnarks/src/jubjub/notloworder.cpp > CMakeFiles/ethsnarks_jubjub.dir/notloworder.cpp.i

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/notloworder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_jubjub.dir/notloworder.cpp.s"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/ethsnarks/src/jubjub/notloworder.cpp -o CMakeFiles/ethsnarks_jubjub.dir/notloworder.cpp.s

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/validator.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/flags.make
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/validator.cpp.o: /root/ZKLBS/ethsnarks/src/jubjub/validator.cpp
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/validator.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/validator.cpp.o"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/validator.cpp.o -MF CMakeFiles/ethsnarks_jubjub.dir/validator.cpp.o.d -o CMakeFiles/ethsnarks_jubjub.dir/validator.cpp.o -c /root/ZKLBS/ethsnarks/src/jubjub/validator.cpp

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/validator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_jubjub.dir/validator.cpp.i"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/ethsnarks/src/jubjub/validator.cpp > CMakeFiles/ethsnarks_jubjub.dir/validator.cpp.i

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/validator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_jubjub.dir/validator.cpp.s"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/ethsnarks/src/jubjub/validator.cpp -o CMakeFiles/ethsnarks_jubjub.dir/validator.cpp.s

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/point.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/flags.make
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/point.cpp.o: /root/ZKLBS/ethsnarks/src/jubjub/point.cpp
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/point.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/point.cpp.o"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/point.cpp.o -MF CMakeFiles/ethsnarks_jubjub.dir/point.cpp.o.d -o CMakeFiles/ethsnarks_jubjub.dir/point.cpp.o -c /root/ZKLBS/ethsnarks/src/jubjub/point.cpp

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/point.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_jubjub.dir/point.cpp.i"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/ethsnarks/src/jubjub/point.cpp > CMakeFiles/ethsnarks_jubjub.dir/point.cpp.i

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/point.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_jubjub.dir/point.cpp.s"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/ethsnarks/src/jubjub/point.cpp -o CMakeFiles/ethsnarks_jubjub.dir/point.cpp.s

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/pedersen_hash.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/flags.make
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/pedersen_hash.cpp.o: /root/ZKLBS/ethsnarks/src/jubjub/pedersen_hash.cpp
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/pedersen_hash.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/pedersen_hash.cpp.o"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/pedersen_hash.cpp.o -MF CMakeFiles/ethsnarks_jubjub.dir/pedersen_hash.cpp.o.d -o CMakeFiles/ethsnarks_jubjub.dir/pedersen_hash.cpp.o -c /root/ZKLBS/ethsnarks/src/jubjub/pedersen_hash.cpp

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/pedersen_hash.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_jubjub.dir/pedersen_hash.cpp.i"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/ethsnarks/src/jubjub/pedersen_hash.cpp > CMakeFiles/ethsnarks_jubjub.dir/pedersen_hash.cpp.i

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/pedersen_hash.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_jubjub.dir/pedersen_hash.cpp.s"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/ethsnarks/src/jubjub/pedersen_hash.cpp -o CMakeFiles/ethsnarks_jubjub.dir/pedersen_hash.cpp.s

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul_zcash.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/flags.make
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul_zcash.cpp.o: /root/ZKLBS/ethsnarks/src/jubjub/fixed_base_mul_zcash.cpp
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul_zcash.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul_zcash.cpp.o"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul_zcash.cpp.o -MF CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul_zcash.cpp.o.d -o CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul_zcash.cpp.o -c /root/ZKLBS/ethsnarks/src/jubjub/fixed_base_mul_zcash.cpp

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul_zcash.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul_zcash.cpp.i"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/ethsnarks/src/jubjub/fixed_base_mul_zcash.cpp > CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul_zcash.cpp.i

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul_zcash.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul_zcash.cpp.s"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/ethsnarks/src/jubjub/fixed_base_mul_zcash.cpp -o CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul_zcash.cpp.s

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/montgomery.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/flags.make
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/montgomery.cpp.o: /root/ZKLBS/ethsnarks/src/jubjub/montgomery.cpp
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/montgomery.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/montgomery.cpp.o"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/montgomery.cpp.o -MF CMakeFiles/ethsnarks_jubjub.dir/montgomery.cpp.o.d -o CMakeFiles/ethsnarks_jubjub.dir/montgomery.cpp.o -c /root/ZKLBS/ethsnarks/src/jubjub/montgomery.cpp

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/montgomery.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_jubjub.dir/montgomery.cpp.i"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/ethsnarks/src/jubjub/montgomery.cpp > CMakeFiles/ethsnarks_jubjub.dir/montgomery.cpp.i

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/montgomery.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_jubjub.dir/montgomery.cpp.s"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/ethsnarks/src/jubjub/montgomery.cpp -o CMakeFiles/ethsnarks_jubjub.dir/montgomery.cpp.s

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/eddsa.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/flags.make
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/eddsa.cpp.o: /root/ZKLBS/ethsnarks/src/jubjub/eddsa.cpp
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/eddsa.cpp.o: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/eddsa.cpp.o"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/eddsa.cpp.o -MF CMakeFiles/ethsnarks_jubjub.dir/eddsa.cpp.o.d -o CMakeFiles/ethsnarks_jubjub.dir/eddsa.cpp.o -c /root/ZKLBS/ethsnarks/src/jubjub/eddsa.cpp

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/eddsa.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_jubjub.dir/eddsa.cpp.i"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/ethsnarks/src/jubjub/eddsa.cpp > CMakeFiles/ethsnarks_jubjub.dir/eddsa.cpp.i

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/eddsa.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_jubjub.dir/eddsa.cpp.s"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/ethsnarks/src/jubjub/eddsa.cpp -o CMakeFiles/ethsnarks_jubjub.dir/eddsa.cpp.s

# Object files for target ethsnarks_jubjub
ethsnarks_jubjub_OBJECTS = \
"CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul.cpp.o" \
"CMakeFiles/ethsnarks_jubjub.dir/conditional_point.cpp.o" \
"CMakeFiles/ethsnarks_jubjub.dir/scalarmult.cpp.o" \
"CMakeFiles/ethsnarks_jubjub.dir/adder.cpp.o" \
"CMakeFiles/ethsnarks_jubjub.dir/doubler.cpp.o" \
"CMakeFiles/ethsnarks_jubjub.dir/isoncurve.cpp.o" \
"CMakeFiles/ethsnarks_jubjub.dir/commitment.cpp.o" \
"CMakeFiles/ethsnarks_jubjub.dir/notloworder.cpp.o" \
"CMakeFiles/ethsnarks_jubjub.dir/validator.cpp.o" \
"CMakeFiles/ethsnarks_jubjub.dir/point.cpp.o" \
"CMakeFiles/ethsnarks_jubjub.dir/pedersen_hash.cpp.o" \
"CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul_zcash.cpp.o" \
"CMakeFiles/ethsnarks_jubjub.dir/montgomery.cpp.o" \
"CMakeFiles/ethsnarks_jubjub.dir/eddsa.cpp.o"

# External object files for target ethsnarks_jubjub
ethsnarks_jubjub_EXTERNAL_OBJECTS =

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul.cpp.o
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/conditional_point.cpp.o
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/scalarmult.cpp.o
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/adder.cpp.o
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/doubler.cpp.o
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/isoncurve.cpp.o
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/commitment.cpp.o
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/notloworder.cpp.o
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/validator.cpp.o
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/point.cpp.o
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/pedersen_hash.cpp.o
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/fixed_base_mul_zcash.cpp.o
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/montgomery.cpp.o
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/eddsa.cpp.o
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/build.make
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX static library libethsnarks_jubjub.a"
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && $(CMAKE_COMMAND) -P CMakeFiles/ethsnarks_jubjub.dir/cmake_clean_target.cmake
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ethsnarks_jubjub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/build: /root/ZKLBS/src/.build/ethsnarks/src/jubjub/libethsnarks_jubjub.a
.PHONY : /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/build

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/clean:
	cd /root/ZKLBS/src/.build/ethsnarks/src/jubjub && $(CMAKE_COMMAND) -P CMakeFiles/ethsnarks_jubjub.dir/cmake_clean.cmake
.PHONY : /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/clean

/root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/depend:
	cd /root/ZKLBS/src/grpc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/ZKLBS/src/grpc /root/ZKLBS/ethsnarks/src/jubjub /root/ZKLBS/src/grpc/build /root/ZKLBS/src/.build/ethsnarks/src/jubjub /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : /root/ZKLBS/src/.build/ethsnarks/src/jubjub/CMakeFiles/ethsnarks_jubjub.dir/depend
