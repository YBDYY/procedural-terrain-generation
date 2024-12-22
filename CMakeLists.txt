# Minimum version of CMake
cmake_minimum_required(VERSION 3.10)

# Project name and settings
project(ProceduralTerrain LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add Raylib (ensure Raylib is installed)
find_package(raylib CONFIG REQUIRED)

# Include directories for your code and libraries
include_directories(
    ${CMAKE_SOURCE_DIR}/libs   # Include FastNoiseLite.h
    include                    # Project header files
)

# Source files
file(GLOB PROJECT_SOURCES
    src/*.cpp                  # All .cpp files in the src directory
)

# ImGui files
set(IMGUI_SOURCES
    libs/imgui/imgui.cpp
    libs/imgui/imgui_draw.cpp
    libs/imgui/imgui_widgets.cpp
    libs/imgui/imgui_tables.cpp
)

# Add the executable
add_executable(ProceduralTerrain
    ${PROJECT_SOURCES}         # Project source files
    ${IMGUI_SOURCES}           # ImGui source files
)

# Link Raylib with the project
target_link_libraries(ProceduralTerrain raylib)

# Debugging: Show include directories
message(STATUS "Include directories: ${CMAKE_SOURCE_DIR}/libs")
