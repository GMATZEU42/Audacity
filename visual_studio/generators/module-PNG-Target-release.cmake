# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(libpng_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(libpng_FRAMEWORKS_FOUND_RELEASE "${libpng_FRAMEWORKS_RELEASE}" "${libpng_FRAMEWORK_DIRS_RELEASE}")

set(libpng_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET libpng_DEPS_TARGET)
    add_library(libpng_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET libpng_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${libpng_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${libpng_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:ZLIB::ZLIB>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### libpng_DEPS_TARGET to all of them
conan_package_library_targets("${libpng_LIBS_RELEASE}"    # libraries
                              "${libpng_LIB_DIRS_RELEASE}" # package_libdir
                              libpng_DEPS_TARGET
                              libpng_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "libpng")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${libpng_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET PNG::PNG
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${libpng_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${libpng_LIBRARIES_TARGETS}>
                 APPEND)

    if("${libpng_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET PNG::PNG
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     libpng_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET PNG::PNG
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${libpng_LINKER_FLAGS_RELEASE}> APPEND)
    set_property(TARGET PNG::PNG
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${libpng_INCLUDE_DIRS_RELEASE}> APPEND)
    set_property(TARGET PNG::PNG
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${libpng_COMPILE_DEFINITIONS_RELEASE}> APPEND)
    set_property(TARGET PNG::PNG
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${libpng_COMPILE_OPTIONS_RELEASE}> APPEND)

########## For the modules (FindXXX)
set(libpng_LIBRARIES_RELEASE PNG::PNG)
