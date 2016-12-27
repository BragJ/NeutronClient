
cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
set(PROJ_NAME V4_interface_test)
project(${PROJ_NAME})
#set(CMAKE_CXX_COMPILER "/bin/g++")
#set(CMAKE_CXX_FLAGS "-std=c++11 -Wno-deprecated") 

set(pvAccess_DIR /opt/egcs/epics/EPICS4/pvAccessCPP)
set(pvData_DIR /opt/egcs/epics/EPICS4/pvDataCPP)
set(base_DIR /opt/egcs/epics/base)
set(base_linux_DIR /opt/egcs/epics/base/include/os/Linux)

#SET(CMAKE_BUILD_TYPE Debug) 
#----------------------------------------------------------------------------

#find_package(EPICS4 REQUIRED)
#find_package(EPICS4 COMPONENTS pvAccess pvData)
#find_package(base REQUIRED)
#find_package(base COMPONENTS Com)

#----------------------------------------------------------------------------

include_directories(${PROJECT_SOURCE_DIR}/include ${pvAccess_DIR}/include  ${pvData_DIR}/include ${base_DIR}/include ${base_linux_DIR})
file(GLOB sources ${PROJECT_SOURCE_DIR}/src/*.cpp)
file(GLOB headers ${PROJECT_SOURCE_DIR}/include/*.hh)
file(GLOB libs ${PROJECT_SOURCE_DIR}/lib/* ${pvAccess_DIR}/lib/linux-x86_64/* ${pvData_DIR}/lib/linux-x86_64/* ${base_DIR}/lib/linux-x86_64/libCom.a /lib64/libreadline.so.6 /lib64/libdl.so.2)
#----------------------------------------------------------------------------

add_executable(${PROJ_NAME} neutronClientMain.cpp ${sources} ${headers})
target_link_libraries(${PROJ_NAME} ${libs})


#-L/home/wuhongyi/root/lib Core Cint RIO Net Hist Graf Graf3d Gpad Tree Rint Postscript Matrix Physics MathCore Thread  -pthread  m dl -rdynamic 




