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


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/owen/MongoDB_Test/config

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/owen/MongoDB_Test/config/build

# Include any dependencies generated for this target.
include CMakeFiles/config_example.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/config_example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/config_example.dir/flags.make

CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.o: CMakeFiles/config_example.dir/flags.make
CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.o: ../src/GetAttendanceLists.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/owen/MongoDB_Test/config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.o -c /home/owen/MongoDB_Test/config/src/GetAttendanceLists.cpp

CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/owen/MongoDB_Test/config/src/GetAttendanceLists.cpp > CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.i

CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/owen/MongoDB_Test/config/src/GetAttendanceLists.cpp -o CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.s

CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.o.requires:

.PHONY : CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.o.requires

CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.o.provides: CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.o.requires
	$(MAKE) -f CMakeFiles/config_example.dir/build.make CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.o.provides.build
.PHONY : CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.o.provides

CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.o.provides.build: CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.o


CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.o: CMakeFiles/config_example.dir/flags.make
CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.o: ../src/WriteAttendanceLists.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/owen/MongoDB_Test/config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.o -c /home/owen/MongoDB_Test/config/src/WriteAttendanceLists.cpp

CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/owen/MongoDB_Test/config/src/WriteAttendanceLists.cpp > CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.i

CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/owen/MongoDB_Test/config/src/WriteAttendanceLists.cpp -o CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.s

CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.o.requires:

.PHONY : CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.o.requires

CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.o.provides: CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.o.requires
	$(MAKE) -f CMakeFiles/config_example.dir/build.make CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.o.provides.build
.PHONY : CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.o.provides

CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.o.provides.build: CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.o


CMakeFiles/config_example.dir/src/main.cpp.o: CMakeFiles/config_example.dir/flags.make
CMakeFiles/config_example.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/owen/MongoDB_Test/config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/config_example.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/config_example.dir/src/main.cpp.o -c /home/owen/MongoDB_Test/config/src/main.cpp

CMakeFiles/config_example.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/config_example.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/owen/MongoDB_Test/config/src/main.cpp > CMakeFiles/config_example.dir/src/main.cpp.i

CMakeFiles/config_example.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/config_example.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/owen/MongoDB_Test/config/src/main.cpp -o CMakeFiles/config_example.dir/src/main.cpp.s

CMakeFiles/config_example.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/config_example.dir/src/main.cpp.o.requires

CMakeFiles/config_example.dir/src/main.cpp.o.provides: CMakeFiles/config_example.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/config_example.dir/build.make CMakeFiles/config_example.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/config_example.dir/src/main.cpp.o.provides

CMakeFiles/config_example.dir/src/main.cpp.o.provides.build: CMakeFiles/config_example.dir/src/main.cpp.o


# Object files for target config_example
config_example_OBJECTS = \
"CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.o" \
"CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.o" \
"CMakeFiles/config_example.dir/src/main.cpp.o"

# External object files for target config_example
config_example_EXTERNAL_OBJECTS =

config_example: CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.o
config_example: CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.o
config_example: CMakeFiles/config_example.dir/src/main.cpp.o
config_example: CMakeFiles/config_example.dir/build.make
config_example: CMakeFiles/config_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/owen/MongoDB_Test/config/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable config_example"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/config_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/config_example.dir/build: config_example

.PHONY : CMakeFiles/config_example.dir/build

CMakeFiles/config_example.dir/requires: CMakeFiles/config_example.dir/src/GetAttendanceLists.cpp.o.requires
CMakeFiles/config_example.dir/requires: CMakeFiles/config_example.dir/src/WriteAttendanceLists.cpp.o.requires
CMakeFiles/config_example.dir/requires: CMakeFiles/config_example.dir/src/main.cpp.o.requires

.PHONY : CMakeFiles/config_example.dir/requires

CMakeFiles/config_example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/config_example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/config_example.dir/clean

CMakeFiles/config_example.dir/depend:
	cd /home/owen/MongoDB_Test/config/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/owen/MongoDB_Test/config /home/owen/MongoDB_Test/config /home/owen/MongoDB_Test/config/build /home/owen/MongoDB_Test/config/build /home/owen/MongoDB_Test/config/build/CMakeFiles/config_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/config_example.dir/depend
