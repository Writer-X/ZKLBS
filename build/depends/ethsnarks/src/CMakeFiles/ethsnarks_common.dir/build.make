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
include depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/compiler_depend.make

# Include the progress variables for this target.
include depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/progress.make

# Include the compile flags for this target's objects.
include depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/flags.make

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/export.cpp.o: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/flags.make
depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/export.cpp.o: ../depends/ethsnarks/src/export.cpp
depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/export.cpp.o: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/export.cpp.o"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/export.cpp.o -MF CMakeFiles/ethsnarks_common.dir/export.cpp.o.d -o CMakeFiles/ethsnarks_common.dir/export.cpp.o -c /root/ZKLBS/depends/ethsnarks/src/export.cpp

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/export.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_common.dir/export.cpp.i"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/depends/ethsnarks/src/export.cpp > CMakeFiles/ethsnarks_common.dir/export.cpp.i

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/export.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_common.dir/export.cpp.s"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/depends/ethsnarks/src/export.cpp -o CMakeFiles/ethsnarks_common.dir/export.cpp.s

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/import.cpp.o: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/flags.make
depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/import.cpp.o: ../depends/ethsnarks/src/import.cpp
depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/import.cpp.o: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/import.cpp.o"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/import.cpp.o -MF CMakeFiles/ethsnarks_common.dir/import.cpp.o.d -o CMakeFiles/ethsnarks_common.dir/import.cpp.o -c /root/ZKLBS/depends/ethsnarks/src/import.cpp

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/import.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_common.dir/import.cpp.i"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/depends/ethsnarks/src/import.cpp > CMakeFiles/ethsnarks_common.dir/import.cpp.i

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/import.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_common.dir/import.cpp.s"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/depends/ethsnarks/src/import.cpp -o CMakeFiles/ethsnarks_common.dir/import.cpp.s

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/stubs.cpp.o: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/flags.make
depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/stubs.cpp.o: ../depends/ethsnarks/src/stubs.cpp
depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/stubs.cpp.o: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/stubs.cpp.o"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/stubs.cpp.o -MF CMakeFiles/ethsnarks_common.dir/stubs.cpp.o.d -o CMakeFiles/ethsnarks_common.dir/stubs.cpp.o -c /root/ZKLBS/depends/ethsnarks/src/stubs.cpp

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/stubs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_common.dir/stubs.cpp.i"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/depends/ethsnarks/src/stubs.cpp > CMakeFiles/ethsnarks_common.dir/stubs.cpp.i

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/stubs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_common.dir/stubs.cpp.s"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/depends/ethsnarks/src/stubs.cpp -o CMakeFiles/ethsnarks_common.dir/stubs.cpp.s

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/utils.cpp.o: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/flags.make
depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/utils.cpp.o: ../depends/ethsnarks/src/utils.cpp
depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/utils.cpp.o: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/utils.cpp.o"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/utils.cpp.o -MF CMakeFiles/ethsnarks_common.dir/utils.cpp.o.d -o CMakeFiles/ethsnarks_common.dir/utils.cpp.o -c /root/ZKLBS/depends/ethsnarks/src/utils.cpp

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethsnarks_common.dir/utils.cpp.i"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/depends/ethsnarks/src/utils.cpp > CMakeFiles/ethsnarks_common.dir/utils.cpp.i

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethsnarks_common.dir/utils.cpp.s"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/depends/ethsnarks/src/utils.cpp -o CMakeFiles/ethsnarks_common.dir/utils.cpp.s

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/sha256.c.o: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/flags.make
depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/sha256.c.o: ../depends/ethsnarks/src/crypto/sha256.c
depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/sha256.c.o: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/sha256.c.o"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/sha256.c.o -MF CMakeFiles/ethsnarks_common.dir/crypto/sha256.c.o.d -o CMakeFiles/ethsnarks_common.dir/crypto/sha256.c.o -c /root/ZKLBS/depends/ethsnarks/src/crypto/sha256.c

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/sha256.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ethsnarks_common.dir/crypto/sha256.c.i"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/ZKLBS/depends/ethsnarks/src/crypto/sha256.c > CMakeFiles/ethsnarks_common.dir/crypto/sha256.c.i

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/sha256.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ethsnarks_common.dir/crypto/sha256.c.s"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/ZKLBS/depends/ethsnarks/src/crypto/sha256.c -o CMakeFiles/ethsnarks_common.dir/crypto/sha256.c.s

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/blake2b.c.o: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/flags.make
depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/blake2b.c.o: ../depends/ethsnarks/src/crypto/blake2b.c
depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/blake2b.c.o: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/blake2b.c.o"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/blake2b.c.o -MF CMakeFiles/ethsnarks_common.dir/crypto/blake2b.c.o.d -o CMakeFiles/ethsnarks_common.dir/crypto/blake2b.c.o -c /root/ZKLBS/depends/ethsnarks/src/crypto/blake2b.c

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/blake2b.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ethsnarks_common.dir/crypto/blake2b.c.i"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/ZKLBS/depends/ethsnarks/src/crypto/blake2b.c > CMakeFiles/ethsnarks_common.dir/crypto/blake2b.c.i

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/blake2b.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ethsnarks_common.dir/crypto/blake2b.c.s"
	cd /root/ZKLBS/build/depends/ethsnarks/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/ZKLBS/depends/ethsnarks/src/crypto/blake2b.c -o CMakeFiles/ethsnarks_common.dir/crypto/blake2b.c.s

# Object files for target ethsnarks_common
ethsnarks_common_OBJECTS = \
"CMakeFiles/ethsnarks_common.dir/export.cpp.o" \
"CMakeFiles/ethsnarks_common.dir/import.cpp.o" \
"CMakeFiles/ethsnarks_common.dir/stubs.cpp.o" \
"CMakeFiles/ethsnarks_common.dir/utils.cpp.o" \
"CMakeFiles/ethsnarks_common.dir/crypto/sha256.c.o" \
"CMakeFiles/ethsnarks_common.dir/crypto/blake2b.c.o"

# External object files for target ethsnarks_common
ethsnarks_common_EXTERNAL_OBJECTS =

depends/ethsnarks/src/libethsnarks_common.a: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/export.cpp.o
depends/ethsnarks/src/libethsnarks_common.a: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/import.cpp.o
depends/ethsnarks/src/libethsnarks_common.a: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/stubs.cpp.o
depends/ethsnarks/src/libethsnarks_common.a: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/utils.cpp.o
depends/ethsnarks/src/libethsnarks_common.a: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/sha256.c.o
depends/ethsnarks/src/libethsnarks_common.a: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/crypto/blake2b.c.o
depends/ethsnarks/src/libethsnarks_common.a: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/build.make
depends/ethsnarks/src/libethsnarks_common.a: depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/ZKLBS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library libethsnarks_common.a"
	cd /root/ZKLBS/build/depends/ethsnarks/src && $(CMAKE_COMMAND) -P CMakeFiles/ethsnarks_common.dir/cmake_clean_target.cmake
	cd /root/ZKLBS/build/depends/ethsnarks/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ethsnarks_common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/build: depends/ethsnarks/src/libethsnarks_common.a
.PHONY : depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/build

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/clean:
	cd /root/ZKLBS/build/depends/ethsnarks/src && $(CMAKE_COMMAND) -P CMakeFiles/ethsnarks_common.dir/cmake_clean.cmake
.PHONY : depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/clean

depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/depend:
	cd /root/ZKLBS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/ZKLBS /root/ZKLBS/depends/ethsnarks/src /root/ZKLBS/build /root/ZKLBS/build/depends/ethsnarks/src /root/ZKLBS/build/depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : depends/ethsnarks/src/CMakeFiles/ethsnarks_common.dir/depend
