# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\University\SEM 2\SDA\Assignments\Assignment 4 P21"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\University\SEM 2\SDA\Assignments\Assignment 4 P21\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles\Assignment_4_P21.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\Assignment_4_P21.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\Assignment_4_P21.dir\flags.make

CMakeFiles\Assignment_4_P21.dir\main.cpp.obj: CMakeFiles\Assignment_4_P21.dir\flags.make
CMakeFiles\Assignment_4_P21.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\University\SEM 2\SDA\Assignments\Assignment 4 P21\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Assignment_4_P21.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~3\2019\COMMUN~1\VC\Tools\MSVC\1420~1.275\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Assignment_4_P21.dir\main.cpp.obj /FdCMakeFiles\Assignment_4_P21.dir\ /FS -c "D:\University\SEM 2\SDA\Assignments\Assignment 4 P21\main.cpp"
<<

CMakeFiles\Assignment_4_P21.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment_4_P21.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~3\2019\COMMUN~1\VC\Tools\MSVC\1420~1.275\bin\Hostx86\x86\cl.exe > CMakeFiles\Assignment_4_P21.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\University\SEM 2\SDA\Assignments\Assignment 4 P21\main.cpp"
<<

CMakeFiles\Assignment_4_P21.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment_4_P21.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~3\2019\COMMUN~1\VC\Tools\MSVC\1420~1.275\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Assignment_4_P21.dir\main.cpp.s /c "D:\University\SEM 2\SDA\Assignments\Assignment 4 P21\main.cpp"
<<

CMakeFiles\Assignment_4_P21.dir\SortedMultiMap.cpp.obj: CMakeFiles\Assignment_4_P21.dir\flags.make
CMakeFiles\Assignment_4_P21.dir\SortedMultiMap.cpp.obj: ..\SortedMultiMap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\University\SEM 2\SDA\Assignments\Assignment 4 P21\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Assignment_4_P21.dir/SortedMultiMap.cpp.obj"
	C:\PROGRA~2\MICROS~3\2019\COMMUN~1\VC\Tools\MSVC\1420~1.275\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Assignment_4_P21.dir\SortedMultiMap.cpp.obj /FdCMakeFiles\Assignment_4_P21.dir\ /FS -c "D:\University\SEM 2\SDA\Assignments\Assignment 4 P21\SortedMultiMap.cpp"
<<

CMakeFiles\Assignment_4_P21.dir\SortedMultiMap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment_4_P21.dir/SortedMultiMap.cpp.i"
	C:\PROGRA~2\MICROS~3\2019\COMMUN~1\VC\Tools\MSVC\1420~1.275\bin\Hostx86\x86\cl.exe > CMakeFiles\Assignment_4_P21.dir\SortedMultiMap.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\University\SEM 2\SDA\Assignments\Assignment 4 P21\SortedMultiMap.cpp"
<<

CMakeFiles\Assignment_4_P21.dir\SortedMultiMap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment_4_P21.dir/SortedMultiMap.cpp.s"
	C:\PROGRA~2\MICROS~3\2019\COMMUN~1\VC\Tools\MSVC\1420~1.275\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Assignment_4_P21.dir\SortedMultiMap.cpp.s /c "D:\University\SEM 2\SDA\Assignments\Assignment 4 P21\SortedMultiMap.cpp"
<<

# Object files for target Assignment_4_P21
Assignment_4_P21_OBJECTS = \
"CMakeFiles\Assignment_4_P21.dir\main.cpp.obj" \
"CMakeFiles\Assignment_4_P21.dir\SortedMultiMap.cpp.obj"

# External object files for target Assignment_4_P21
Assignment_4_P21_EXTERNAL_OBJECTS =

Assignment_4_P21.exe: CMakeFiles\Assignment_4_P21.dir\main.cpp.obj
Assignment_4_P21.exe: CMakeFiles\Assignment_4_P21.dir\SortedMultiMap.cpp.obj
Assignment_4_P21.exe: CMakeFiles\Assignment_4_P21.dir\build.make
Assignment_4_P21.exe: CMakeFiles\Assignment_4_P21.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\University\SEM 2\SDA\Assignments\Assignment 4 P21\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Assignment_4_P21.exe"
	"C:\Program Files\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\Assignment_4_P21.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100177~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100177~1.0\x86\mt.exe --manifests  -- C:\PROGRA~2\MICROS~3\2019\COMMUN~1\VC\Tools\MSVC\1420~1.275\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\Assignment_4_P21.dir\objects1.rsp @<<
 /out:Assignment_4_P21.exe /implib:Assignment_4_P21.lib /pdb:"D:\University\SEM 2\SDA\Assignments\Assignment 4 P21\cmake-build-debug\Assignment_4_P21.pdb" /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\Assignment_4_P21.dir\build: Assignment_4_P21.exe

.PHONY : CMakeFiles\Assignment_4_P21.dir\build

CMakeFiles\Assignment_4_P21.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Assignment_4_P21.dir\cmake_clean.cmake
.PHONY : CMakeFiles\Assignment_4_P21.dir\clean

CMakeFiles\Assignment_4_P21.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" "D:\University\SEM 2\SDA\Assignments\Assignment 4 P21" "D:\University\SEM 2\SDA\Assignments\Assignment 4 P21" "D:\University\SEM 2\SDA\Assignments\Assignment 4 P21\cmake-build-debug" "D:\University\SEM 2\SDA\Assignments\Assignment 4 P21\cmake-build-debug" "D:\University\SEM 2\SDA\Assignments\Assignment 4 P21\cmake-build-debug\CMakeFiles\Assignment_4_P21.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles\Assignment_4_P21.dir\depend

