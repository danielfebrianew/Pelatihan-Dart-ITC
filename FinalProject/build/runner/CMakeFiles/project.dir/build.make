# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\asus\Documents\Dart\FinalProject\project\windows

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\asus\Documents\Dart\FinalProject\build

# Include any dependencies generated for this target.
include runner/CMakeFiles/project.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include runner/CMakeFiles/project.dir/compiler_depend.make

# Include the progress variables for this target.
include runner/CMakeFiles/project.dir/progress.make

# Include the compile flags for this target's objects.
include runner/CMakeFiles/project.dir/flags.make

runner/CMakeFiles/project.dir/flutter_window.cpp.obj: runner/CMakeFiles/project.dir/flags.make
runner/CMakeFiles/project.dir/flutter_window.cpp.obj: runner/CMakeFiles/project.dir/includes_CXX.rsp
runner/CMakeFiles/project.dir/flutter_window.cpp.obj: C:/Users/asus/Documents/Dart/FinalProject/project/windows/runner/flutter_window.cpp
runner/CMakeFiles/project.dir/flutter_window.cpp.obj: runner/CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\asus\Documents\Dart\FinalProject\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object runner/CMakeFiles/project.dir/flutter_window.cpp.obj"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT runner/CMakeFiles/project.dir/flutter_window.cpp.obj -MF CMakeFiles\project.dir\flutter_window.cpp.obj.d -o CMakeFiles\project.dir\flutter_window.cpp.obj -c C:\Users\asus\Documents\Dart\FinalProject\project\windows\runner\flutter_window.cpp

runner/CMakeFiles/project.dir/flutter_window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project.dir/flutter_window.cpp.i"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\asus\Documents\Dart\FinalProject\project\windows\runner\flutter_window.cpp > CMakeFiles\project.dir\flutter_window.cpp.i

runner/CMakeFiles/project.dir/flutter_window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project.dir/flutter_window.cpp.s"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\asus\Documents\Dart\FinalProject\project\windows\runner\flutter_window.cpp -o CMakeFiles\project.dir\flutter_window.cpp.s

runner/CMakeFiles/project.dir/main.cpp.obj: runner/CMakeFiles/project.dir/flags.make
runner/CMakeFiles/project.dir/main.cpp.obj: runner/CMakeFiles/project.dir/includes_CXX.rsp
runner/CMakeFiles/project.dir/main.cpp.obj: C:/Users/asus/Documents/Dart/FinalProject/project/windows/runner/main.cpp
runner/CMakeFiles/project.dir/main.cpp.obj: runner/CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\asus\Documents\Dart\FinalProject\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object runner/CMakeFiles/project.dir/main.cpp.obj"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT runner/CMakeFiles/project.dir/main.cpp.obj -MF CMakeFiles\project.dir\main.cpp.obj.d -o CMakeFiles\project.dir\main.cpp.obj -c C:\Users\asus\Documents\Dart\FinalProject\project\windows\runner\main.cpp

runner/CMakeFiles/project.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project.dir/main.cpp.i"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\asus\Documents\Dart\FinalProject\project\windows\runner\main.cpp > CMakeFiles\project.dir\main.cpp.i

runner/CMakeFiles/project.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project.dir/main.cpp.s"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\asus\Documents\Dart\FinalProject\project\windows\runner\main.cpp -o CMakeFiles\project.dir\main.cpp.s

runner/CMakeFiles/project.dir/utils.cpp.obj: runner/CMakeFiles/project.dir/flags.make
runner/CMakeFiles/project.dir/utils.cpp.obj: runner/CMakeFiles/project.dir/includes_CXX.rsp
runner/CMakeFiles/project.dir/utils.cpp.obj: C:/Users/asus/Documents/Dart/FinalProject/project/windows/runner/utils.cpp
runner/CMakeFiles/project.dir/utils.cpp.obj: runner/CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\asus\Documents\Dart\FinalProject\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object runner/CMakeFiles/project.dir/utils.cpp.obj"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT runner/CMakeFiles/project.dir/utils.cpp.obj -MF CMakeFiles\project.dir\utils.cpp.obj.d -o CMakeFiles\project.dir\utils.cpp.obj -c C:\Users\asus\Documents\Dart\FinalProject\project\windows\runner\utils.cpp

runner/CMakeFiles/project.dir/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project.dir/utils.cpp.i"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\asus\Documents\Dart\FinalProject\project\windows\runner\utils.cpp > CMakeFiles\project.dir\utils.cpp.i

runner/CMakeFiles/project.dir/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project.dir/utils.cpp.s"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\asus\Documents\Dart\FinalProject\project\windows\runner\utils.cpp -o CMakeFiles\project.dir\utils.cpp.s

runner/CMakeFiles/project.dir/win32_window.cpp.obj: runner/CMakeFiles/project.dir/flags.make
runner/CMakeFiles/project.dir/win32_window.cpp.obj: runner/CMakeFiles/project.dir/includes_CXX.rsp
runner/CMakeFiles/project.dir/win32_window.cpp.obj: C:/Users/asus/Documents/Dart/FinalProject/project/windows/runner/win32_window.cpp
runner/CMakeFiles/project.dir/win32_window.cpp.obj: runner/CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\asus\Documents\Dart\FinalProject\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object runner/CMakeFiles/project.dir/win32_window.cpp.obj"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT runner/CMakeFiles/project.dir/win32_window.cpp.obj -MF CMakeFiles\project.dir\win32_window.cpp.obj.d -o CMakeFiles\project.dir\win32_window.cpp.obj -c C:\Users\asus\Documents\Dart\FinalProject\project\windows\runner\win32_window.cpp

runner/CMakeFiles/project.dir/win32_window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project.dir/win32_window.cpp.i"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\asus\Documents\Dart\FinalProject\project\windows\runner\win32_window.cpp > CMakeFiles\project.dir\win32_window.cpp.i

runner/CMakeFiles/project.dir/win32_window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project.dir/win32_window.cpp.s"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\asus\Documents\Dart\FinalProject\project\windows\runner\win32_window.cpp -o CMakeFiles\project.dir\win32_window.cpp.s

runner/CMakeFiles/project.dir/__/flutter/generated_plugin_registrant.cc.obj: runner/CMakeFiles/project.dir/flags.make
runner/CMakeFiles/project.dir/__/flutter/generated_plugin_registrant.cc.obj: runner/CMakeFiles/project.dir/includes_CXX.rsp
runner/CMakeFiles/project.dir/__/flutter/generated_plugin_registrant.cc.obj: C:/Users/asus/Documents/Dart/FinalProject/project/windows/flutter/generated_plugin_registrant.cc
runner/CMakeFiles/project.dir/__/flutter/generated_plugin_registrant.cc.obj: runner/CMakeFiles/project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\asus\Documents\Dart\FinalProject\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object runner/CMakeFiles/project.dir/__/flutter/generated_plugin_registrant.cc.obj"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT runner/CMakeFiles/project.dir/__/flutter/generated_plugin_registrant.cc.obj -MF CMakeFiles\project.dir\__\flutter\generated_plugin_registrant.cc.obj.d -o CMakeFiles\project.dir\__\flutter\generated_plugin_registrant.cc.obj -c C:\Users\asus\Documents\Dart\FinalProject\project\windows\flutter\generated_plugin_registrant.cc

runner/CMakeFiles/project.dir/__/flutter/generated_plugin_registrant.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project.dir/__/flutter/generated_plugin_registrant.cc.i"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\asus\Documents\Dart\FinalProject\project\windows\flutter\generated_plugin_registrant.cc > CMakeFiles\project.dir\__\flutter\generated_plugin_registrant.cc.i

runner/CMakeFiles/project.dir/__/flutter/generated_plugin_registrant.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project.dir/__/flutter/generated_plugin_registrant.cc.s"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\asus\Documents\Dart\FinalProject\project\windows\flutter\generated_plugin_registrant.cc -o CMakeFiles\project.dir\__\flutter\generated_plugin_registrant.cc.s

runner/CMakeFiles/project.dir/Runner.rc.obj: runner/CMakeFiles/project.dir/flags.make
runner/CMakeFiles/project.dir/Runner.rc.obj: C:/Users/asus/Documents/Dart/FinalProject/project/windows/runner/Runner.rc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\asus\Documents\Dart\FinalProject\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building RC object runner/CMakeFiles/project.dir/Runner.rc.obj"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && C:\MinGW\bin\windres.exe -O coff $(RC_DEFINES) $(RC_INCLUDES) $(RC_FLAGS) C:\Users\asus\Documents\Dart\FinalProject\project\windows\runner\Runner.rc CMakeFiles\project.dir\Runner.rc.obj

# Object files for target project
project_OBJECTS = \
"CMakeFiles/project.dir/flutter_window.cpp.obj" \
"CMakeFiles/project.dir/main.cpp.obj" \
"CMakeFiles/project.dir/utils.cpp.obj" \
"CMakeFiles/project.dir/win32_window.cpp.obj" \
"CMakeFiles/project.dir/__/flutter/generated_plugin_registrant.cc.obj" \
"CMakeFiles/project.dir/Runner.rc.obj"

# External object files for target project
project_EXTERNAL_OBJECTS =

runner/project.exe: runner/CMakeFiles/project.dir/flutter_window.cpp.obj
runner/project.exe: runner/CMakeFiles/project.dir/main.cpp.obj
runner/project.exe: runner/CMakeFiles/project.dir/utils.cpp.obj
runner/project.exe: runner/CMakeFiles/project.dir/win32_window.cpp.obj
runner/project.exe: runner/CMakeFiles/project.dir/__/flutter/generated_plugin_registrant.cc.obj
runner/project.exe: runner/CMakeFiles/project.dir/Runner.rc.obj
runner/project.exe: runner/CMakeFiles/project.dir/build.make
runner/project.exe: flutter/libflutter_wrapper_app.a
runner/project.exe: C:/Users/asus/Documents/Dart/FinalProject/project/windows/flutter/ephemeral/flutter_windows.dll.lib
runner/project.exe: C:/Users/asus/Documents/Dart/FinalProject/project/windows/runner/runner.exe.manifest
runner/project.exe: runner/CMakeFiles/project.dir/linkLibs.rsp
runner/project.exe: runner/CMakeFiles/project.dir/objects1.rsp
runner/project.exe: runner/CMakeFiles/project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\asus\Documents\Dart\FinalProject\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable project.exe"
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\project.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
runner/CMakeFiles/project.dir/build: runner/project.exe
.PHONY : runner/CMakeFiles/project.dir/build

runner/CMakeFiles/project.dir/clean:
	cd /d C:\Users\asus\Documents\Dart\FinalProject\build\runner && $(CMAKE_COMMAND) -P CMakeFiles\project.dir\cmake_clean.cmake
.PHONY : runner/CMakeFiles/project.dir/clean

runner/CMakeFiles/project.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\asus\Documents\Dart\FinalProject\project\windows C:\Users\asus\Documents\Dart\FinalProject\project\windows\runner C:\Users\asus\Documents\Dart\FinalProject\build C:\Users\asus\Documents\Dart\FinalProject\build\runner C:\Users\asus\Documents\Dart\FinalProject\build\runner\CMakeFiles\project.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : runner/CMakeFiles/project.dir/depend

