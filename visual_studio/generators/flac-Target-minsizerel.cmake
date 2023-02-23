# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(flac_FRAMEWORKS_FOUND_MINSIZEREL "") # Will be filled later
conan_find_apple_frameworks(flac_FRAMEWORKS_FOUND_MINSIZEREL "${flac_FRAMEWORKS_MINSIZEREL}" "${flac_FRAMEWORK_DIRS_MINSIZEREL}")

set(flac_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET flac_DEPS_TARGET)
    add_library(flac_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET flac_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:MinSizeRel>:${flac_FRAMEWORKS_FOUND_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:${flac_SYSTEM_LIBS_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:Ogg::ogg;FLAC::FLAC>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### flac_DEPS_TARGET to all of them
conan_package_library_targets("${flac_LIBS_MINSIZEREL}"    # libraries
                              "${flac_LIB_DIRS_MINSIZEREL}" # package_libdir
                              flac_DEPS_TARGET
                              flac_LIBRARIES_TARGETS  # out_libraries_targets
                              "_MINSIZEREL"
                              "flac")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${flac_BUILD_DIRS_MINSIZEREL} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES MinSizeRel ########################################

    ########## COMPONENT FLAC::FLAC++ #############

        set(flac_FLAC_FLAC++_FRAMEWORKS_FOUND_MINSIZEREL "")
        conan_find_apple_frameworks(flac_FLAC_FLAC++_FRAMEWORKS_FOUND_MINSIZEREL "${flac_FLAC_FLAC++_FRAMEWORKS_MINSIZEREL}" "${flac_FLAC_FLAC++_FRAMEWORK_DIRS_MINSIZEREL}")

        set(flac_FLAC_FLAC++_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET flac_FLAC_FLAC++_DEPS_TARGET)
            add_library(flac_FLAC_FLAC++_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET flac_FLAC_FLAC++_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC++_FRAMEWORKS_FOUND_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC++_SYSTEM_LIBS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC++_DEPENDENCIES_MINSIZEREL}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'flac_FLAC_FLAC++_DEPS_TARGET' to all of them
        conan_package_library_targets("${flac_FLAC_FLAC++_LIBS_MINSIZEREL}"
                                      "${flac_FLAC_FLAC++_LIB_DIRS_MINSIZEREL}"
                                      flac_FLAC_FLAC++_DEPS_TARGET
                                      flac_FLAC_FLAC++_LIBRARIES_TARGETS
                                      "_MINSIZEREL"
                                      "flac_FLAC_FLAC++")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET FLAC::FLAC++
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC++_OBJECTS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC++_LIBRARIES_TARGETS}>
                     APPEND)

        if("${flac_FLAC_FLAC++_LIBS_MINSIZEREL}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET FLAC::FLAC++
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         flac_FLAC_FLAC++_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET FLAC::FLAC++ PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC++_LINKER_FLAGS_MINSIZEREL}> APPEND)
        set_property(TARGET FLAC::FLAC++ PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC++_INCLUDE_DIRS_MINSIZEREL}> APPEND)
        set_property(TARGET FLAC::FLAC++ PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC++_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
        set_property(TARGET FLAC::FLAC++ PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC++_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

    ########## COMPONENT FLAC::FLAC #############

        set(flac_FLAC_FLAC_FRAMEWORKS_FOUND_MINSIZEREL "")
        conan_find_apple_frameworks(flac_FLAC_FLAC_FRAMEWORKS_FOUND_MINSIZEREL "${flac_FLAC_FLAC_FRAMEWORKS_MINSIZEREL}" "${flac_FLAC_FLAC_FRAMEWORK_DIRS_MINSIZEREL}")

        set(flac_FLAC_FLAC_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET flac_FLAC_FLAC_DEPS_TARGET)
            add_library(flac_FLAC_FLAC_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET flac_FLAC_FLAC_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC_FRAMEWORKS_FOUND_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC_SYSTEM_LIBS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC_DEPENDENCIES_MINSIZEREL}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'flac_FLAC_FLAC_DEPS_TARGET' to all of them
        conan_package_library_targets("${flac_FLAC_FLAC_LIBS_MINSIZEREL}"
                                      "${flac_FLAC_FLAC_LIB_DIRS_MINSIZEREL}"
                                      flac_FLAC_FLAC_DEPS_TARGET
                                      flac_FLAC_FLAC_LIBRARIES_TARGETS
                                      "_MINSIZEREL"
                                      "flac_FLAC_FLAC")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET FLAC::FLAC
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC_OBJECTS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC_LIBRARIES_TARGETS}>
                     APPEND)

        if("${flac_FLAC_FLAC_LIBS_MINSIZEREL}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET FLAC::FLAC
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         flac_FLAC_FLAC_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET FLAC::FLAC PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC_LINKER_FLAGS_MINSIZEREL}> APPEND)
        set_property(TARGET FLAC::FLAC PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC_INCLUDE_DIRS_MINSIZEREL}> APPEND)
        set_property(TARGET FLAC::FLAC PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
        set_property(TARGET FLAC::FLAC PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${flac_FLAC_FLAC_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET flac::flac PROPERTY INTERFACE_LINK_LIBRARIES FLAC::FLAC++ APPEND)
    set_property(TARGET flac::flac PROPERTY INTERFACE_LINK_LIBRARIES FLAC::FLAC APPEND)

########## For the modules (FindXXX)
set(flac_LIBRARIES_MINSIZEREL flac::flac)
