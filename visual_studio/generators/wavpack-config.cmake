########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(wavpack_FIND_QUIETLY)
    set(wavpack_MESSAGE_MODE VERBOSE)
else()
    set(wavpack_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/wavpackTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${wavpack_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(wavpack_VERSION_STRING "5.4.0")
set(wavpack_INCLUDE_DIRS ${wavpack_INCLUDE_DIRS_DEBUG} )
set(wavpack_INCLUDE_DIR ${wavpack_INCLUDE_DIRS_DEBUG} )
set(wavpack_LIBRARIES ${wavpack_LIBRARIES_DEBUG} )
set(wavpack_DEFINITIONS ${wavpack_DEFINITIONS_DEBUG} )

# Only the first installed configuration is included to avoid the collision
foreach(_BUILD_MODULE ${wavpack_BUILD_MODULES_PATHS_DEBUG} )
    message(${wavpack_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


