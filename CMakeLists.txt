cmake_minimum_required(VERSION 3.2)

project(Aria2.app LANGUAGES CXX)

set(Qt5_DIR "/home/mardan/application/Qt5.12.2/5.12.2/gcc_64/lib/cmake/Qt5")

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_BUILD_TYPE "Release") 
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/../bin)

add_definitions("-Wl,-rpath,./Aria2/lib")  

link_directories("./Aria2/lib" "./MaterialUI/lib")

include_directories("./Aria2/include" "./MaterialUI")
find_package(Qt5 COMPONENTS Core Widgets REQUIRED)

add_executable(${PROJECT_NAME} ${ui_FILES} "main.cpp" "MaterialUI/mainwindow.h" "MaterialUI/mainwindow.cpp" "MaterialUI/mainwindow.ui")

target_link_libraries(${PROJECT_NAME} PRIVATE aria2 components.a Qt5::Core Qt5::Widgets)

message("PROJECT_NAME: ${PROJECT_NAME}")
message("BUILD_TYPE: ${CMAKE_BUILD_TYPE}")
message("PROJECT_BINARY_DIR: ${PROJECT_BINARY_DIR}")

#install(type filename DESTINATION 目标安装路径)