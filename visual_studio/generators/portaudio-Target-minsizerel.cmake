# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(portaudio_FRAMEWORKS_FOUND_MINSIZEREL "") # Will be filled later
conan_find_apple_frameworks(portaudio_FRAMEWORKS_FOUND_MINSIZEREL "${portaudio_FRAMEWORKS_MINSIZEREL}" "${portaudio_FRAMEWORK_DIRS_MINSIZEREL}")

set(portaudio_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET portaudio_DEPS_TARGET)
    add_library(portaudio_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET portaudio_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:MinSizeRel>:${portaudio_FRAMEWORKS_FOUND_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:${portaudio_SYSTEM_LIBS_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### portaudio_DEPS_TARGET to all of them
conan_package_library_targets("${portaudio_LIBS_MINSIZEREL}"    # libraries
                              "${portaudio_LIB_DIRS_MINSIZEREL}" # package_libdir
                              portaudio_DEPS_TARGET
                              portaudio_LIBRARIES_TARGETS  # out_libraries_targets
                              "_MINSIZEREL"
                              "portaudio")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${portaudio_BUILD_DIRS_MINSIZEREL} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES MinSizeRel ########################################
    set_property(TARGET portaudio::portaudio
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:MinSizeRel>:${portaudio_OBJECTS_MINSIZEREL}>
                 $<$<CONFIG:MinSizeRel>:${portaudio_LIBRARIES_TARGETS}>
                 APPEND)

    if("${portaudio_LIBS_MINSIZEREL}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET portaudio::portaudio
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     portaudio_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET portaudio::portaudio
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:MinSizeRel>:${portaudio_LINKER_FLAGS_MINSIZEREL}> APPEND)
    set_property(TARGET portaudio::portaudio
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:MinSizeRel>:${portaudio_INCLUDE_DIRS_MINSIZEREL}> APPEND)
    set_property(TARGET portaudio::portaudio
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:MinSizeRel>:${portaudio_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
    set_property(TARGET portaudio::portaudio
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:MinSizeRel>:${portaudio_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

########## For the modules (FindXXX)
set(portaudio_LIBRARIES_MINSIZEREL portaudio::portaudio)
