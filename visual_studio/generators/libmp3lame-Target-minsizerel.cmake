# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(libmp3lame_FRAMEWORKS_FOUND_MINSIZEREL "") # Will be filled later
conan_find_apple_frameworks(libmp3lame_FRAMEWORKS_FOUND_MINSIZEREL "${libmp3lame_FRAMEWORKS_MINSIZEREL}" "${libmp3lame_FRAMEWORK_DIRS_MINSIZEREL}")

set(libmp3lame_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET libmp3lame_DEPS_TARGET)
    add_library(libmp3lame_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET libmp3lame_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:MinSizeRel>:${libmp3lame_FRAMEWORKS_FOUND_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:${libmp3lame_SYSTEM_LIBS_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### libmp3lame_DEPS_TARGET to all of them
conan_package_library_targets("${libmp3lame_LIBS_MINSIZEREL}"    # libraries
                              "${libmp3lame_LIB_DIRS_MINSIZEREL}" # package_libdir
                              libmp3lame_DEPS_TARGET
                              libmp3lame_LIBRARIES_TARGETS  # out_libraries_targets
                              "_MINSIZEREL"
                              "libmp3lame")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${libmp3lame_BUILD_DIRS_MINSIZEREL} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES MinSizeRel ########################################
    set_property(TARGET libmp3lame::libmp3lame
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:MinSizeRel>:${libmp3lame_OBJECTS_MINSIZEREL}>
                 $<$<CONFIG:MinSizeRel>:${libmp3lame_LIBRARIES_TARGETS}>
                 APPEND)

    if("${libmp3lame_LIBS_MINSIZEREL}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET libmp3lame::libmp3lame
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     libmp3lame_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET libmp3lame::libmp3lame
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:MinSizeRel>:${libmp3lame_LINKER_FLAGS_MINSIZEREL}> APPEND)
    set_property(TARGET libmp3lame::libmp3lame
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:MinSizeRel>:${libmp3lame_INCLUDE_DIRS_MINSIZEREL}> APPEND)
    set_property(TARGET libmp3lame::libmp3lame
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:MinSizeRel>:${libmp3lame_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
    set_property(TARGET libmp3lame::libmp3lame
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:MinSizeRel>:${libmp3lame_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

########## For the modules (FindXXX)
set(libmp3lame_LIBRARIES_MINSIZEREL libmp3lame::libmp3lame)
