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
include CMakeFiles/greeterClient.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/greeterClient.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/greeterClient.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/greeterClient.dir/flags.make

CMakeFiles/greeterClient.dir/greeterClient.cpp.o: CMakeFiles/greeterClient.dir/flags.make
CMakeFiles/greeterClient.dir/greeterClient.cpp.o: ../greeterClient.cpp
CMakeFiles/greeterClient.dir/greeterClient.cpp.o: CMakeFiles/greeterClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/greeterClient.dir/greeterClient.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/greeterClient.dir/greeterClient.cpp.o -MF CMakeFiles/greeterClient.dir/greeterClient.cpp.o.d -o CMakeFiles/greeterClient.dir/greeterClient.cpp.o -c /root/ZKLBS/src/grpc/greeterClient.cpp

CMakeFiles/greeterClient.dir/greeterClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/greeterClient.dir/greeterClient.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ZKLBS/src/grpc/greeterClient.cpp > CMakeFiles/greeterClient.dir/greeterClient.cpp.i

CMakeFiles/greeterClient.dir/greeterClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/greeterClient.dir/greeterClient.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ZKLBS/src/grpc/greeterClient.cpp -o CMakeFiles/greeterClient.dir/greeterClient.cpp.s

# Object files for target greeterClient
greeterClient_OBJECTS = \
"CMakeFiles/greeterClient.dir/greeterClient.cpp.o"

# External object files for target greeterClient
greeterClient_EXTERNAL_OBJECTS =

greeterClient: CMakeFiles/greeterClient.dir/greeterClient.cpp.o
greeterClient: CMakeFiles/greeterClient.dir/build.make
greeterClient: /root/ZKLBS/src/.build/circuit/libPoseidonClient.so
greeterClient: /root/ZKLBS/src/.build/circuit/libPoseidonServer.so
greeterClient: /root/ZKLBS/src/.build/utils/libCoordinateUtil.so
greeterClient: /root/ZKLBS/src/.build/utils/libTimeUtil.so
greeterClient: /root/ZKLBS/src/.build/utils/libTypeUtil.so
greeterClient: /root/ZKLBS/src/.build/utils/libRandomUtil.so
greeterClient: libcs_grpc_proto.a
greeterClient: libcv_grpc_proto.a
greeterClient: libsv_grpc_proto.a
greeterClient: /usr/lib/libgrpc++_reflection.so.1.52.0-dev
greeterClient: /usr/lib/libgrpc++.so.1.52.0-dev
greeterClient: /usr/lib/x86_64-linux-gnu/libprotobuf.so.3.21.6.0
greeterClient: /root/ZKLBS/src/.build/ethsnarks/src/libethsnarks_common.a
greeterClient: /root/ZKLBS/src/.build/ethsnarks/libff.a
greeterClient: /usr/lib/x86_64-linux-gnu/libgmp.so
greeterClient: /root/ZKLBS/src/.build/utils/libIpUtil.so
greeterClient: /usr/lib/libgrpc.so.29.0.0
greeterClient: /usr/lib/libz.a
greeterClient: /usr/lib/libcares.a
greeterClient: /usr/lib/libaddress_sorting.so.29.0.0
greeterClient: /usr/lib/libre2.so.9.0.0
greeterClient: /usr/lib/libupb.so.29.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_raw_hash_set.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_hashtablez_sampler.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_hash.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_city.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_low_level_hash.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_statusor.so.2206.0.0
greeterClient: /usr/lib/libgpr.so.29.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_bad_variant_access.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_status.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_strerror.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_random_distributions.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_random_seed_sequences.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_random_internal_pool_urbg.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_random_internal_randen.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_random_internal_randen_hwaes.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_random_internal_randen_hwaes_impl.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_random_internal_randen_slow.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_random_internal_platform.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_random_internal_seed_material.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_random_seed_gen_exception.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_cord.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_bad_optional_access.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_cordz_info.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_cord_internal.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_cordz_functions.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_exponential_biased.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_cordz_handle.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_str_format_internal.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_synchronization.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_stacktrace.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_symbolize.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_debugging_internal.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_demangle_internal.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_graphcycles_internal.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_malloc_internal.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_time.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_strings.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_throw_delegate.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_int128.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_strings_internal.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_base.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_spinlock_wait.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_raw_logging_internal.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_log_severity.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_civil_time.so.2206.0.0
greeterClient: /usr/lib/x86_64-linux-gnu/libabsl_time_zone.so.2206.0.0
greeterClient: /usr/lib/libssl.so
greeterClient: /usr/lib/libcrypto.so
greeterClient: CMakeFiles/greeterClient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/ZKLBS/src/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable greeterClient"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/greeterClient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/greeterClient.dir/build: greeterClient
.PHONY : CMakeFiles/greeterClient.dir/build

CMakeFiles/greeterClient.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/greeterClient.dir/cmake_clean.cmake
.PHONY : CMakeFiles/greeterClient.dir/clean

CMakeFiles/greeterClient.dir/depend:
	cd /root/ZKLBS/src/grpc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/ZKLBS/src/grpc /root/ZKLBS/src/grpc /root/ZKLBS/src/grpc/build /root/ZKLBS/src/grpc/build /root/ZKLBS/src/grpc/build/CMakeFiles/greeterClient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/greeterClient.dir/depend

