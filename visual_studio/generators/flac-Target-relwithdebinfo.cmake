# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(flac_FRAMEWORKS_FOUND_RELWITHDEBINFO "") # Will be filled later
conan_find_apple_frameworks(flac_FRAMEWORKS_FOUND_RELWITHDEBINFO "${flac_FRAMEWORKS_RELWITHDEBINFO}" "${flac_FRAMEWORK_DIRS_RELWITHDEBINFO}")

set(flac_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET flac_DEPS_TARGET)
    add_library(flac_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET flac_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:RelWithDebInfo>:${flac_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:${flac_SYSTEM_LIBS_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:Ogg::ogg;FLAC::FLAC>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### flac_DEPS_TARGET to all of them
conan_package_library_targets("${flac_LIBS_RELWITHDEBINFO}"    # libraries
                              "${flac_LIB_DIRS_RELWITHDEBINFO}" # package_libdir
                              flac_DEPS_TARGET
                              flac_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELWITHDEBINFO"
                              "flac")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${flac_BUILD_DIRS_RELWITHDEBINFO} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES RelWithDebInfo ########################################

    ########## COMPONENT FLAC::FLAC++ #############

        set(flac_FLAC_FLAC++_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(flac_FLAC_FLAC++_FRAMEWORKS_FOUND_RELWITHDEBINFO "${flac_FLAC_FLAC++_FRAMEWORKS_RELWITHDEBINFO}" "${flac_FLAC_FLAC++_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(flac_FLAC_FLAC++_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET flac_FLAC_FLAC++_DEPS_TARGET)
            add_library(flac_FLAC_FLAC++_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET flac_FLAC_FLAC++_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC++_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC++_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC++_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'flac_FLAC_FLAC++_DEPS_TARGET' to all of them
        conan_package_library_targets("${flac_FLAC_FLAC++_LIBS_RELWITHDEBINFO}"
                                      "${flac_FLAC_FLAC++_LIB_DIRS_RELWITHDEBINFO}"
                                      flac_FLAC_FLAC++_DEPS_TARGET
                                      flac_FLAC_FLAC++_LIBRARIES_TARGETS
                                      "_RELWITHDEBINFO"
                                      "flac_FLAC_FLAC++")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET FLAC::FLAC++
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC++_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC++_LIBRARIES_TARGETS}>
                     APPEND)

        if("${flac_FLAC_FLAC++_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET FLAC::FLAC++
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         flac_FLAC_FLAC++_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET FLAC::FLAC++ PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC++_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET FLAC::FLAC++ PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC++_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET FLAC::FLAC++ PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC++_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET FLAC::FLAC++ PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC++_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT FLAC::FLAC #############

        set(flac_FLAC_FLAC_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(flac_FLAC_FLAC_FRAMEWORKS_FOUND_RELWITHDEBINFO "${flac_FLAC_FLAC_FRAMEWORKS_RELWITHDEBINFO}" "${flac_FLAC_FLAC_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(flac_FLAC_FLAC_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET flac_FLAC_FLAC_DEPS_TARGET)
            add_library(flac_FLAC_FLAC_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET flac_FLAC_FLAC_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'flac_FLAC_FLAC_DEPS_TARGET' to all of them
        conan_package_library_targets("${flac_FLAC_FLAC_LIBS_RELWITHDEBINFO}"
                                      "${flac_FLAC_FLAC_LIB_DIRS_RELWITHDEBINFO}"
                                      flac_FLAC_FLAC_DEPS_TARGET
                                      flac_FLAC_FLAC_LIBRARIES_TARGETS
                                      "_RELWITHDEBINFO"
                                      "flac_FLAC_FLAC")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET FLAC::FLAC
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC_LIBRARIES_TARGETS}>
                     APPEND)

        if("${flac_FLAC_FLAC_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET FLAC::FLAC
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         flac_FLAC_FLAC_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET FLAC::FLAC PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET FLAC::FLAC PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET FLAC::FLAC PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET FLAC::FLAC PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${flac_FLAC_FLAC_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET flac::flac PROPERTY INTERFACE_LINK_LIBRARIES FLAC::FLAC++ APPEND)
    set_property(TARGET flac::flac PROPERTY INTERFACE_LINK_LIBRARIES FLAC::FLAC APPEND)

########## For the modules (FindXXX)
set(flac_LIBRARIES_RELWITHDEBINFO flac::flac)
