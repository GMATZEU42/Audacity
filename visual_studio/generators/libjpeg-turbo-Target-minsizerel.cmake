# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(libjpeg-turbo_FRAMEWORKS_FOUND_MINSIZEREL "") # Will be filled later
conan_find_apple_frameworks(libjpeg-turbo_FRAMEWORKS_FOUND_MINSIZEREL "${libjpeg-turbo_FRAMEWORKS_MINSIZEREL}" "${libjpeg-turbo_FRAMEWORK_DIRS_MINSIZEREL}")

set(libjpeg-turbo_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET libjpeg-turbo_DEPS_TARGET)
    add_library(libjpeg-turbo_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET libjpeg-turbo_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_FRAMEWORKS_FOUND_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_SYSTEM_LIBS_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### libjpeg-turbo_DEPS_TARGET to all of them
conan_package_library_targets("${libjpeg-turbo_LIBS_MINSIZEREL}"    # libraries
                              "${libjpeg-turbo_LIB_DIRS_MINSIZEREL}" # package_libdir
                              libjpeg-turbo_DEPS_TARGET
                              libjpeg-turbo_LIBRARIES_TARGETS  # out_libraries_targets
                              "_MINSIZEREL"
                              "libjpeg-turbo")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${libjpeg-turbo_BUILD_DIRS_MINSIZEREL} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES MinSizeRel ########################################

    ########## COMPONENT libjpeg-turbo::turbojpeg #############

        set(libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORKS_FOUND_MINSIZEREL "")
        conan_find_apple_frameworks(libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORKS_FOUND_MINSIZEREL "${libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORKS_MINSIZEREL}" "${libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORK_DIRS_MINSIZEREL}")

        set(libjpeg-turbo_libjpeg-turbo_turbojpeg_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPS_TARGET)
            add_library(libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORKS_FOUND_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_SYSTEM_LIBS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPENDENCIES_MINSIZEREL}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPS_TARGET' to all of them
        conan_package_library_targets("${libjpeg-turbo_libjpeg-turbo_turbojpeg_LIBS_MINSIZEREL}"
                                      "${libjpeg-turbo_libjpeg-turbo_turbojpeg_LIB_DIRS_MINSIZEREL}"
                                      libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPS_TARGET
                                      libjpeg-turbo_libjpeg-turbo_turbojpeg_LIBRARIES_TARGETS
                                      "_MINSIZEREL"
                                      "libjpeg-turbo_libjpeg-turbo_turbojpeg")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET libjpeg-turbo::turbojpeg
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_OBJECTS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_LIBRARIES_TARGETS}>
                     APPEND)

        if("${libjpeg-turbo_libjpeg-turbo_turbojpeg_LIBS_MINSIZEREL}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET libjpeg-turbo::turbojpeg
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET libjpeg-turbo::turbojpeg PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_LINKER_FLAGS_MINSIZEREL}> APPEND)
        set_property(TARGET libjpeg-turbo::turbojpeg PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_INCLUDE_DIRS_MINSIZEREL}> APPEND)
        set_property(TARGET libjpeg-turbo::turbojpeg PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
        set_property(TARGET libjpeg-turbo::turbojpeg PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

    ########## COMPONENT libjpeg-turbo::jpeg #############

        set(libjpeg-turbo_libjpeg-turbo_jpeg_FRAMEWORKS_FOUND_MINSIZEREL "")
        conan_find_apple_frameworks(libjpeg-turbo_libjpeg-turbo_jpeg_FRAMEWORKS_FOUND_MINSIZEREL "${libjpeg-turbo_libjpeg-turbo_jpeg_FRAMEWORKS_MINSIZEREL}" "${libjpeg-turbo_libjpeg-turbo_jpeg_FRAMEWORK_DIRS_MINSIZEREL}")

        set(libjpeg-turbo_libjpeg-turbo_jpeg_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET libjpeg-turbo_libjpeg-turbo_jpeg_DEPS_TARGET)
            add_library(libjpeg-turbo_libjpeg-turbo_jpeg_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET libjpeg-turbo_libjpeg-turbo_jpeg_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_jpeg_FRAMEWORKS_FOUND_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_jpeg_SYSTEM_LIBS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_jpeg_DEPENDENCIES_MINSIZEREL}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'libjpeg-turbo_libjpeg-turbo_jpeg_DEPS_TARGET' to all of them
        conan_package_library_targets("${libjpeg-turbo_libjpeg-turbo_jpeg_LIBS_MINSIZEREL}"
                                      "${libjpeg-turbo_libjpeg-turbo_jpeg_LIB_DIRS_MINSIZEREL}"
                                      libjpeg-turbo_libjpeg-turbo_jpeg_DEPS_TARGET
                                      libjpeg-turbo_libjpeg-turbo_jpeg_LIBRARIES_TARGETS
                                      "_MINSIZEREL"
                                      "libjpeg-turbo_libjpeg-turbo_jpeg")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET libjpeg-turbo::jpeg
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_jpeg_OBJECTS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_jpeg_LIBRARIES_TARGETS}>
                     APPEND)

        if("${libjpeg-turbo_libjpeg-turbo_jpeg_LIBS_MINSIZEREL}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET libjpeg-turbo::jpeg
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         libjpeg-turbo_libjpeg-turbo_jpeg_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET libjpeg-turbo::jpeg PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_jpeg_LINKER_FLAGS_MINSIZEREL}> APPEND)
        set_property(TARGET libjpeg-turbo::jpeg PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_jpeg_INCLUDE_DIRS_MINSIZEREL}> APPEND)
        set_property(TARGET libjpeg-turbo::jpeg PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_jpeg_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
        set_property(TARGET libjpeg-turbo::jpeg PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${libjpeg-turbo_libjpeg-turbo_jpeg_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET libjpeg-turbo::libjpeg-turbo PROPERTY INTERFACE_LINK_LIBRARIES libjpeg-turbo::turbojpeg APPEND)
    set_property(TARGET libjpeg-turbo::libjpeg-turbo PROPERTY INTERFACE_LINK_LIBRARIES libjpeg-turbo::jpeg APPEND)

########## For the modules (FindXXX)
set(libjpeg-turbo_LIBRARIES_MINSIZEREL libjpeg-turbo::libjpeg-turbo)
