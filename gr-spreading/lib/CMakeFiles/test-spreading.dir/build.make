# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ableo/gnuradio/tutorials/modules/gr-spreading

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ableo/gnuradio/tutorials/modules/gr-spreading

# Include any dependencies generated for this target.
include lib/CMakeFiles/test-spreading.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/test-spreading.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/test-spreading.dir/flags.make

lib/CMakeFiles/test-spreading.dir/test_spreading.cc.o: lib/CMakeFiles/test-spreading.dir/flags.make
lib/CMakeFiles/test-spreading.dir/test_spreading.cc.o: lib/test_spreading.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ableo/gnuradio/tutorials/modules/gr-spreading/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/test-spreading.dir/test_spreading.cc.o"
	cd /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-spreading.dir/test_spreading.cc.o -c /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib/test_spreading.cc

lib/CMakeFiles/test-spreading.dir/test_spreading.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-spreading.dir/test_spreading.cc.i"
	cd /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib/test_spreading.cc > CMakeFiles/test-spreading.dir/test_spreading.cc.i

lib/CMakeFiles/test-spreading.dir/test_spreading.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-spreading.dir/test_spreading.cc.s"
	cd /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib/test_spreading.cc -o CMakeFiles/test-spreading.dir/test_spreading.cc.s

lib/CMakeFiles/test-spreading.dir/test_spreading.cc.o.requires:

.PHONY : lib/CMakeFiles/test-spreading.dir/test_spreading.cc.o.requires

lib/CMakeFiles/test-spreading.dir/test_spreading.cc.o.provides: lib/CMakeFiles/test-spreading.dir/test_spreading.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-spreading.dir/build.make lib/CMakeFiles/test-spreading.dir/test_spreading.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-spreading.dir/test_spreading.cc.o.provides

lib/CMakeFiles/test-spreading.dir/test_spreading.cc.o.provides.build: lib/CMakeFiles/test-spreading.dir/test_spreading.cc.o


lib/CMakeFiles/test-spreading.dir/qa_spreading.cc.o: lib/CMakeFiles/test-spreading.dir/flags.make
lib/CMakeFiles/test-spreading.dir/qa_spreading.cc.o: lib/qa_spreading.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ableo/gnuradio/tutorials/modules/gr-spreading/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/CMakeFiles/test-spreading.dir/qa_spreading.cc.o"
	cd /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-spreading.dir/qa_spreading.cc.o -c /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib/qa_spreading.cc

lib/CMakeFiles/test-spreading.dir/qa_spreading.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-spreading.dir/qa_spreading.cc.i"
	cd /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib/qa_spreading.cc > CMakeFiles/test-spreading.dir/qa_spreading.cc.i

lib/CMakeFiles/test-spreading.dir/qa_spreading.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-spreading.dir/qa_spreading.cc.s"
	cd /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib/qa_spreading.cc -o CMakeFiles/test-spreading.dir/qa_spreading.cc.s

lib/CMakeFiles/test-spreading.dir/qa_spreading.cc.o.requires:

.PHONY : lib/CMakeFiles/test-spreading.dir/qa_spreading.cc.o.requires

lib/CMakeFiles/test-spreading.dir/qa_spreading.cc.o.provides: lib/CMakeFiles/test-spreading.dir/qa_spreading.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-spreading.dir/build.make lib/CMakeFiles/test-spreading.dir/qa_spreading.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-spreading.dir/qa_spreading.cc.o.provides

lib/CMakeFiles/test-spreading.dir/qa_spreading.cc.o.provides.build: lib/CMakeFiles/test-spreading.dir/qa_spreading.cc.o


lib/CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.o: lib/CMakeFiles/test-spreading.dir/flags.make
lib/CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.o: lib/qa_zcz_spreading.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ableo/gnuradio/tutorials/modules/gr-spreading/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.o"
	cd /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.o -c /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib/qa_zcz_spreading.cc

lib/CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.i"
	cd /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib/qa_zcz_spreading.cc > CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.i

lib/CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.s"
	cd /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib/qa_zcz_spreading.cc -o CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.s

lib/CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.o.requires:

.PHONY : lib/CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.o.requires

lib/CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.o.provides: lib/CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-spreading.dir/build.make lib/CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.o.provides

lib/CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.o.provides.build: lib/CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.o


# Object files for target test-spreading
test__spreading_OBJECTS = \
"CMakeFiles/test-spreading.dir/test_spreading.cc.o" \
"CMakeFiles/test-spreading.dir/qa_spreading.cc.o" \
"CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.o"

# External object files for target test-spreading
test__spreading_EXTERNAL_OBJECTS =

lib/test-spreading: lib/CMakeFiles/test-spreading.dir/test_spreading.cc.o
lib/test-spreading: lib/CMakeFiles/test-spreading.dir/qa_spreading.cc.o
lib/test-spreading: lib/CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.o
lib/test-spreading: lib/CMakeFiles/test-spreading.dir/build.make
lib/test-spreading: /usr/lib/x86_64-linux-gnu/libgnuradio-runtime.so
lib/test-spreading: /usr/lib/x86_64-linux-gnu/libgnuradio-pmt.so
lib/test-spreading: /usr/lib/x86_64-linux-gnu/liblog4cpp.so
lib/test-spreading: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/test-spreading: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/test-spreading: /usr/lib/x86_64-linux-gnu/libcppunit.so
lib/test-spreading: lib/libgnuradio-spreading-1.0.0git.so.0.0.0
lib/test-spreading: /usr/lib/x86_64-linux-gnu/libgnuradio-runtime.so
lib/test-spreading: /usr/lib/x86_64-linux-gnu/libgnuradio-pmt.so
lib/test-spreading: /usr/lib/x86_64-linux-gnu/liblog4cpp.so
lib/test-spreading: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/test-spreading: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/test-spreading: lib/CMakeFiles/test-spreading.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ableo/gnuradio/tutorials/modules/gr-spreading/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable test-spreading"
	cd /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-spreading.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/test-spreading.dir/build: lib/test-spreading

.PHONY : lib/CMakeFiles/test-spreading.dir/build

lib/CMakeFiles/test-spreading.dir/requires: lib/CMakeFiles/test-spreading.dir/test_spreading.cc.o.requires
lib/CMakeFiles/test-spreading.dir/requires: lib/CMakeFiles/test-spreading.dir/qa_spreading.cc.o.requires
lib/CMakeFiles/test-spreading.dir/requires: lib/CMakeFiles/test-spreading.dir/qa_zcz_spreading.cc.o.requires

.PHONY : lib/CMakeFiles/test-spreading.dir/requires

lib/CMakeFiles/test-spreading.dir/clean:
	cd /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib && $(CMAKE_COMMAND) -P CMakeFiles/test-spreading.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/test-spreading.dir/clean

lib/CMakeFiles/test-spreading.dir/depend:
	cd /home/ableo/gnuradio/tutorials/modules/gr-spreading && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ableo/gnuradio/tutorials/modules/gr-spreading /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib /home/ableo/gnuradio/tutorials/modules/gr-spreading /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib /home/ableo/gnuradio/tutorials/modules/gr-spreading/lib/CMakeFiles/test-spreading.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/test-spreading.dir/depend
