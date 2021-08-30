#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "template::baselib" for configuration "Debug"
set_property(TARGET template::baselib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(template::baselib PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/baselibd.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/./baselibd.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS template::baselib )
list(APPEND _IMPORT_CHECK_FILES_FOR_template::baselib "${_IMPORT_PREFIX}/lib/baselibd.lib" "${_IMPORT_PREFIX}/./baselibd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
