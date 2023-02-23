# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(vst3sdk_FRAMEWORKS_FOUND_RELWITHDEBINFO "") # Will be filled later
conan_find_apple_frameworks(vst3sdk_FRAMEWORKS_FOUND_RELWITHDEBINFO "${vst3sdk_FRAMEWORKS_RELWITHDEBINFO}" "${vst3sdk_FRAMEWORK_DIRS_RELWITHDEBINFO}")

set(vst3sdk_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET vst3sdk_DEPS_TARGET)
    add_library(vst3sdk_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET vst3sdk_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:RelWithDebInfo>:${vst3sdk_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:${vst3sdk_SYSTEM_LIBS_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### vst3sdk_DEPS_TARGET to all of them
conan_package_library_targets("${vst3sdk_LIBS_RELWITHDEBINFO}"    # libraries
                              "${vst3sdk_LIB_DIRS_RELWITHDEBINFO}" # package_libdir
                              vst3sdk_DEPS_TARGET
                              vst3sdk_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELWITHDEBINFO"
                              "vst3sdk")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${vst3sdk_BUILD_DIRS_RELWITHDEBINFO} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES RelWithDebInfo ########################################

    ########## COMPONENT vst3sdk::sdk_hosting #############

        set(vst3sdk_vst3sdk_sdk_hosting_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(vst3sdk_vst3sdk_sdk_hosting_FRAMEWORKS_FOUND_RELWITHDEBINFO "${vst3sdk_vst3sdk_sdk_hosting_FRAMEWORKS_RELWITHDEBINFO}" "${vst3sdk_vst3sdk_sdk_hosting_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(vst3sdk_vst3sdk_sdk_hosting_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET vst3sdk_vst3sdk_sdk_hosting_DEPS_TARGET)
            add_library(vst3sdk_vst3sdk_sdk_hosting_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET vst3sdk_vst3sdk_sdk_hosting_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_hosting_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_hosting_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_hosting_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'vst3sdk_vst3sdk_sdk_hosting_DEPS_TARGET' to all of them
        conan_package_library_targets("${vst3sdk_vst3sdk_sdk_hosting_LIBS_RELWITHDEBINFO}"
                                      "${vst3sdk_vst3sdk_sdk_hosting_LIB_DIRS_RELWITHDEBINFO}"
                                      vst3sdk_vst3sdk_sdk_hosting_DEPS_TARGET
                                      vst3sdk_vst3sdk_sdk_hosting_LIBRARIES_TARGETS
                                      "_RELWITHDEBINFO"
                                      "vst3sdk_vst3sdk_sdk_hosting")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET vst3sdk::sdk_hosting
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_hosting_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_hosting_LIBRARIES_TARGETS}>
                     APPEND)

        if("${vst3sdk_vst3sdk_sdk_hosting_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET vst3sdk::sdk_hosting
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         vst3sdk_vst3sdk_sdk_hosting_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET vst3sdk::sdk_hosting PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_hosting_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET vst3sdk::sdk_hosting PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_hosting_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET vst3sdk::sdk_hosting PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_hosting_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET vst3sdk::sdk_hosting PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_hosting_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT vst3sdk::sdk_common #############

        set(vst3sdk_vst3sdk_sdk_common_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(vst3sdk_vst3sdk_sdk_common_FRAMEWORKS_FOUND_RELWITHDEBINFO "${vst3sdk_vst3sdk_sdk_common_FRAMEWORKS_RELWITHDEBINFO}" "${vst3sdk_vst3sdk_sdk_common_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(vst3sdk_vst3sdk_sdk_common_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET vst3sdk_vst3sdk_sdk_common_DEPS_TARGET)
            add_library(vst3sdk_vst3sdk_sdk_common_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET vst3sdk_vst3sdk_sdk_common_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_common_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_common_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_common_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'vst3sdk_vst3sdk_sdk_common_DEPS_TARGET' to all of them
        conan_package_library_targets("${vst3sdk_vst3sdk_sdk_common_LIBS_RELWITHDEBINFO}"
                                      "${vst3sdk_vst3sdk_sdk_common_LIB_DIRS_RELWITHDEBINFO}"
                                      vst3sdk_vst3sdk_sdk_common_DEPS_TARGET
                                      vst3sdk_vst3sdk_sdk_common_LIBRARIES_TARGETS
                                      "_RELWITHDEBINFO"
                                      "vst3sdk_vst3sdk_sdk_common")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET vst3sdk::sdk_common
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_common_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_common_LIBRARIES_TARGETS}>
                     APPEND)

        if("${vst3sdk_vst3sdk_sdk_common_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET vst3sdk::sdk_common
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         vst3sdk_vst3sdk_sdk_common_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET vst3sdk::sdk_common PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_common_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET vst3sdk::sdk_common PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_common_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET vst3sdk::sdk_common PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_common_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET vst3sdk::sdk_common PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_common_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT vst3sdk::sdk #############

        set(vst3sdk_vst3sdk_sdk_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(vst3sdk_vst3sdk_sdk_FRAMEWORKS_FOUND_RELWITHDEBINFO "${vst3sdk_vst3sdk_sdk_FRAMEWORKS_RELWITHDEBINFO}" "${vst3sdk_vst3sdk_sdk_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(vst3sdk_vst3sdk_sdk_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET vst3sdk_vst3sdk_sdk_DEPS_TARGET)
            add_library(vst3sdk_vst3sdk_sdk_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET vst3sdk_vst3sdk_sdk_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'vst3sdk_vst3sdk_sdk_DEPS_TARGET' to all of them
        conan_package_library_targets("${vst3sdk_vst3sdk_sdk_LIBS_RELWITHDEBINFO}"
                                      "${vst3sdk_vst3sdk_sdk_LIB_DIRS_RELWITHDEBINFO}"
                                      vst3sdk_vst3sdk_sdk_DEPS_TARGET
                                      vst3sdk_vst3sdk_sdk_LIBRARIES_TARGETS
                                      "_RELWITHDEBINFO"
                                      "vst3sdk_vst3sdk_sdk")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET vst3sdk::sdk
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_LIBRARIES_TARGETS}>
                     APPEND)

        if("${vst3sdk_vst3sdk_sdk_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET vst3sdk::sdk
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         vst3sdk_vst3sdk_sdk_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET vst3sdk::sdk PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET vst3sdk::sdk PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET vst3sdk::sdk PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET vst3sdk::sdk PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_sdk_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT vst3sdk::pluginterfaces #############

        set(vst3sdk_vst3sdk_pluginterfaces_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(vst3sdk_vst3sdk_pluginterfaces_FRAMEWORKS_FOUND_RELWITHDEBINFO "${vst3sdk_vst3sdk_pluginterfaces_FRAMEWORKS_RELWITHDEBINFO}" "${vst3sdk_vst3sdk_pluginterfaces_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(vst3sdk_vst3sdk_pluginterfaces_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET vst3sdk_vst3sdk_pluginterfaces_DEPS_TARGET)
            add_library(vst3sdk_vst3sdk_pluginterfaces_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET vst3sdk_vst3sdk_pluginterfaces_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_pluginterfaces_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_pluginterfaces_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_pluginterfaces_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'vst3sdk_vst3sdk_pluginterfaces_DEPS_TARGET' to all of them
        conan_package_library_targets("${vst3sdk_vst3sdk_pluginterfaces_LIBS_RELWITHDEBINFO}"
                                      "${vst3sdk_vst3sdk_pluginterfaces_LIB_DIRS_RELWITHDEBINFO}"
                                      vst3sdk_vst3sdk_pluginterfaces_DEPS_TARGET
                                      vst3sdk_vst3sdk_pluginterfaces_LIBRARIES_TARGETS
                                      "_RELWITHDEBINFO"
                                      "vst3sdk_vst3sdk_pluginterfaces")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET vst3sdk::pluginterfaces
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_pluginterfaces_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_pluginterfaces_LIBRARIES_TARGETS}>
                     APPEND)

        if("${vst3sdk_vst3sdk_pluginterfaces_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET vst3sdk::pluginterfaces
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         vst3sdk_vst3sdk_pluginterfaces_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET vst3sdk::pluginterfaces PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_pluginterfaces_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET vst3sdk::pluginterfaces PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_pluginterfaces_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET vst3sdk::pluginterfaces PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_pluginterfaces_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET vst3sdk::pluginterfaces PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_pluginterfaces_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## COMPONENT vst3sdk::base #############

        set(vst3sdk_vst3sdk_base_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(vst3sdk_vst3sdk_base_FRAMEWORKS_FOUND_RELWITHDEBINFO "${vst3sdk_vst3sdk_base_FRAMEWORKS_RELWITHDEBINFO}" "${vst3sdk_vst3sdk_base_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(vst3sdk_vst3sdk_base_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET vst3sdk_vst3sdk_base_DEPS_TARGET)
            add_library(vst3sdk_vst3sdk_base_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET vst3sdk_vst3sdk_base_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_base_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_base_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_base_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'vst3sdk_vst3sdk_base_DEPS_TARGET' to all of them
        conan_package_library_targets("${vst3sdk_vst3sdk_base_LIBS_RELWITHDEBINFO}"
                                      "${vst3sdk_vst3sdk_base_LIB_DIRS_RELWITHDEBINFO}"
                                      vst3sdk_vst3sdk_base_DEPS_TARGET
                                      vst3sdk_vst3sdk_base_LIBRARIES_TARGETS
                                      "_RELWITHDEBINFO"
                                      "vst3sdk_vst3sdk_base")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET vst3sdk::base
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_base_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_base_LIBRARIES_TARGETS}>
                     APPEND)

        if("${vst3sdk_vst3sdk_base_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET vst3sdk::base
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         vst3sdk_vst3sdk_base_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET vst3sdk::base PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_base_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET vst3sdk::base PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_base_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET vst3sdk::base PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_base_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET vst3sdk::base PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${vst3sdk_vst3sdk_base_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET vst3sdk::vst3sdk PROPERTY INTERFACE_LINK_LIBRARIES vst3sdk::sdk_hosting APPEND)
    set_property(TARGET vst3sdk::vst3sdk PROPERTY INTERFACE_LINK_LIBRARIES vst3sdk::sdk_common APPEND)
    set_property(TARGET vst3sdk::vst3sdk PROPERTY INTERFACE_LINK_LIBRARIES vst3sdk::sdk APPEND)
    set_property(TARGET vst3sdk::vst3sdk PROPERTY INTERFACE_LINK_LIBRARIES vst3sdk::pluginterfaces APPEND)
    set_property(TARGET vst3sdk::vst3sdk PROPERTY INTERFACE_LINK_LIBRARIES vst3sdk::base APPEND)

########## For the modules (FindXXX)
set(vst3sdk_LIBRARIES_RELWITHDEBINFO vst3sdk::vst3sdk)