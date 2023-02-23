# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(libjpeg-turbo_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(libjpeg-turbo_FRAMEWORKS_FOUND_DEBUG "${libjpeg-turbo_FRAMEWORKS_DEBUG}" "${libjpeg-turbo_FRAMEWORK_DIRS_DEBUG}")

set(libjpeg-turbo_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET libjpeg-turbo_DEPS_TARGET)
    add_library(libjpeg-turbo_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET libjpeg-turbo_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${libjpeg-turbo_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${libjpeg-turbo_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### libjpeg-turbo_DEPS_TARGET to all of them
conan_package_library_targets("${libjpeg-turbo_LIBS_DEBUG}"    # libraries
                              "${libjpeg-turbo_LIB_DIRS_DEBUG}" # package_libdir
                              libjpeg-turbo_DEPS_TARGET
                              libjpeg-turbo_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "libjpeg-turbo")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${libjpeg-turbo_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Debug ########################################

    ########## COMPONENT libjpeg-turbo::turbojpeg #############

        set(libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORKS_FOUND_DEBUG "${libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORKS_DEBUG}" "${libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORK_DIRS_DEBUG}")

        set(libjpeg-turbo_libjpeg-turbo_turbojpeg_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPS_TARGET)
            add_library(libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPS_TARGET' to all of them
        conan_package_library_targets("${libjpeg-turbo_libjpeg-turbo_turbojpeg_LIBS_DEBUG}"
                                      "${libjpeg-turbo_libjpeg-turbo_turbojpeg_LIB_DIRS_DEBUG}"
                                      libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPS_TARGET
                                      libjpeg-turbo_libjpeg-turbo_turbojpeg_LIBRARIES_TARGETS
                                      "_DEBUG"
                                      "libjpeg-turbo_libjpeg-turbo_turbojpeg")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET libjpeg-turbo::turbojpeg
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_LIBRARIES_TARGETS}>
                     APPEND)

        if("${libjpeg-turbo_libjpeg-turbo_turbojpeg_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET libjpeg-turbo::turbojpeg
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET libjpeg-turbo::turbojpeg PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET libjpeg-turbo::turbojpeg PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET libjpeg-turbo::turbojpeg PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET libjpeg-turbo::turbojpeg PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## COMPONENT JPEG::JPEG #############

        set(libjpeg-turbo_JPEG_JPEG_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(libjpeg-turbo_JPEG_JPEG_FRAMEWORKS_FOUND_DEBUG "${libjpeg-turbo_JPEG_JPEG_FRAMEWORKS_DEBUG}" "${libjpeg-turbo_JPEG_JPEG_FRAMEWORK_DIRS_DEBUG}")

        set(libjpeg-turbo_JPEG_JPEG_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET libjpeg-turbo_JPEG_JPEG_DEPS_TARGET)
            add_library(libjpeg-turbo_JPEG_JPEG_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET libjpeg-turbo_JPEG_JPEG_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${libjpeg-turbo_JPEG_JPEG_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${libjpeg-turbo_JPEG_JPEG_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${libjpeg-turbo_JPEG_JPEG_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'libjpeg-turbo_JPEG_JPEG_DEPS_TARGET' to all of them
        conan_package_library_targets("${libjpeg-turbo_JPEG_JPEG_LIBS_DEBUG}"
                                      "${libjpeg-turbo_JPEG_JPEG_LIB_DIRS_DEBUG}"
                                      libjpeg-turbo_JPEG_JPEG_DEPS_TARGET
                                      libjpeg-turbo_JPEG_JPEG_LIBRARIES_TARGETS
                                      "_DEBUG"
                                      "libjpeg-turbo_JPEG_JPEG")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET JPEG::JPEG
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${libjpeg-turbo_JPEG_JPEG_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${libjpeg-turbo_JPEG_JPEG_LIBRARIES_TARGETS}>
                     APPEND)

        if("${libjpeg-turbo_JPEG_JPEG_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET JPEG::JPEG
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         libjpeg-turbo_JPEG_JPEG_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET JPEG::JPEG PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${libjpeg-turbo_JPEG_JPEG_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET JPEG::JPEG PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${libjpeg-turbo_JPEG_JPEG_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET JPEG::JPEG PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${libjpeg-turbo_JPEG_JPEG_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET JPEG::JPEG PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:${libjpeg-turbo_JPEG_JPEG_COMPILE_OPTIONS_DEBUG}> APPEND)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET libjpeg-turbo::libjpeg-turbo PROPERTY INTERFACE_LINK_LIBRARIES libjpeg-turbo::turbojpeg APPEND)
    set_property(TARGET libjpeg-turbo::libjpeg-turbo PROPERTY INTERFACE_LINK_LIBRARIES JPEG::JPEG APPEND)

########## For the modules (FindXXX)
set(libjpeg-turbo_LIBRARIES_DEBUG libjpeg-turbo::libjpeg-turbo)
