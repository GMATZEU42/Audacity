# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(wavpack_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(wavpack_FRAMEWORKS_FOUND_DEBUG "${wavpack_FRAMEWORKS_DEBUG}" "${wavpack_FRAMEWORK_DIRS_DEBUG}")

set(wavpack_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET wavpack_DEPS_TARGET)
    add_library(wavpack_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET wavpack_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${wavpack_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${wavpack_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### wavpack_DEPS_TARGET to all of them
conan_package_library_targets("${wavpack_LIBS_DEBUG}"    # libraries
                              "${wavpack_LIB_DIRS_DEBUG}" # package_libdir
                              wavpack_DEPS_TARGET
                              wavpack_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "wavpack")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${wavpack_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Debug ########################################
    set_property(TARGET wavpack::wavpack
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Debug>:${wavpack_OBJECTS_DEBUG}>
                 $<$<CONFIG:Debug>:${wavpack_LIBRARIES_TARGETS}>
                 APPEND)

    if("${wavpack_LIBS_DEBUG}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET wavpack::wavpack
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     wavpack_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET wavpack::wavpack
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Debug>:${wavpack_LINKER_FLAGS_DEBUG}> APPEND)
    set_property(TARGET wavpack::wavpack
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Debug>:${wavpack_INCLUDE_DIRS_DEBUG}> APPEND)
    set_property(TARGET wavpack::wavpack
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Debug>:${wavpack_COMPILE_DEFINITIONS_DEBUG}> APPEND)
    set_property(TARGET wavpack::wavpack
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Debug>:${wavpack_COMPILE_OPTIONS_DEBUG}> APPEND)

########## For the modules (FindXXX)
set(wavpack_LIBRARIES_DEBUG wavpack::wavpack)
