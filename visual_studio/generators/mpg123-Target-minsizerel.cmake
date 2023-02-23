# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(mpg123_FRAMEWORKS_FOUND_MINSIZEREL "") # Will be filled later
conan_find_apple_frameworks(mpg123_FRAMEWORKS_FOUND_MINSIZEREL "${mpg123_FRAMEWORKS_MINSIZEREL}" "${mpg123_FRAMEWORK_DIRS_MINSIZEREL}")

set(mpg123_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET mpg123_DEPS_TARGET)
    add_library(mpg123_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET mpg123_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:MinSizeRel>:${mpg123_FRAMEWORKS_FOUND_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:${mpg123_SYSTEM_LIBS_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:MPG123::libmpg123;MPG123::libmpg123>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### mpg123_DEPS_TARGET to all of them
conan_package_library_targets("${mpg123_LIBS_MINSIZEREL}"    # libraries
                              "${mpg123_LIB_DIRS_MINSIZEREL}" # package_libdir
                              mpg123_DEPS_TARGET
                              mpg123_LIBRARIES_TARGETS  # out_libraries_targets
                              "_MINSIZEREL"
                              "mpg123")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${mpg123_BUILD_DIRS_MINSIZEREL} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES MinSizeRel ########################################

    ########## COMPONENT MPG123::libsyn123 #############

        set(mpg123_MPG123_libsyn123_FRAMEWORKS_FOUND_MINSIZEREL "")
        conan_find_apple_frameworks(mpg123_MPG123_libsyn123_FRAMEWORKS_FOUND_MINSIZEREL "${mpg123_MPG123_libsyn123_FRAMEWORKS_MINSIZEREL}" "${mpg123_MPG123_libsyn123_FRAMEWORK_DIRS_MINSIZEREL}")

        set(mpg123_MPG123_libsyn123_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET mpg123_MPG123_libsyn123_DEPS_TARGET)
            add_library(mpg123_MPG123_libsyn123_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET mpg123_MPG123_libsyn123_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libsyn123_FRAMEWORKS_FOUND_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libsyn123_SYSTEM_LIBS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libsyn123_DEPENDENCIES_MINSIZEREL}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'mpg123_MPG123_libsyn123_DEPS_TARGET' to all of them
        conan_package_library_targets("${mpg123_MPG123_libsyn123_LIBS_MINSIZEREL}"
                                      "${mpg123_MPG123_libsyn123_LIB_DIRS_MINSIZEREL}"
                                      mpg123_MPG123_libsyn123_DEPS_TARGET
                                      mpg123_MPG123_libsyn123_LIBRARIES_TARGETS
                                      "_MINSIZEREL"
                                      "mpg123_MPG123_libsyn123")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET MPG123::libsyn123
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libsyn123_OBJECTS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libsyn123_LIBRARIES_TARGETS}>
                     APPEND)

        if("${mpg123_MPG123_libsyn123_LIBS_MINSIZEREL}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET MPG123::libsyn123
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         mpg123_MPG123_libsyn123_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET MPG123::libsyn123 PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libsyn123_LINKER_FLAGS_MINSIZEREL}> APPEND)
        set_property(TARGET MPG123::libsyn123 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libsyn123_INCLUDE_DIRS_MINSIZEREL}> APPEND)
        set_property(TARGET MPG123::libsyn123 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libsyn123_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
        set_property(TARGET MPG123::libsyn123 PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libsyn123_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

    ########## COMPONENT MPG123::libout123 #############

        set(mpg123_MPG123_libout123_FRAMEWORKS_FOUND_MINSIZEREL "")
        conan_find_apple_frameworks(mpg123_MPG123_libout123_FRAMEWORKS_FOUND_MINSIZEREL "${mpg123_MPG123_libout123_FRAMEWORKS_MINSIZEREL}" "${mpg123_MPG123_libout123_FRAMEWORK_DIRS_MINSIZEREL}")

        set(mpg123_MPG123_libout123_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET mpg123_MPG123_libout123_DEPS_TARGET)
            add_library(mpg123_MPG123_libout123_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET mpg123_MPG123_libout123_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libout123_FRAMEWORKS_FOUND_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libout123_SYSTEM_LIBS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libout123_DEPENDENCIES_MINSIZEREL}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'mpg123_MPG123_libout123_DEPS_TARGET' to all of them
        conan_package_library_targets("${mpg123_MPG123_libout123_LIBS_MINSIZEREL}"
                                      "${mpg123_MPG123_libout123_LIB_DIRS_MINSIZEREL}"
                                      mpg123_MPG123_libout123_DEPS_TARGET
                                      mpg123_MPG123_libout123_LIBRARIES_TARGETS
                                      "_MINSIZEREL"
                                      "mpg123_MPG123_libout123")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET MPG123::libout123
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libout123_OBJECTS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libout123_LIBRARIES_TARGETS}>
                     APPEND)

        if("${mpg123_MPG123_libout123_LIBS_MINSIZEREL}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET MPG123::libout123
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         mpg123_MPG123_libout123_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET MPG123::libout123 PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libout123_LINKER_FLAGS_MINSIZEREL}> APPEND)
        set_property(TARGET MPG123::libout123 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libout123_INCLUDE_DIRS_MINSIZEREL}> APPEND)
        set_property(TARGET MPG123::libout123 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libout123_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
        set_property(TARGET MPG123::libout123 PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libout123_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

    ########## COMPONENT MPG123::libmpg123 #############

        set(mpg123_MPG123_libmpg123_FRAMEWORKS_FOUND_MINSIZEREL "")
        conan_find_apple_frameworks(mpg123_MPG123_libmpg123_FRAMEWORKS_FOUND_MINSIZEREL "${mpg123_MPG123_libmpg123_FRAMEWORKS_MINSIZEREL}" "${mpg123_MPG123_libmpg123_FRAMEWORK_DIRS_MINSIZEREL}")

        set(mpg123_MPG123_libmpg123_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET mpg123_MPG123_libmpg123_DEPS_TARGET)
            add_library(mpg123_MPG123_libmpg123_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET mpg123_MPG123_libmpg123_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libmpg123_FRAMEWORKS_FOUND_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libmpg123_SYSTEM_LIBS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libmpg123_DEPENDENCIES_MINSIZEREL}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'mpg123_MPG123_libmpg123_DEPS_TARGET' to all of them
        conan_package_library_targets("${mpg123_MPG123_libmpg123_LIBS_MINSIZEREL}"
                                      "${mpg123_MPG123_libmpg123_LIB_DIRS_MINSIZEREL}"
                                      mpg123_MPG123_libmpg123_DEPS_TARGET
                                      mpg123_MPG123_libmpg123_LIBRARIES_TARGETS
                                      "_MINSIZEREL"
                                      "mpg123_MPG123_libmpg123")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET MPG123::libmpg123
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libmpg123_OBJECTS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libmpg123_LIBRARIES_TARGETS}>
                     APPEND)

        if("${mpg123_MPG123_libmpg123_LIBS_MINSIZEREL}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET MPG123::libmpg123
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         mpg123_MPG123_libmpg123_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET MPG123::libmpg123 PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libmpg123_LINKER_FLAGS_MINSIZEREL}> APPEND)
        set_property(TARGET MPG123::libmpg123 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libmpg123_INCLUDE_DIRS_MINSIZEREL}> APPEND)
        set_property(TARGET MPG123::libmpg123 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libmpg123_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
        set_property(TARGET MPG123::libmpg123 PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${mpg123_MPG123_libmpg123_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET mpg123::mpg123 PROPERTY INTERFACE_LINK_LIBRARIES MPG123::libsyn123 APPEND)
    set_property(TARGET mpg123::mpg123 PROPERTY INTERFACE_LINK_LIBRARIES MPG123::libout123 APPEND)
    set_property(TARGET mpg123::mpg123 PROPERTY INTERFACE_LINK_LIBRARIES MPG123::libmpg123 APPEND)

########## For the modules (FindXXX)
set(mpg123_LIBRARIES_MINSIZEREL mpg123::mpg123)
