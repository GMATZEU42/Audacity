########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(portmidi_FIND_QUIETLY)
    set(portmidi_MESSAGE_MODE VERBOSE)
else()
    set(portmidi_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/portmidiTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${portmidi_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(portmidi_VERSION_STRING "r234")
set(portmidi_INCLUDE_DIRS ${portmidi_INCLUDE_DIRS_DEBUG} )
set(portmidi_INCLUDE_DIR ${portmidi_INCLUDE_DIRS_DEBUG} )
set(portmidi_LIBRARIES ${portmidi_LIBRARIES_DEBUG} )
set(portmidi_DEFINITIONS ${portmidi_DEFINITIONS_DEBUG} )

# Only the first installed configuration is included to avoid the collision
foreach(_BUILD_MODULE ${portmidi_BUILD_MODULES_PATHS_DEBUG} )
    message(${portmidi_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


