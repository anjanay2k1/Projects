# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/build

# Include any dependencies generated for this target.
include CMakeFiles/Minesweeper.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Minesweeper.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Minesweeper.dir/flags.make

CMakeFiles/Minesweeper.dir/src/main.cpp.o: CMakeFiles/Minesweeper.dir/flags.make
CMakeFiles/Minesweeper.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Minesweeper.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Minesweeper.dir/src/main.cpp.o -c /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/src/main.cpp

CMakeFiles/Minesweeper.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Minesweeper.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/src/main.cpp > CMakeFiles/Minesweeper.dir/src/main.cpp.i

CMakeFiles/Minesweeper.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Minesweeper.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/src/main.cpp -o CMakeFiles/Minesweeper.dir/src/main.cpp.s

CMakeFiles/Minesweeper.dir/src/game.cpp.o: CMakeFiles/Minesweeper.dir/flags.make
CMakeFiles/Minesweeper.dir/src/game.cpp.o: ../src/game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Minesweeper.dir/src/game.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Minesweeper.dir/src/game.cpp.o -c /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/src/game.cpp

CMakeFiles/Minesweeper.dir/src/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Minesweeper.dir/src/game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/src/game.cpp > CMakeFiles/Minesweeper.dir/src/game.cpp.i

CMakeFiles/Minesweeper.dir/src/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Minesweeper.dir/src/game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/src/game.cpp -o CMakeFiles/Minesweeper.dir/src/game.cpp.s

CMakeFiles/Minesweeper.dir/src/controller.cpp.o: CMakeFiles/Minesweeper.dir/flags.make
CMakeFiles/Minesweeper.dir/src/controller.cpp.o: ../src/controller.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Minesweeper.dir/src/controller.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Minesweeper.dir/src/controller.cpp.o -c /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/src/controller.cpp

CMakeFiles/Minesweeper.dir/src/controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Minesweeper.dir/src/controller.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/src/controller.cpp > CMakeFiles/Minesweeper.dir/src/controller.cpp.i

CMakeFiles/Minesweeper.dir/src/controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Minesweeper.dir/src/controller.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/src/controller.cpp -o CMakeFiles/Minesweeper.dir/src/controller.cpp.s

CMakeFiles/Minesweeper.dir/src/renderer.cpp.o: CMakeFiles/Minesweeper.dir/flags.make
CMakeFiles/Minesweeper.dir/src/renderer.cpp.o: ../src/renderer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Minesweeper.dir/src/renderer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Minesweeper.dir/src/renderer.cpp.o -c /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/src/renderer.cpp

CMakeFiles/Minesweeper.dir/src/renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Minesweeper.dir/src/renderer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/src/renderer.cpp > CMakeFiles/Minesweeper.dir/src/renderer.cpp.i

CMakeFiles/Minesweeper.dir/src/renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Minesweeper.dir/src/renderer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/src/renderer.cpp -o CMakeFiles/Minesweeper.dir/src/renderer.cpp.s

# Object files for target Minesweeper
Minesweeper_OBJECTS = \
"CMakeFiles/Minesweeper.dir/src/main.cpp.o" \
"CMakeFiles/Minesweeper.dir/src/game.cpp.o" \
"CMakeFiles/Minesweeper.dir/src/controller.cpp.o" \
"CMakeFiles/Minesweeper.dir/src/renderer.cpp.o"

# External object files for target Minesweeper
Minesweeper_EXTERNAL_OBJECTS =

Minesweeper: CMakeFiles/Minesweeper.dir/src/main.cpp.o
Minesweeper: CMakeFiles/Minesweeper.dir/src/game.cpp.o
Minesweeper: CMakeFiles/Minesweeper.dir/src/controller.cpp.o
Minesweeper: CMakeFiles/Minesweeper.dir/src/renderer.cpp.o
Minesweeper: CMakeFiles/Minesweeper.dir/build.make
Minesweeper: CMakeFiles/Minesweeper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Minesweeper"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Minesweeper.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Minesweeper.dir/build: Minesweeper

.PHONY : CMakeFiles/Minesweeper.dir/build

CMakeFiles/Minesweeper.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Minesweeper.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Minesweeper.dir/clean

CMakeFiles/Minesweeper.dir/depend:
	cd /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/build /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/build /home/ashutosh/Learn/Code/Cpp/UdacityNanoDegreeC++/CppND-Capstone-Minesweeper/build/CMakeFiles/Minesweeper.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Minesweeper.dir/depend
