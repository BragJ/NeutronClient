# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/egcs/myworkspace/NeutronClient

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/egcs/myworkspace/NeutronClient/build

# Include any dependencies generated for this target.
include CMakeFiles/V4_interface_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/V4_interface_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/V4_interface_test.dir/flags.make

CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.o: CMakeFiles/V4_interface_test.dir/flags.make
CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.o: ../neutronClientMain.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/egcs/myworkspace/NeutronClient/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.o -c /home/egcs/myworkspace/NeutronClient/neutronClientMain.cpp

CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/egcs/myworkspace/NeutronClient/neutronClientMain.cpp > CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.i

CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/egcs/myworkspace/NeutronClient/neutronClientMain.cpp -o CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.s

CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.o.requires:
.PHONY : CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.o.requires

CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.o.provides: CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.o.requires
	$(MAKE) -f CMakeFiles/V4_interface_test.dir/build.make CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.o.provides.build
.PHONY : CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.o.provides

CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.o.provides.build: CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.o

CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.o: CMakeFiles/V4_interface_test.dir/flags.make
CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.o: ../src/NeutronEventClient.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/egcs/myworkspace/NeutronClient/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.o -c /home/egcs/myworkspace/NeutronClient/src/NeutronEventClient.cpp

CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/egcs/myworkspace/NeutronClient/src/NeutronEventClient.cpp > CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.i

CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/egcs/myworkspace/NeutronClient/src/NeutronEventClient.cpp -o CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.s

CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.o.requires:
.PHONY : CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.o.requires

CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.o.provides: CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.o.requires
	$(MAKE) -f CMakeFiles/V4_interface_test.dir/build.make CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.o.provides.build
.PHONY : CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.o.provides

CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.o.provides.build: CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.o

CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.o: CMakeFiles/V4_interface_test.dir/flags.make
CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.o: ../src/neutronClientMonitor.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/egcs/myworkspace/NeutronClient/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.o -c /home/egcs/myworkspace/NeutronClient/src/neutronClientMonitor.cpp

CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/egcs/myworkspace/NeutronClient/src/neutronClientMonitor.cpp > CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.i

CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/egcs/myworkspace/NeutronClient/src/neutronClientMonitor.cpp -o CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.s

CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.o.requires:
.PHONY : CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.o.requires

CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.o.provides: CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.o.requires
	$(MAKE) -f CMakeFiles/V4_interface_test.dir/build.make CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.o.provides.build
.PHONY : CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.o.provides

CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.o.provides.build: CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.o

# Object files for target V4_interface_test
V4_interface_test_OBJECTS = \
"CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.o" \
"CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.o" \
"CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.o"

# External object files for target V4_interface_test
V4_interface_test_EXTERNAL_OBJECTS =

V4_interface_test: CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.o
V4_interface_test: CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.o
V4_interface_test: CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.o
V4_interface_test: CMakeFiles/V4_interface_test.dir/build.make
V4_interface_test: /opt/egcs/epics/EPICS4/pvAccessCPP/lib/linux-x86_64/libpvAccess.so
V4_interface_test: /opt/egcs/epics/EPICS4/pvAccessCPP/lib/linux-x86_64/libpvAccess.a
V4_interface_test: /opt/egcs/epics/EPICS4/pvDataCPP/lib/linux-x86_64/libpvData.so
V4_interface_test: /opt/egcs/epics/EPICS4/pvDataCPP/lib/linux-x86_64/libpvData.a
V4_interface_test: /opt/egcs/epics/base/lib/linux-x86_64/libCom.a
V4_interface_test: /lib64/libreadline.so.6
V4_interface_test: /lib64/libdl.so.2
V4_interface_test: CMakeFiles/V4_interface_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable V4_interface_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/V4_interface_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/V4_interface_test.dir/build: V4_interface_test
.PHONY : CMakeFiles/V4_interface_test.dir/build

CMakeFiles/V4_interface_test.dir/requires: CMakeFiles/V4_interface_test.dir/neutronClientMain.cpp.o.requires
CMakeFiles/V4_interface_test.dir/requires: CMakeFiles/V4_interface_test.dir/src/NeutronEventClient.cpp.o.requires
CMakeFiles/V4_interface_test.dir/requires: CMakeFiles/V4_interface_test.dir/src/neutronClientMonitor.cpp.o.requires
.PHONY : CMakeFiles/V4_interface_test.dir/requires

CMakeFiles/V4_interface_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/V4_interface_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/V4_interface_test.dir/clean

CMakeFiles/V4_interface_test.dir/depend:
	cd /home/egcs/myworkspace/NeutronClient/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/egcs/myworkspace/NeutronClient /home/egcs/myworkspace/NeutronClient /home/egcs/myworkspace/NeutronClient/build /home/egcs/myworkspace/NeutronClient/build /home/egcs/myworkspace/NeutronClient/build/CMakeFiles/V4_interface_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/V4_interface_test.dir/depend

