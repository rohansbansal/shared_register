# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.25.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.25.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rohanbansal/Developer/shared_register

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rohanbansal/Developer/shared_register/build

# Include any dependencies generated for this target.
include src/proto/CMakeFiles/myproto.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/proto/CMakeFiles/myproto.dir/compiler_depend.make

# Include the progress variables for this target.
include src/proto/CMakeFiles/myproto.dir/progress.make

# Include the compile flags for this target's objects.
include src/proto/CMakeFiles/myproto.dir/flags.make

src/proto/hello.pb.h: /Users/rohanbansal/Developer/shared_register/src/proto/hello.proto
src/proto/hello.pb.h: /usr/local/bin/protoc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/rohanbansal/Developer/shared_register/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running cpp protocol buffer compiler on hello.proto"
	cd /Users/rohanbansal/Developer/shared_register/build/src/proto && /usr/local/bin/protoc --cpp_out /Users/rohanbansal/Developer/shared_register/build/src/proto -I /Users/rohanbansal/Developer/shared_register/src/proto /Users/rohanbansal/Developer/shared_register/src/proto/hello.proto

src/proto/hello.pb.cc: src/proto/hello.pb.h
	@$(CMAKE_COMMAND) -E touch_nocreate src/proto/hello.pb.cc

src/proto/hello.grpc.pb.h: /Users/rohanbansal/Developer/shared_register/src/proto/hello.proto
src/proto/hello.grpc.pb.h: /usr/local/bin/protoc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/rohanbansal/Developer/shared_register/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Running grpc protocol buffer compiler on hello.proto"
	cd /Users/rohanbansal/Developer/shared_register/build/src/proto && /usr/local/bin/protoc --grpc_out /Users/rohanbansal/Developer/shared_register/build/src/proto --plugin=protoc-gen-grpc=/usr/local/bin/grpc_cpp_plugin -I /Users/rohanbansal/Developer/shared_register/src/proto /Users/rohanbansal/Developer/shared_register/src/proto/hello.proto

src/proto/hello.grpc.pb.cc: src/proto/hello.grpc.pb.h
	@$(CMAKE_COMMAND) -E touch_nocreate src/proto/hello.grpc.pb.cc

src/proto/CMakeFiles/myproto.dir/hello.pb.cc.o: src/proto/CMakeFiles/myproto.dir/flags.make
src/proto/CMakeFiles/myproto.dir/hello.pb.cc.o: src/proto/hello.pb.cc
src/proto/CMakeFiles/myproto.dir/hello.pb.cc.o: src/proto/CMakeFiles/myproto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rohanbansal/Developer/shared_register/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/proto/CMakeFiles/myproto.dir/hello.pb.cc.o"
	cd /Users/rohanbansal/Developer/shared_register/build/src/proto && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/proto/CMakeFiles/myproto.dir/hello.pb.cc.o -MF CMakeFiles/myproto.dir/hello.pb.cc.o.d -o CMakeFiles/myproto.dir/hello.pb.cc.o -c /Users/rohanbansal/Developer/shared_register/build/src/proto/hello.pb.cc

src/proto/CMakeFiles/myproto.dir/hello.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myproto.dir/hello.pb.cc.i"
	cd /Users/rohanbansal/Developer/shared_register/build/src/proto && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rohanbansal/Developer/shared_register/build/src/proto/hello.pb.cc > CMakeFiles/myproto.dir/hello.pb.cc.i

src/proto/CMakeFiles/myproto.dir/hello.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myproto.dir/hello.pb.cc.s"
	cd /Users/rohanbansal/Developer/shared_register/build/src/proto && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rohanbansal/Developer/shared_register/build/src/proto/hello.pb.cc -o CMakeFiles/myproto.dir/hello.pb.cc.s

src/proto/CMakeFiles/myproto.dir/hello.grpc.pb.cc.o: src/proto/CMakeFiles/myproto.dir/flags.make
src/proto/CMakeFiles/myproto.dir/hello.grpc.pb.cc.o: src/proto/hello.grpc.pb.cc
src/proto/CMakeFiles/myproto.dir/hello.grpc.pb.cc.o: src/proto/CMakeFiles/myproto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rohanbansal/Developer/shared_register/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/proto/CMakeFiles/myproto.dir/hello.grpc.pb.cc.o"
	cd /Users/rohanbansal/Developer/shared_register/build/src/proto && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/proto/CMakeFiles/myproto.dir/hello.grpc.pb.cc.o -MF CMakeFiles/myproto.dir/hello.grpc.pb.cc.o.d -o CMakeFiles/myproto.dir/hello.grpc.pb.cc.o -c /Users/rohanbansal/Developer/shared_register/build/src/proto/hello.grpc.pb.cc

src/proto/CMakeFiles/myproto.dir/hello.grpc.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myproto.dir/hello.grpc.pb.cc.i"
	cd /Users/rohanbansal/Developer/shared_register/build/src/proto && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rohanbansal/Developer/shared_register/build/src/proto/hello.grpc.pb.cc > CMakeFiles/myproto.dir/hello.grpc.pb.cc.i

src/proto/CMakeFiles/myproto.dir/hello.grpc.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myproto.dir/hello.grpc.pb.cc.s"
	cd /Users/rohanbansal/Developer/shared_register/build/src/proto && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rohanbansal/Developer/shared_register/build/src/proto/hello.grpc.pb.cc -o CMakeFiles/myproto.dir/hello.grpc.pb.cc.s

# Object files for target myproto
myproto_OBJECTS = \
"CMakeFiles/myproto.dir/hello.pb.cc.o" \
"CMakeFiles/myproto.dir/hello.grpc.pb.cc.o"

# External object files for target myproto
myproto_EXTERNAL_OBJECTS =

src/proto/libmyproto.a: src/proto/CMakeFiles/myproto.dir/hello.pb.cc.o
src/proto/libmyproto.a: src/proto/CMakeFiles/myproto.dir/hello.grpc.pb.cc.o
src/proto/libmyproto.a: src/proto/CMakeFiles/myproto.dir/build.make
src/proto/libmyproto.a: src/proto/CMakeFiles/myproto.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rohanbansal/Developer/shared_register/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libmyproto.a"
	cd /Users/rohanbansal/Developer/shared_register/build/src/proto && $(CMAKE_COMMAND) -P CMakeFiles/myproto.dir/cmake_clean_target.cmake
	cd /Users/rohanbansal/Developer/shared_register/build/src/proto && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/myproto.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/proto/CMakeFiles/myproto.dir/build: src/proto/libmyproto.a
.PHONY : src/proto/CMakeFiles/myproto.dir/build

src/proto/CMakeFiles/myproto.dir/clean:
	cd /Users/rohanbansal/Developer/shared_register/build/src/proto && $(CMAKE_COMMAND) -P CMakeFiles/myproto.dir/cmake_clean.cmake
.PHONY : src/proto/CMakeFiles/myproto.dir/clean

src/proto/CMakeFiles/myproto.dir/depend: src/proto/hello.grpc.pb.cc
src/proto/CMakeFiles/myproto.dir/depend: src/proto/hello.grpc.pb.h
src/proto/CMakeFiles/myproto.dir/depend: src/proto/hello.pb.cc
src/proto/CMakeFiles/myproto.dir/depend: src/proto/hello.pb.h
	cd /Users/rohanbansal/Developer/shared_register/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rohanbansal/Developer/shared_register /Users/rohanbansal/Developer/shared_register/src/proto /Users/rohanbansal/Developer/shared_register/build /Users/rohanbansal/Developer/shared_register/build/src/proto /Users/rohanbansal/Developer/shared_register/build/src/proto/CMakeFiles/myproto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/proto/CMakeFiles/myproto.dir/depend

