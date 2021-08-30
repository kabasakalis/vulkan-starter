# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6...3.17)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget template::baselib)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target template::baselib
add_library(template::baselib SHARED IMPORTED)

set_target_properties(template::baselib PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "\$<\$<NOT:\$<BOOL:ON>>:BASELIB_STATIC_DEFINE>;SYSTEM_WINDOWS;_SCL_SECURE_NO_WARNINGS;_CRT_SECURE_NO_WARNINGS"
  INTERFACE_COMPILE_OPTIONS "/MP;/W4;/wd4251;/wd4592;/w14242;/w14254;/w14263;/w14265;/w14287;/we4289;/w14296;/w14311;/w14545;/w14546;/w14547;/w14549;/w14555;/w14619;/w14640;/w14826;/w14905;/w14906;/w14928;\$<\$<CONFIG:Release>:;/Gw;/GS-;/GL;/GF;>"
  INTERFACE_INCLUDE_DIRECTORIES "D:/dev/projects/vulkan-demo/source/baselib/include;D:/dev/projects/vulkan-demo/cmake-build-debug/source/baselib/include"
)

# Import target "template::baselib" for configuration "Debug"
set_property(TARGET template::baselib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(template::baselib PROPERTIES
  IMPORTED_IMPLIB_DEBUG "D:/dev/projects/vulkan-demo/cmake-build-debug/baselibd.lib"
  IMPORTED_LOCATION_DEBUG "D:/dev/projects/vulkan-demo/cmake-build-debug/baselibd.dll"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
