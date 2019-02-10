cmake_minimum_required(VERSION 3.1)

set(CMAKE_BUILD_TYPE Debug)

#find_path(SPNAV_INCLUDE_PATH NAMES "spnav.h")
find_package(Boost 1.36.0 REQUIRED system)

include_directories(${SPNAV_INCLUDE_PATH})
include_directories(${Boost_INCLUDE_DIRS})
add_executable(foo foo.cpp)
target_link_libraries(foo LINK_PUBLIC ${Boost_LIBRARIES} pthread)
