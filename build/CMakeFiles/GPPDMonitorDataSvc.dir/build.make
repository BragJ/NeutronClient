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
CMAKE_SOURCE_DIR = /home/egcs/Desktop/NeutronClient

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/egcs/Desktop/NeutronClient/build

# Include any dependencies generated for this target.
include CMakeFiles/GPPDMonitorDataSvc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/GPPDMonitorDataSvc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GPPDMonitorDataSvc.dir/flags.make

CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.o: CMakeFiles/GPPDMonitorDataSvc.dir/flags.make
CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.o: ../test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/egcs/Desktop/NeutronClient/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.o"
	/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.o -c /home/egcs/Desktop/NeutronClient/test.cpp

CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.i"
	/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/egcs/Desktop/NeutronClient/test.cpp > CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.i

CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.s"
	/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/egcs/Desktop/NeutronClient/test.cpp -o CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.s

CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.o.requires:
.PHONY : CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.o.requires

CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.o.provides: CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.o.requires
	$(MAKE) -f CMakeFiles/GPPDMonitorDataSvc.dir/build.make CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.o.provides.build
.PHONY : CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.o.provides

CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.o.provides.build: CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.o

CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.o: CMakeFiles/GPPDMonitorDataSvc.dir/flags.make
CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.o: ../src/neutronClientRequestAndMonitor.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/egcs/Desktop/NeutronClient/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.o"
	/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.o -c /home/egcs/Desktop/NeutronClient/src/neutronClientRequestAndMonitor.cpp

CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.i"
	/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/egcs/Desktop/NeutronClient/src/neutronClientRequestAndMonitor.cpp > CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.i

CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.s"
	/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/egcs/Desktop/NeutronClient/src/neutronClientRequestAndMonitor.cpp -o CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.s

CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.o.requires:
.PHONY : CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.o.requires

CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.o.provides: CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.o.requires
	$(MAKE) -f CMakeFiles/GPPDMonitorDataSvc.dir/build.make CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.o.provides.build
.PHONY : CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.o.provides

CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.o.provides.build: CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.o

CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.o: CMakeFiles/GPPDMonitorDataSvc.dir/flags.make
CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.o: ../src/neutronClientStartMonitor.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/egcs/Desktop/NeutronClient/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.o"
	/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.o -c /home/egcs/Desktop/NeutronClient/src/neutronClientStartMonitor.cpp

CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.i"
	/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/egcs/Desktop/NeutronClient/src/neutronClientStartMonitor.cpp > CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.i

CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.s"
	/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/egcs/Desktop/NeutronClient/src/neutronClientStartMonitor.cpp -o CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.s

CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.o.requires:
.PHONY : CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.o.requires

CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.o.provides: CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.o.requires
	$(MAKE) -f CMakeFiles/GPPDMonitorDataSvc.dir/build.make CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.o.provides.build
.PHONY : CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.o.provides

CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.o.provides.build: CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.o

# Object files for target GPPDMonitorDataSvc
GPPDMonitorDataSvc_OBJECTS = \
"CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.o" \
"CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.o" \
"CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.o"

# External object files for target GPPDMonitorDataSvc
GPPDMonitorDataSvc_EXTERNAL_OBJECTS =

GPPDMonitorDataSvc: CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.o
GPPDMonitorDataSvc: CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.o
GPPDMonitorDataSvc: CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.o
GPPDMonitorDataSvc: CMakeFiles/GPPDMonitorDataSvc.dir/build.make
GPPDMonitorDataSvc: /opt/egcs/epics/EPICS4/pvAccessCPP/lib/linux-x86_64/libpvAccess.so
GPPDMonitorDataSvc: /opt/egcs/epics/EPICS4/pvAccessCPP/lib/linux-x86_64/libpvAccess.a
GPPDMonitorDataSvc: /opt/egcs/epics/EPICS4/pvDataCPP/lib/linux-x86_64/libpvData.so
GPPDMonitorDataSvc: /opt/egcs/epics/EPICS4/pvDataCPP/lib/linux-x86_64/libpvData.a
GPPDMonitorDataSvc: /opt/egcs/epics/base/lib/linux-x86_64/libCom.a
GPPDMonitorDataSvc: /lib64/libreadline.so.6
GPPDMonitorDataSvc: /lib64/libdl.so.2
GPPDMonitorDataSvc: CMakeFiles/GPPDMonitorDataSvc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable GPPDMonitorDataSvc"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GPPDMonitorDataSvc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GPPDMonitorDataSvc.dir/build: GPPDMonitorDataSvc
.PHONY : CMakeFiles/GPPDMonitorDataSvc.dir/build

CMakeFiles/GPPDMonitorDataSvc.dir/requires: CMakeFiles/GPPDMonitorDataSvc.dir/test.cpp.o.requires
CMakeFiles/GPPDMonitorDataSvc.dir/requires: CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientRequestAndMonitor.cpp.o.requires
CMakeFiles/GPPDMonitorDataSvc.dir/requires: CMakeFiles/GPPDMonitorDataSvc.dir/src/neutronClientStartMonitor.cpp.o.requires
.PHONY : CMakeFiles/GPPDMonitorDataSvc.dir/requires

CMakeFiles/GPPDMonitorDataSvc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GPPDMonitorDataSvc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GPPDMonitorDataSvc.dir/clean

CMakeFiles/GPPDMonitorDataSvc.dir/depend:
	cd /home/egcs/Desktop/NeutronClient/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/egcs/Desktop/NeutronClient /home/egcs/Desktop/NeutronClient /home/egcs/Desktop/NeutronClient/build /home/egcs/Desktop/NeutronClient/build /home/egcs/Desktop/NeutronClient/build/CMakeFiles/GPPDMonitorDataSvc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/GPPDMonitorDataSvc.dir/depend

