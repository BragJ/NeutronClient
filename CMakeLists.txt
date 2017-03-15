
cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

set(PROJ_NAME GPPDMonitorDataSvc)
project(${PROJ_NAME} C CXX)

set(CMAKE_C_COMPILER "/bin/gcc")  #调用gcc4.8.1，原本默认4.4.6
set(CMAKE_CXX_COMPILER "/bin/g++") #调用g++4.8.1，原本默认4.4.6

set(CMAKE_CXX_FLAGS "-std=c++11 -Wno-deprecated") 

# Compile Flag
IF(CMAKE_COMPILER_IS_GNUCXX)
  ADD_DEFINITIONS("-Wall")
ELSE()
  MESSAGE(FATAL_ERROR "CMakeLists.txt has not been tested/written for your compiler.")
ENDIF()

## absolute path
set(base_DIR /opt/egcs/epics/base)
set(pvAccess_DIR /opt/egcs/epics/EPICS4/pvAccessCPP)
set(pvData_DIR /opt/egcs/epics/EPICS4/pvDataCPP)

#SET(CMAKE_BUILD_TYPE Debug) 
#----------------------------------------------------------------------------
#find_package(EPICS4 REQUIRED)
#find_package(EPICS4 COMPONENTS pvAccess pvData)
#find_package(base REQUIRED)
#find_package(base COMPONENTS Com)
#----------------------------------------------------------------------------


##Search Source Files
include_directories(${PROJECT_SOURCE_DIR}/include ${pvAccess_DIR}/include  ${pvData_DIR}/include ${base_DIR}/include ${base_DIR}/include/os/Linux)

file(GLOB sources ${PROJECT_SOURCE_DIR}/src/*.cpp)
file(GLOB headers ${PROJECT_SOURCE_DIR}/include/*.hh)

file(GLOB libs ${pvAccess_DIR}/lib/linux-x86_64/* ${pvData_DIR}/lib/linux-x86_64/*  ${base_DIR}/lib/linux-x86_64/libCom.a /lib64/libreadline.so.6 /lib64/libdl.so.2)
#----------------------------------------------------------------------------

add_executable(${PROJ_NAME} test.cpp ${sources} ${headers})

target_link_libraries(${PROJ_NAME} ${libs})







