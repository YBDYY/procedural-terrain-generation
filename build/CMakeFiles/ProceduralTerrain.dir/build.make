# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/deividas/PTG

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/deividas/PTG/build

# Include any dependencies generated for this target.
include CMakeFiles/ProceduralTerrain.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ProceduralTerrain.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ProceduralTerrain.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ProceduralTerrain.dir/flags.make

CMakeFiles/ProceduralTerrain.dir/src/cameramovement.cpp.o: CMakeFiles/ProceduralTerrain.dir/flags.make
CMakeFiles/ProceduralTerrain.dir/src/cameramovement.cpp.o: /home/deividas/PTG/src/cameramovement.cpp
CMakeFiles/ProceduralTerrain.dir/src/cameramovement.cpp.o: CMakeFiles/ProceduralTerrain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/deividas/PTG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ProceduralTerrain.dir/src/cameramovement.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ProceduralTerrain.dir/src/cameramovement.cpp.o -MF CMakeFiles/ProceduralTerrain.dir/src/cameramovement.cpp.o.d -o CMakeFiles/ProceduralTerrain.dir/src/cameramovement.cpp.o -c /home/deividas/PTG/src/cameramovement.cpp

CMakeFiles/ProceduralTerrain.dir/src/cameramovement.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ProceduralTerrain.dir/src/cameramovement.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deividas/PTG/src/cameramovement.cpp > CMakeFiles/ProceduralTerrain.dir/src/cameramovement.cpp.i

CMakeFiles/ProceduralTerrain.dir/src/cameramovement.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ProceduralTerrain.dir/src/cameramovement.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deividas/PTG/src/cameramovement.cpp -o CMakeFiles/ProceduralTerrain.dir/src/cameramovement.cpp.s

CMakeFiles/ProceduralTerrain.dir/src/main.cpp.o: CMakeFiles/ProceduralTerrain.dir/flags.make
CMakeFiles/ProceduralTerrain.dir/src/main.cpp.o: /home/deividas/PTG/src/main.cpp
CMakeFiles/ProceduralTerrain.dir/src/main.cpp.o: CMakeFiles/ProceduralTerrain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/deividas/PTG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ProceduralTerrain.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ProceduralTerrain.dir/src/main.cpp.o -MF CMakeFiles/ProceduralTerrain.dir/src/main.cpp.o.d -o CMakeFiles/ProceduralTerrain.dir/src/main.cpp.o -c /home/deividas/PTG/src/main.cpp

CMakeFiles/ProceduralTerrain.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ProceduralTerrain.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deividas/PTG/src/main.cpp > CMakeFiles/ProceduralTerrain.dir/src/main.cpp.i

CMakeFiles/ProceduralTerrain.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ProceduralTerrain.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deividas/PTG/src/main.cpp -o CMakeFiles/ProceduralTerrain.dir/src/main.cpp.s

CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui.cpp.o: CMakeFiles/ProceduralTerrain.dir/flags.make
CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui.cpp.o: /home/deividas/PTG/libs/imgui/imgui.cpp
CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui.cpp.o: CMakeFiles/ProceduralTerrain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/deividas/PTG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui.cpp.o -MF CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui.cpp.o.d -o CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui.cpp.o -c /home/deividas/PTG/libs/imgui/imgui.cpp

CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deividas/PTG/libs/imgui/imgui.cpp > CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui.cpp.i

CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deividas/PTG/libs/imgui/imgui.cpp -o CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui.cpp.s

CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_draw.cpp.o: CMakeFiles/ProceduralTerrain.dir/flags.make
CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_draw.cpp.o: /home/deividas/PTG/libs/imgui/imgui_draw.cpp
CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_draw.cpp.o: CMakeFiles/ProceduralTerrain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/deividas/PTG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_draw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_draw.cpp.o -MF CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_draw.cpp.o.d -o CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_draw.cpp.o -c /home/deividas/PTG/libs/imgui/imgui_draw.cpp

CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deividas/PTG/libs/imgui/imgui_draw.cpp > CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_draw.cpp.i

CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deividas/PTG/libs/imgui/imgui_draw.cpp -o CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_draw.cpp.s

CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_widgets.cpp.o: CMakeFiles/ProceduralTerrain.dir/flags.make
CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_widgets.cpp.o: /home/deividas/PTG/libs/imgui/imgui_widgets.cpp
CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_widgets.cpp.o: CMakeFiles/ProceduralTerrain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/deividas/PTG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_widgets.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_widgets.cpp.o -MF CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_widgets.cpp.o -c /home/deividas/PTG/libs/imgui/imgui_widgets.cpp

CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deividas/PTG/libs/imgui/imgui_widgets.cpp > CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_widgets.cpp.i

CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deividas/PTG/libs/imgui/imgui_widgets.cpp -o CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_widgets.cpp.s

CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_tables.cpp.o: CMakeFiles/ProceduralTerrain.dir/flags.make
CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_tables.cpp.o: /home/deividas/PTG/libs/imgui/imgui_tables.cpp
CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_tables.cpp.o: CMakeFiles/ProceduralTerrain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/deividas/PTG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_tables.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_tables.cpp.o -MF CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_tables.cpp.o.d -o CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_tables.cpp.o -c /home/deividas/PTG/libs/imgui/imgui_tables.cpp

CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_tables.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deividas/PTG/libs/imgui/imgui_tables.cpp > CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_tables.cpp.i

CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_tables.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deividas/PTG/libs/imgui/imgui_tables.cpp -o CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_tables.cpp.s

# Object files for target ProceduralTerrain
ProceduralTerrain_OBJECTS = \
"CMakeFiles/ProceduralTerrain.dir/src/cameramovement.cpp.o" \
"CMakeFiles/ProceduralTerrain.dir/src/main.cpp.o" \
"CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui.cpp.o" \
"CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_draw.cpp.o" \
"CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_widgets.cpp.o" \
"CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_tables.cpp.o"

# External object files for target ProceduralTerrain
ProceduralTerrain_EXTERNAL_OBJECTS =

ProceduralTerrain: CMakeFiles/ProceduralTerrain.dir/src/cameramovement.cpp.o
ProceduralTerrain: CMakeFiles/ProceduralTerrain.dir/src/main.cpp.o
ProceduralTerrain: CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui.cpp.o
ProceduralTerrain: CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_draw.cpp.o
ProceduralTerrain: CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_widgets.cpp.o
ProceduralTerrain: CMakeFiles/ProceduralTerrain.dir/libs/imgui/imgui_tables.cpp.o
ProceduralTerrain: CMakeFiles/ProceduralTerrain.dir/build.make
ProceduralTerrain: /usr/local/lib/libraylib.a
ProceduralTerrain: CMakeFiles/ProceduralTerrain.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/deividas/PTG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable ProceduralTerrain"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ProceduralTerrain.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ProceduralTerrain.dir/build: ProceduralTerrain
.PHONY : CMakeFiles/ProceduralTerrain.dir/build

CMakeFiles/ProceduralTerrain.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ProceduralTerrain.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ProceduralTerrain.dir/clean

CMakeFiles/ProceduralTerrain.dir/depend:
	cd /home/deividas/PTG/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/deividas/PTG /home/deividas/PTG /home/deividas/PTG/build /home/deividas/PTG/build /home/deividas/PTG/build/CMakeFiles/ProceduralTerrain.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ProceduralTerrain.dir/depend

