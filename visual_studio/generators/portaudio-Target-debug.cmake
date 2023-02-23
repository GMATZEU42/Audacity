# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(portaudio_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(portaudio_FRAMEWORKS_FOUND_DEBUG "${portaudio_FRAMEWORKS_DEBUG}" "${portaudio_FRAMEWORK_DIRS_DEBUG}")

set(portaudio_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET portaudio_DEPS_TARGET)
    add_library(portaudio_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET portaudio_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${portaudio_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${portaudio_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### portaudio_DEPS_TARGET to all of them
conan_package_library_targets("${portaudio_LIBS_DEBUG}"    # libraries
                              "${portaudio_LIB_DIRS_DEBUG}" # package_libdir
                              portaudio_DEPS_TARGET
                              portaudio_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "portaudio")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${portaudio_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Debug ########################################
    set_property(TARGET portaudio::portaudio
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Debug>:${portaudio_OBJECTS_DEBUG}>
                 $<$<CONFIG:Debug>:${portaudio_LIBRARIES_TARGETS}>
                 APPEND)

    if("${portaudio_LIBS_DEBUG}" STREQUAL "")
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
                 $<$<CONFIG:Debug>:${portaudio_LINKER_FLAGS_DEBUG}> APPEND)
    set_property(TARGET portaudio::portaudio
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Debug>:${portaudio_INCLUDE_DIRS_DEBUG}> APPEND)
    set_property(TARGET portaudio::portaudio
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Debug>:${portaudio_COMPILE_DEFINITIONS_DEBUG}> APPEND)
    set_property(TARGET portaudio::portaudio
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Debug>:${portaudio_COMPILE_OPTIONS_DEBUG}> APPEND)

########## For the modules (FindXXX)
set(portaudio_LIBRARIES_DEBUG portaudio::portaudio)
