set(PROJ_NAME test)
project(${PROJ_NAME})
cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

set(pvAccess_DIR /opt/egcs/epics/EPICS4/pvAccessCPP)
set(pvData_DIR /opt/egcs/epics/EPICS4/pvDataCPP)
set(base_DIR /opt/egcs/epics/base)    

include_directories(${pvAccess_DIR}/include  ${pvData_DIR}/include ${base_DIR}/include ${base_DIR}/include/os/Linux ${PROJECT_SOURCE_DIR}/include)

add_executable(${PROJ_NAME} test.cpp)

target_link_libraries(${PROJ_NAME} ${PROJECT_SOURCE_DIR}/lib/libGPPDMonitorDataSvc.so ${pvData_DIR}/lib/linux-x86_64/libpvData.so)
