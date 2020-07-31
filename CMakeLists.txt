cmake_minimum_required(VERSION 3.15)

project(fakeThunder LANGUAGES CXX VERSION 0.0.1)


set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_BUILD_TYPE "Release") 
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/../bin)
set(Qt5_DIR "/Users/mardan/Tools/Qt5.12.6/5.12.6/clang_64/lib/cmake/Qt5")

include_directories(./src)
aux_source_directory(./src SRC_DIR)

find_package(Qt5 COMPONENTS Core Widgets REQUIRED)

add_executable(${PROJECT_NAME} ${ui_FILES} ${SRC_DIR})

target_link_libraries(${PROJECT_NAME} PRIVATE Qt5::Core Qt5::Widgets)

message(STATUS "PROJECT_NAME: ${PROJECT_NAME}")
message(STATUS "BUILD_TYPE: ${CMAKE_BUILD_TYPE}")
message(STATUS "BINARY_DIR: ${EXECUTABLE_OUTPUT_PATH}")

