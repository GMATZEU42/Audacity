# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(expat_FRAMEWORKS_FOUND_MINSIZEREL "") # Will be filled later
conan_find_apple_frameworks(expat_FRAMEWORKS_FOUND_MINSIZEREL "${expat_FRAMEWORKS_MINSIZEREL}" "${expat_FRAMEWORK_DIRS_MINSIZEREL}")

set(expat_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET expat_DEPS_TARGET)
    add_library(expat_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET expat_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:MinSizeRel>:${expat_FRAMEWORKS_FOUND_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:${expat_SYSTEM_LIBS_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### expat_DEPS_TARGET to all of them
conan_package_library_targets("${expat_LIBS_MINSIZEREL}"    # libraries
                              "${expat_LIB_DIRS_MINSIZEREL}" # package_libdir
                              expat_DEPS_TARGET
                              expat_LIBRARIES_TARGETS  # out_libraries_targets
                              "_MINSIZEREL"
                              "expat")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${expat_BUILD_DIRS_MINSIZEREL} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES MinSizeRel ########################################
    set_property(TARGET expat::expat
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:MinSizeRel>:${expat_OBJECTS_MINSIZEREL}>
                 $<$<CONFIG:MinSizeRel>:${expat_LIBRARIES_TARGETS}>
                 APPEND)

    if("${expat_LIBS_MINSIZEREL}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET expat::expat
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     expat_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET expat::expat
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:MinSizeRel>:${expat_LINKER_FLAGS_MINSIZEREL}> APPEND)
    set_property(TARGET expat::expat
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:MinSizeRel>:${expat_INCLUDE_DIRS_MINSIZEREL}> APPEND)
    set_property(TARGET expat::expat
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:MinSizeRel>:${expat_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
    set_property(TARGET expat::expat
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:MinSizeRel>:${expat_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

########## For the modules (FindXXX)
set(expat_LIBRARIES_MINSIZEREL expat::expat)
