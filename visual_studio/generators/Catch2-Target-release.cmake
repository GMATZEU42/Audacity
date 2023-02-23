# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(catch2_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(catch2_FRAMEWORKS_FOUND_RELEASE "${catch2_FRAMEWORKS_RELEASE}" "${catch2_FRAMEWORK_DIRS_RELEASE}")

set(catch2_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET catch2_DEPS_TARGET)
    add_library(catch2_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET catch2_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${catch2_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${catch2_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### catch2_DEPS_TARGET to all of them
conan_package_library_targets("${catch2_LIBS_RELEASE}"    # libraries
                              "${catch2_LIB_DIRS_RELEASE}" # package_libdir
                              catch2_DEPS_TARGET
                              catch2_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "catch2")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${catch2_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET Catch2::Catch2
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${catch2_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${catch2_LIBRARIES_TARGETS}>
                 APPEND)

    if("${catch2_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET Catch2::Catch2
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     catch2_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET Catch2::Catch2
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${catch2_LINKER_FLAGS_RELEASE}> APPEND)
    set_property(TARGET Catch2::Catch2
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${catch2_INCLUDE_DIRS_RELEASE}> APPEND)
    set_property(TARGET Catch2::Catch2
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${catch2_COMPILE_DEFINITIONS_RELEASE}> APPEND)
    set_property(TARGET Catch2::Catch2
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${catch2_COMPILE_OPTIONS_RELEASE}> APPEND)

########## For the modules (FindXXX)
set(catch2_LIBRARIES_RELEASE Catch2::Catch2)
