# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(libmp3lame_FRAMEWORKS_FOUND_RELWITHDEBINFO "") # Will be filled later
conan_find_apple_frameworks(libmp3lame_FRAMEWORKS_FOUND_RELWITHDEBINFO "${libmp3lame_FRAMEWORKS_RELWITHDEBINFO}" "${libmp3lame_FRAMEWORK_DIRS_RELWITHDEBINFO}")

set(libmp3lame_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET libmp3lame_DEPS_TARGET)
    add_library(libmp3lame_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET libmp3lame_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:RelWithDebInfo>:${libmp3lame_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:${libmp3lame_SYSTEM_LIBS_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### libmp3lame_DEPS_TARGET to all of them
conan_package_library_targets("${libmp3lame_LIBS_RELWITHDEBINFO}"    # libraries
                              "${libmp3lame_LIB_DIRS_RELWITHDEBINFO}" # package_libdir
                              libmp3lame_DEPS_TARGET
                              libmp3lame_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELWITHDEBINFO"
                              "libmp3lame")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${libmp3lame_BUILD_DIRS_RELWITHDEBINFO} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES RelWithDebInfo ########################################
    set_property(TARGET libmp3lame::libmp3lame
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:RelWithDebInfo>:${libmp3lame_OBJECTS_RELWITHDEBINFO}>
                 $<$<CONFIG:RelWithDebInfo>:${libmp3lame_LIBRARIES_TARGETS}>
                 APPEND)

    if("${libmp3lame_LIBS_RELWITHDEBINFO}" STREQUAL "")
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
                 $<$<CONFIG:RelWithDebInfo>:${libmp3lame_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
    set_property(TARGET libmp3lame::libmp3lame
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:RelWithDebInfo>:${libmp3lame_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
    set_property(TARGET libmp3lame::libmp3lame
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:RelWithDebInfo>:${libmp3lame_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
    set_property(TARGET libmp3lame::libmp3lame
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:RelWithDebInfo>:${libmp3lame_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

########## For the modules (FindXXX)
set(libmp3lame_LIBRARIES_RELWITHDEBINFO libmp3lame::libmp3lame)
