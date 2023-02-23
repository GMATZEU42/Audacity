# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(portmidi_FRAMEWORKS_FOUND_MINSIZEREL "") # Will be filled later
conan_find_apple_frameworks(portmidi_FRAMEWORKS_FOUND_MINSIZEREL "${portmidi_FRAMEWORKS_MINSIZEREL}" "${portmidi_FRAMEWORK_DIRS_MINSIZEREL}")

set(portmidi_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET portmidi_DEPS_TARGET)
    add_library(portmidi_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET portmidi_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:MinSizeRel>:${portmidi_FRAMEWORKS_FOUND_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:${portmidi_SYSTEM_LIBS_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### portmidi_DEPS_TARGET to all of them
conan_package_library_targets("${portmidi_LIBS_MINSIZEREL}"    # libraries
                              "${portmidi_LIB_DIRS_MINSIZEREL}" # package_libdir
                              portmidi_DEPS_TARGET
                              portmidi_LIBRARIES_TARGETS  # out_libraries_targets
                              "_MINSIZEREL"
                              "portmidi")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${portmidi_BUILD_DIRS_MINSIZEREL} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES MinSizeRel ########################################
    set_property(TARGET portmidi::portmidi
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:MinSizeRel>:${portmidi_OBJECTS_MINSIZEREL}>
                 $<$<CONFIG:MinSizeRel>:${portmidi_LIBRARIES_TARGETS}>
                 APPEND)

    if("${portmidi_LIBS_MINSIZEREL}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET portmidi::portmidi
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     portmidi_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET portmidi::portmidi
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:MinSizeRel>:${portmidi_LINKER_FLAGS_MINSIZEREL}> APPEND)
    set_property(TARGET portmidi::portmidi
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:MinSizeRel>:${portmidi_INCLUDE_DIRS_MINSIZEREL}> APPEND)
    set_property(TARGET portmidi::portmidi
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:MinSizeRel>:${portmidi_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
    set_property(TARGET portmidi::portmidi
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:MinSizeRel>:${portmidi_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

########## For the modules (FindXXX)
set(portmidi_LIBRARIES_MINSIZEREL portmidi::portmidi)
