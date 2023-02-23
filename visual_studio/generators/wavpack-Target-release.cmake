# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(wavpack_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(wavpack_FRAMEWORKS_FOUND_RELEASE "${wavpack_FRAMEWORKS_RELEASE}" "${wavpack_FRAMEWORK_DIRS_RELEASE}")

set(wavpack_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET wavpack_DEPS_TARGET)
    add_library(wavpack_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET wavpack_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${wavpack_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${wavpack_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### wavpack_DEPS_TARGET to all of them
conan_package_library_targets("${wavpack_LIBS_RELEASE}"    # libraries
                              "${wavpack_LIB_DIRS_RELEASE}" # package_libdir
                              wavpack_DEPS_TARGET
                              wavpack_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "wavpack")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${wavpack_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET wavpack::wavpack
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${wavpack_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${wavpack_LIBRARIES_TARGETS}>
                 APPEND)

    if("${wavpack_LIBS_RELEASE}" STREQUAL "")
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
                 $<$<CONFIG:Release>:${wavpack_LINKER_FLAGS_RELEASE}> APPEND)
    set_property(TARGET wavpack::wavpack
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${wavpack_INCLUDE_DIRS_RELEASE}> APPEND)
    set_property(TARGET wavpack::wavpack
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${wavpack_COMPILE_DEFINITIONS_RELEASE}> APPEND)
    set_property(TARGET wavpack::wavpack
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${wavpack_COMPILE_OPTIONS_RELEASE}> APPEND)

########## For the modules (FindXXX)
set(wavpack_LIBRARIES_RELEASE wavpack::wavpack)
