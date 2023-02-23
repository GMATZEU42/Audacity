########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(JPEG_FIND_QUIETLY)
    set(JPEG_MESSAGE_MODE VERBOSE)
else()
    set(JPEG_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/module-JPEGTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${libjpeg-turbo_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(JPEG_VERSION_STRING "2.0.5")
set(JPEG_INCLUDE_DIRS ${libjpeg-turbo_INCLUDE_DIRS_DEBUG} )
set(JPEG_INCLUDE_DIR ${libjpeg-turbo_INCLUDE_DIRS_DEBUG} )
set(JPEG_LIBRARIES ${libjpeg-turbo_LIBRARIES_DEBUG} )
set(JPEG_DEFINITIONS ${libjpeg-turbo_DEFINITIONS_DEBUG} )

# Only the first installed configuration is included to avoid the collision
foreach(_BUILD_MODULE ${libjpeg-turbo_BUILD_MODULES_PATHS_DEBUG} )
    message(${JPEG_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


include(FindPackageHandleStandardArgs)
set(JPEG_FOUND 1)
set(JPEG_VERSION "2.0.5")

find_package_handle_standard_args(JPEG
                                  REQUIRED_VARS JPEG_VERSION
                                  VERSION_VAR JPEG_VERSION)
mark_as_advanced(JPEG_FOUND JPEG_VERSION)
