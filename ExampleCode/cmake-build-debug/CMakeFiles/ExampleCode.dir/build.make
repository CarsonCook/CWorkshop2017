# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2017.2.3\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2017.2.3\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/ExampleCode.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ExampleCode.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ExampleCode.dir/flags.make

CMakeFiles/ExampleCode.dir/main.c.obj: CMakeFiles/ExampleCode.dir/flags.make
CMakeFiles/ExampleCode.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ExampleCode.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\ExampleCode.dir\main.c.obj   -c "C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode\main.c"

CMakeFiles/ExampleCode.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ExampleCode.dir/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode\main.c" > CMakeFiles\ExampleCode.dir\main.c.i

CMakeFiles/ExampleCode.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ExampleCode.dir/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode\main.c" -o CMakeFiles\ExampleCode.dir\main.c.s

CMakeFiles/ExampleCode.dir/main.c.obj.requires:

.PHONY : CMakeFiles/ExampleCode.dir/main.c.obj.requires

CMakeFiles/ExampleCode.dir/main.c.obj.provides: CMakeFiles/ExampleCode.dir/main.c.obj.requires
	$(MAKE) -f CMakeFiles\ExampleCode.dir\build.make CMakeFiles/ExampleCode.dir/main.c.obj.provides.build
.PHONY : CMakeFiles/ExampleCode.dir/main.c.obj.provides

CMakeFiles/ExampleCode.dir/main.c.obj.provides.build: CMakeFiles/ExampleCode.dir/main.c.obj


CMakeFiles/ExampleCode.dir/scopes.c.obj: CMakeFiles/ExampleCode.dir/flags.make
CMakeFiles/ExampleCode.dir/scopes.c.obj: ../scopes.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/ExampleCode.dir/scopes.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\ExampleCode.dir\scopes.c.obj   -c "C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode\scopes.c"

CMakeFiles/ExampleCode.dir/scopes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ExampleCode.dir/scopes.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode\scopes.c" > CMakeFiles\ExampleCode.dir\scopes.c.i

CMakeFiles/ExampleCode.dir/scopes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ExampleCode.dir/scopes.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode\scopes.c" -o CMakeFiles\ExampleCode.dir\scopes.c.s

CMakeFiles/ExampleCode.dir/scopes.c.obj.requires:

.PHONY : CMakeFiles/ExampleCode.dir/scopes.c.obj.requires

CMakeFiles/ExampleCode.dir/scopes.c.obj.provides: CMakeFiles/ExampleCode.dir/scopes.c.obj.requires
	$(MAKE) -f CMakeFiles\ExampleCode.dir\build.make CMakeFiles/ExampleCode.dir/scopes.c.obj.provides.build
.PHONY : CMakeFiles/ExampleCode.dir/scopes.c.obj.provides

CMakeFiles/ExampleCode.dir/scopes.c.obj.provides.build: CMakeFiles/ExampleCode.dir/scopes.c.obj


# Object files for target ExampleCode
ExampleCode_OBJECTS = \
"CMakeFiles/ExampleCode.dir/main.c.obj" \
"CMakeFiles/ExampleCode.dir/scopes.c.obj"

# External object files for target ExampleCode
ExampleCode_EXTERNAL_OBJECTS =

ExampleCode.exe: CMakeFiles/ExampleCode.dir/main.c.obj
ExampleCode.exe: CMakeFiles/ExampleCode.dir/scopes.c.obj
ExampleCode.exe: CMakeFiles/ExampleCode.dir/build.make
ExampleCode.exe: CMakeFiles/ExampleCode.dir/linklibs.rsp
ExampleCode.exe: CMakeFiles/ExampleCode.dir/objects1.rsp
ExampleCode.exe: CMakeFiles/ExampleCode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable ExampleCode.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ExampleCode.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ExampleCode.dir/build: ExampleCode.exe

.PHONY : CMakeFiles/ExampleCode.dir/build

CMakeFiles/ExampleCode.dir/requires: CMakeFiles/ExampleCode.dir/main.c.obj.requires
CMakeFiles/ExampleCode.dir/requires: CMakeFiles/ExampleCode.dir/scopes.c.obj.requires

.PHONY : CMakeFiles/ExampleCode.dir/requires

CMakeFiles/ExampleCode.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ExampleCode.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ExampleCode.dir/clean

CMakeFiles/ExampleCode.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode" "C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode" "C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode\cmake-build-debug" "C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode\cmake-build-debug" "C:\Users\cookc\Desktop\Queens\DoIT\Workshops\C Workshop\ExampleCode\cmake-build-debug\CMakeFiles\ExampleCode.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/ExampleCode.dir/depend

