# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(libid3tag_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(libid3tag_FRAMEWORKS_FOUND_RELEASE "${libid3tag_FRAMEWORKS_RELEASE}" "${libid3tag_FRAMEWORK_DIRS_RELEASE}")

set(libid3tag_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET libid3tag_DEPS_TARGET)
    add_library(libid3tag_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET libid3tag_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${libid3tag_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${libid3tag_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:ZLIB::ZLIB>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### libid3tag_DEPS_TARGET to all of them
conan_package_library_targets("${libid3tag_LIBS_RELEASE}"    # libraries
                              "${libid3tag_LIB_DIRS_RELEASE}" # package_libdir
                              libid3tag_DEPS_TARGET
                              libid3tag_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "libid3tag")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${libid3tag_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET libid3tag::libid3tag
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${libid3tag_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${libid3tag_LIBRARIES_TARGETS}>
                 APPEND)

    if("${libid3tag_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET libid3tag::libid3tag
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     libid3tag_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET libid3tag::libid3tag
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${libid3tag_LINKER_FLAGS_RELEASE}> APPEND)
    set_property(TARGET libid3tag::libid3tag
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${libid3tag_INCLUDE_DIRS_RELEASE}> APPEND)
    set_property(TARGET libid3tag::libid3tag
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${libid3tag_COMPILE_DEFINITIONS_RELEASE}> APPEND)
    set_property(TARGET libid3tag::libid3tag
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${libid3tag_COMPILE_OPTIONS_RELEASE}> APPEND)

########## For the modules (FindXXX)
set(libid3tag_LIBRARIES_RELEASE libid3tag::libid3tag)
