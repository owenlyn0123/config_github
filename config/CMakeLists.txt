cmake_minimum_required(VERSION 2.8)
project(config)

set(CMAKE_BUILD_TYPE "Debug")
set(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set(CMAKE_VERBOSE_MAKEFILE ON)

include_directories(${PROJECT_SOURCE_DIR}/head /usr/local/include/bsoncxx/v_noabi /usr/local/include/mongocxx/v_noabi)

aux_source_directory(${PROJECT_SOURCE_DIR}/src SRC_LIST)

add_executable(config_example ${SRC_LIST})

target_link_libraries(config_example bsoncxx mongocxx)

