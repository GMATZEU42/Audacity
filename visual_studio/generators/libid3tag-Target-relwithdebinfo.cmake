# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(libid3tag_FRAMEWORKS_FOUND_RELWITHDEBINFO "") # Will be filled later
conan_find_apple_frameworks(libid3tag_FRAMEWORKS_FOUND_RELWITHDEBINFO "${libid3tag_FRAMEWORKS_RELWITHDEBINFO}" "${libid3tag_FRAMEWORK_DIRS_RELWITHDEBINFO}")

set(libid3tag_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET libid3tag_DEPS_TARGET)
    add_library(libid3tag_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET libid3tag_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:RelWithDebInfo>:${libid3tag_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:${libid3tag_SYSTEM_LIBS_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:ZLIB::ZLIB>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### libid3tag_DEPS_TARGET to all of them
conan_package_library_targets("${libid3tag_LIBS_RELWITHDEBINFO}"    # libraries
                              "${libid3tag_LIB_DIRS_RELWITHDEBINFO}" # package_libdir
                              libid3tag_DEPS_TARGET
                              libid3tag_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELWITHDEBINFO"
                              "libid3tag")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${libid3tag_BUILD_DIRS_RELWITHDEBINFO} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES RelWithDebInfo ########################################
    set_property(TARGET libid3tag::libid3tag
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:RelWithDebInfo>:${libid3tag_OBJECTS_RELWITHDEBINFO}>
                 $<$<CONFIG:RelWithDebInfo>:${libid3tag_LIBRARIES_TARGETS}>
                 APPEND)

    if("${libid3tag_LIBS_RELWITHDEBINFO}" STREQUAL "")
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
                 $<$<CONFIG:RelWithDebInfo>:${libid3tag_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
    set_property(TARGET libid3tag::libid3tag
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:RelWithDebInfo>:${libid3tag_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
    set_property(TARGET libid3tag::libid3tag
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:RelWithDebInfo>:${libid3tag_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
    set_property(TARGET libid3tag::libid3tag
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:RelWithDebInfo>:${libid3tag_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

########## For the modules (FindXXX)
set(libid3tag_LIBRARIES_RELWITHDEBINFO libid3tag::libid3tag)
