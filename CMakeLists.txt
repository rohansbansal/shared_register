cmake_minimum_required(VERSION 3.13)
project(shared-register LANGUAGES CXX)

set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
set(CMAKE_CXX_STANDARD 17)

add_subdirectory(src/client)
add_subdirectory(src/server)
add_subdirectory(src/proto)


