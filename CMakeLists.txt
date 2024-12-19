# Minimum version of CMake
cmake_minimum_required(VERSION 3.10)

# Project name and settings
project(ProceduralTerrain LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add Raylib (ensure Raylib is installed)
find_package(raylib CONFIG REQUIRED)

# Include directories for libraries
include_directories(
    libs/imgui
)

# Add source files for the executable
add_executable(ProceduralTerrain
    main.cpp
    libs/imgui/imgui.cpp
    libs/imgui/imgui_draw.cpp
    libs/imgui/imgui_widgets.cpp
    libs/imgui/imgui_tables.cpp
)

# Link Raylib with the project
target_link_libraries(ProceduralTerrain raylib)