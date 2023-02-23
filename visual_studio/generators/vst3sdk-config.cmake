########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(vst3sdk_FIND_QUIETLY)
    set(vst3sdk_MESSAGE_MODE VERBOSE)
else()
    set(vst3sdk_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/vst3sdkTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${vst3sdk_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(vst3sdk_VERSION_STRING "3.7.3")
set(vst3sdk_INCLUDE_DIRS ${vst3sdk_INCLUDE_DIRS_DEBUG} )
set(vst3sdk_INCLUDE_DIR ${vst3sdk_INCLUDE_DIRS_DEBUG} )
set(vst3sdk_LIBRARIES ${vst3sdk_LIBRARIES_DEBUG} )
set(vst3sdk_DEFINITIONS ${vst3sdk_DEFINITIONS_DEBUG} )

# Only the first installed configuration is included to avoid the collision
foreach(_BUILD_MODULE ${vst3sdk_BUILD_MODULES_PATHS_DEBUG} )
    message(${vst3sdk_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


