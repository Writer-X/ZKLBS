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
include depends/ethsnarks/CMakeFiles/ff.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include depends/ethsnarks/CMakeFiles/ff.dir/compiler_depend.make

# Include the progress variables for this target.
include depends/ethsnarks/CMakeFiles/ff.dir/progress.make

# Include the compile flags for this target's objects.
include depends/ethsnarks/CMakeFiles/ff.dir/flags.make

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/flags.make
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp.o: ../depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp.o"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp.o -MF CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp.o.d -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp.o -c /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp.i"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp > CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp.i

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp.s"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp.s

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/flags.make
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp.o: ../depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp.o"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp.o -MF CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp.o.d -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp.o -c /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp.i"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp > CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp.i

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp.s"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp.s

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/flags.make
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp.o: ../depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp.o"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp.o -MF CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp.o.d -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp.o -c /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp.i"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp > CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp.i

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp.s"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp.s

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/flags.make
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp.o: ../depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp.o"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp.o -MF CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp.o.d -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp.o -c /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp.i"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp > CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp.i

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp.s"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp.s

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/flags.make
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp.o: ../depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp.o"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp.o -MF CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp.o.d -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp.o -c /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp.i"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp > CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp.i

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp.s"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp.s

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/double.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/flags.make
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/double.cpp.o: ../depends/ethsnarks/depends/libsnark/depends/libff/libff/common/double.cpp
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/double.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/double.cpp.o"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/double.cpp.o -MF CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/double.cpp.o.d -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/double.cpp.o -c /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/common/double.cpp

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/double.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/double.cpp.i"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/common/double.cpp > CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/double.cpp.i

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/double.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/double.cpp.s"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/common/double.cpp -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/double.cpp.s

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/profiling.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/flags.make
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/profiling.cpp.o: ../depends/ethsnarks/depends/libsnark/depends/libff/libff/common/profiling.cpp
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/profiling.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/profiling.cpp.o"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/profiling.cpp.o -MF CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/profiling.cpp.o.d -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/profiling.cpp.o -c /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/common/profiling.cpp

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/profiling.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/profiling.cpp.i"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/common/profiling.cpp > CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/profiling.cpp.i

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/profiling.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/profiling.cpp.s"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/common/profiling.cpp -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/profiling.cpp.s

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/utils.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/flags.make
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/utils.cpp.o: ../depends/ethsnarks/depends/libsnark/depends/libff/libff/common/utils.cpp
depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/utils.cpp.o: depends/ethsnarks/CMakeFiles/ff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/utils.cpp.o"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/utils.cpp.o -MF CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/utils.cpp.o.d -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/utils.cpp.o -c /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/common/utils.cpp

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/utils.cpp.i"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/common/utils.cpp > CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/utils.cpp.i

depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/utils.cpp.s"
	cd /root/ZKLBS/build/depends/ethsnarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/depends/ethsnarks/depends/libsnark/depends/libff/libff/common/utils.cpp -o CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/utils.cpp.s

# Object files for target ff
ff_OBJECTS = \
"CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp.o" \
"CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp.o" \
"CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp.o" \
"CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp.o" \
"CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp.o" \
"CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/double.cpp.o" \
"CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/profiling.cpp.o" \
"CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/utils.cpp.o"

# External object files for target ff
ff_EXTERNAL_OBJECTS =

depends/ethsnarks/libff.a: depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g1.cpp.o
depends/ethsnarks/libff.a: depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_g2.cpp.o
depends/ethsnarks/libff.a: depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_init.cpp.o
depends/ethsnarks/libff.a: depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pairing.cpp.o
depends/ethsnarks/libff.a: depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/algebra/curves/alt_bn128/alt_bn128_pp.cpp.o
depends/ethsnarks/libff.a: depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/double.cpp.o
depends/ethsnarks/libff.a: depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/profiling.cpp.o
depends/ethsnarks/libff.a: depends/ethsnarks/CMakeFiles/ff.dir/depends/libsnark/depends/libff/libff/common/utils.cpp.o
depends/ethsnarks/libff.a: depends/ethsnarks/CMakeFiles/ff.dir/build.make
depends/ethsnarks/libff.a: depends/ethsnarks/CMakeFiles/ff.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library libff.a"
	cd /root/ZKLBS/build/depends/ethsnarks && $(CMAKE_COMMAND) -P CMakeFiles/ff.dir/cmake_clean_target.cmake
	cd /root/ZKLBS/build/depends/ethsnarks && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ff.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
depends/ethsnarks/CMakeFiles/ff.dir/build: depends/ethsnarks/libff.a
.PHONY : depends/ethsnarks/CMakeFiles/ff.dir/build

depends/ethsnarks/CMakeFiles/ff.dir/clean:
	cd /root/ZKLBS/build/depends/ethsnarks && $(CMAKE_COMMAND) -P CMakeFiles/ff.dir/cmake_clean.cmake
.PHONY : depends/ethsnarks/CMakeFiles/ff.dir/clean

depends/ethsnarks/CMakeFiles/ff.dir/depend:
	cd /root/ZKLBS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/ZKLBS /root/ZKLBS/depends/ethsnarks /root/ZKLBS/build /root/ZKLBS/build/depends/ethsnarks /root/ZKLBS/build/depends/ethsnarks/CMakeFiles/ff.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : depends/ethsnarks/CMakeFiles/ff.dir/depend

