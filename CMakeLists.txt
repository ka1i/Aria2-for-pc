cmake_minimum_required(VERSION 3.2)

project(Aria.app LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_BUILD_TYPE "Release") 
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/../bin)

add_definitions("-Wl,-rpath,./Aria2/lib")  

link_directories(./Aria2/lib)
include_directories(./Aria2/include)
#find_package(Qt5 COMPONENTS Core Quick REQUIRED)

add_executable(${PROJECT_NAME} "Aria2/src/Aria2.cpp" "assets.qrc")

target_link_libraries(${PROJECT_NAME} PRIVATE aria2)

message("PROJECT_NAME: ${PROJECT_NAME}")
message("BUILD_TYPE: ${CMAKE_BUILD_TYPE}")
message("PROJECT_BINARY_DIR: ${PROJECT_BINARY_DIR}")

#install(type filename DESTINATION 目标安装路径)