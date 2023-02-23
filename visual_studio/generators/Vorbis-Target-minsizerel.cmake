# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(vorbis_FRAMEWORKS_FOUND_MINSIZEREL "") # Will be filled later
conan_find_apple_frameworks(vorbis_FRAMEWORKS_FOUND_MINSIZEREL "${vorbis_FRAMEWORKS_MINSIZEREL}" "${vorbis_FRAMEWORK_DIRS_MINSIZEREL}")

set(vorbis_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET vorbis_DEPS_TARGET)
    add_library(vorbis_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET vorbis_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:MinSizeRel>:${vorbis_FRAMEWORKS_FOUND_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:${vorbis_SYSTEM_LIBS_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:Ogg::ogg;Vorbis::vorbis;Vorbis::vorbis;Vorbis::vorbisenc;Vorbis::vorbisfile>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### vorbis_DEPS_TARGET to all of them
conan_package_library_targets("${vorbis_LIBS_MINSIZEREL}"    # libraries
                              "${vorbis_LIB_DIRS_MINSIZEREL}" # package_libdir
                              vorbis_DEPS_TARGET
                              vorbis_LIBRARIES_TARGETS  # out_libraries_targets
                              "_MINSIZEREL"
                              "vorbis")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${vorbis_BUILD_DIRS_MINSIZEREL} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES MinSizeRel ########################################

    ########## COMPONENT vorbis::vorbisfile-alias #############

        set(vorbis_vorbis_vorbisfile-alias_FRAMEWORKS_FOUND_MINSIZEREL "")
        conan_find_apple_frameworks(vorbis_vorbis_vorbisfile-alias_FRAMEWORKS_FOUND_MINSIZEREL "${vorbis_vorbis_vorbisfile-alias_FRAMEWORKS_MINSIZEREL}" "${vorbis_vorbis_vorbisfile-alias_FRAMEWORK_DIRS_MINSIZEREL}")

        set(vorbis_vorbis_vorbisfile-alias_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET vorbis_vorbis_vorbisfile-alias_DEPS_TARGET)
            add_library(vorbis_vorbis_vorbisfile-alias_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET vorbis_vorbis_vorbisfile-alias_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisfile-alias_FRAMEWORKS_FOUND_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisfile-alias_SYSTEM_LIBS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisfile-alias_DEPENDENCIES_MINSIZEREL}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'vorbis_vorbis_vorbisfile-alias_DEPS_TARGET' to all of them
        conan_package_library_targets("${vorbis_vorbis_vorbisfile-alias_LIBS_MINSIZEREL}"
                                      "${vorbis_vorbis_vorbisfile-alias_LIB_DIRS_MINSIZEREL}"
                                      vorbis_vorbis_vorbisfile-alias_DEPS_TARGET
                                      vorbis_vorbis_vorbisfile-alias_LIBRARIES_TARGETS
                                      "_MINSIZEREL"
                                      "vorbis_vorbis_vorbisfile-alias")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET vorbis::vorbisfile-alias
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisfile-alias_OBJECTS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisfile-alias_LIBRARIES_TARGETS}>
                     APPEND)

        if("${vorbis_vorbis_vorbisfile-alias_LIBS_MINSIZEREL}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET vorbis::vorbisfile-alias
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         vorbis_vorbis_vorbisfile-alias_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET vorbis::vorbisfile-alias PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisfile-alias_LINKER_FLAGS_MINSIZEREL}> APPEND)
        set_property(TARGET vorbis::vorbisfile-alias PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisfile-alias_INCLUDE_DIRS_MINSIZEREL}> APPEND)
        set_property(TARGET vorbis::vorbisfile-alias PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisfile-alias_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
        set_property(TARGET vorbis::vorbisfile-alias PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisfile-alias_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

    ########## COMPONENT vorbis::vorbisenc-alias #############

        set(vorbis_vorbis_vorbisenc-alias_FRAMEWORKS_FOUND_MINSIZEREL "")
        conan_find_apple_frameworks(vorbis_vorbis_vorbisenc-alias_FRAMEWORKS_FOUND_MINSIZEREL "${vorbis_vorbis_vorbisenc-alias_FRAMEWORKS_MINSIZEREL}" "${vorbis_vorbis_vorbisenc-alias_FRAMEWORK_DIRS_MINSIZEREL}")

        set(vorbis_vorbis_vorbisenc-alias_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET vorbis_vorbis_vorbisenc-alias_DEPS_TARGET)
            add_library(vorbis_vorbis_vorbisenc-alias_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET vorbis_vorbis_vorbisenc-alias_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisenc-alias_FRAMEWORKS_FOUND_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisenc-alias_SYSTEM_LIBS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisenc-alias_DEPENDENCIES_MINSIZEREL}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'vorbis_vorbis_vorbisenc-alias_DEPS_TARGET' to all of them
        conan_package_library_targets("${vorbis_vorbis_vorbisenc-alias_LIBS_MINSIZEREL}"
                                      "${vorbis_vorbis_vorbisenc-alias_LIB_DIRS_MINSIZEREL}"
                                      vorbis_vorbis_vorbisenc-alias_DEPS_TARGET
                                      vorbis_vorbis_vorbisenc-alias_LIBRARIES_TARGETS
                                      "_MINSIZEREL"
                                      "vorbis_vorbis_vorbisenc-alias")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET vorbis::vorbisenc-alias
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisenc-alias_OBJECTS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisenc-alias_LIBRARIES_TARGETS}>
                     APPEND)

        if("${vorbis_vorbis_vorbisenc-alias_LIBS_MINSIZEREL}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET vorbis::vorbisenc-alias
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         vorbis_vorbis_vorbisenc-alias_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET vorbis::vorbisenc-alias PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisenc-alias_LINKER_FLAGS_MINSIZEREL}> APPEND)
        set_property(TARGET vorbis::vorbisenc-alias PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisenc-alias_INCLUDE_DIRS_MINSIZEREL}> APPEND)
        set_property(TARGET vorbis::vorbisenc-alias PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisenc-alias_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
        set_property(TARGET vorbis::vorbisenc-alias PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${vorbis_vorbis_vorbisenc-alias_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

    ########## COMPONENT Vorbis::vorbisfile #############

        set(vorbis_Vorbis_vorbisfile_FRAMEWORKS_FOUND_MINSIZEREL "")
        conan_find_apple_frameworks(vorbis_Vorbis_vorbisfile_FRAMEWORKS_FOUND_MINSIZEREL "${vorbis_Vorbis_vorbisfile_FRAMEWORKS_MINSIZEREL}" "${vorbis_Vorbis_vorbisfile_FRAMEWORK_DIRS_MINSIZEREL}")

        set(vorbis_Vorbis_vorbisfile_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET vorbis_Vorbis_vorbisfile_DEPS_TARGET)
            add_library(vorbis_Vorbis_vorbisfile_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET vorbis_Vorbis_vorbisfile_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisfile_FRAMEWORKS_FOUND_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisfile_SYSTEM_LIBS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisfile_DEPENDENCIES_MINSIZEREL}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'vorbis_Vorbis_vorbisfile_DEPS_TARGET' to all of them
        conan_package_library_targets("${vorbis_Vorbis_vorbisfile_LIBS_MINSIZEREL}"
                                      "${vorbis_Vorbis_vorbisfile_LIB_DIRS_MINSIZEREL}"
                                      vorbis_Vorbis_vorbisfile_DEPS_TARGET
                                      vorbis_Vorbis_vorbisfile_LIBRARIES_TARGETS
                                      "_MINSIZEREL"
                                      "vorbis_Vorbis_vorbisfile")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Vorbis::vorbisfile
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisfile_OBJECTS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisfile_LIBRARIES_TARGETS}>
                     APPEND)

        if("${vorbis_Vorbis_vorbisfile_LIBS_MINSIZEREL}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Vorbis::vorbisfile
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         vorbis_Vorbis_vorbisfile_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Vorbis::vorbisfile PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisfile_LINKER_FLAGS_MINSIZEREL}> APPEND)
        set_property(TARGET Vorbis::vorbisfile PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisfile_INCLUDE_DIRS_MINSIZEREL}> APPEND)
        set_property(TARGET Vorbis::vorbisfile PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisfile_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
        set_property(TARGET Vorbis::vorbisfile PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisfile_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

    ########## COMPONENT Vorbis::vorbisenc #############

        set(vorbis_Vorbis_vorbisenc_FRAMEWORKS_FOUND_MINSIZEREL "")
        conan_find_apple_frameworks(vorbis_Vorbis_vorbisenc_FRAMEWORKS_FOUND_MINSIZEREL "${vorbis_Vorbis_vorbisenc_FRAMEWORKS_MINSIZEREL}" "${vorbis_Vorbis_vorbisenc_FRAMEWORK_DIRS_MINSIZEREL}")

        set(vorbis_Vorbis_vorbisenc_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET vorbis_Vorbis_vorbisenc_DEPS_TARGET)
            add_library(vorbis_Vorbis_vorbisenc_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET vorbis_Vorbis_vorbisenc_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisenc_FRAMEWORKS_FOUND_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisenc_SYSTEM_LIBS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisenc_DEPENDENCIES_MINSIZEREL}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'vorbis_Vorbis_vorbisenc_DEPS_TARGET' to all of them
        conan_package_library_targets("${vorbis_Vorbis_vorbisenc_LIBS_MINSIZEREL}"
                                      "${vorbis_Vorbis_vorbisenc_LIB_DIRS_MINSIZEREL}"
                                      vorbis_Vorbis_vorbisenc_DEPS_TARGET
                                      vorbis_Vorbis_vorbisenc_LIBRARIES_TARGETS
                                      "_MINSIZEREL"
                                      "vorbis_Vorbis_vorbisenc")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Vorbis::vorbisenc
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisenc_OBJECTS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisenc_LIBRARIES_TARGETS}>
                     APPEND)

        if("${vorbis_Vorbis_vorbisenc_LIBS_MINSIZEREL}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Vorbis::vorbisenc
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         vorbis_Vorbis_vorbisenc_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Vorbis::vorbisenc PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisenc_LINKER_FLAGS_MINSIZEREL}> APPEND)
        set_property(TARGET Vorbis::vorbisenc PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisenc_INCLUDE_DIRS_MINSIZEREL}> APPEND)
        set_property(TARGET Vorbis::vorbisenc PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisenc_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
        set_property(TARGET Vorbis::vorbisenc PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbisenc_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

    ########## COMPONENT Vorbis::vorbis #############

        set(vorbis_Vorbis_vorbis_FRAMEWORKS_FOUND_MINSIZEREL "")
        conan_find_apple_frameworks(vorbis_Vorbis_vorbis_FRAMEWORKS_FOUND_MINSIZEREL "${vorbis_Vorbis_vorbis_FRAMEWORKS_MINSIZEREL}" "${vorbis_Vorbis_vorbis_FRAMEWORK_DIRS_MINSIZEREL}")

        set(vorbis_Vorbis_vorbis_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET vorbis_Vorbis_vorbis_DEPS_TARGET)
            add_library(vorbis_Vorbis_vorbis_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET vorbis_Vorbis_vorbis_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbis_FRAMEWORKS_FOUND_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbis_SYSTEM_LIBS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbis_DEPENDENCIES_MINSIZEREL}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'vorbis_Vorbis_vorbis_DEPS_TARGET' to all of them
        conan_package_library_targets("${vorbis_Vorbis_vorbis_LIBS_MINSIZEREL}"
                                      "${vorbis_Vorbis_vorbis_LIB_DIRS_MINSIZEREL}"
                                      vorbis_Vorbis_vorbis_DEPS_TARGET
                                      vorbis_Vorbis_vorbis_LIBRARIES_TARGETS
                                      "_MINSIZEREL"
                                      "vorbis_Vorbis_vorbis")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Vorbis::vorbis
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbis_OBJECTS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbis_LIBRARIES_TARGETS}>
                     APPEND)

        if("${vorbis_Vorbis_vorbis_LIBS_MINSIZEREL}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Vorbis::vorbis
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         vorbis_Vorbis_vorbis_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Vorbis::vorbis PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbis_LINKER_FLAGS_MINSIZEREL}> APPEND)
        set_property(TARGET Vorbis::vorbis PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbis_INCLUDE_DIRS_MINSIZEREL}> APPEND)
        set_property(TARGET Vorbis::vorbis PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbis_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
        set_property(TARGET Vorbis::vorbis PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${vorbis_Vorbis_vorbis_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET vorbis::vorbis PROPERTY INTERFACE_LINK_LIBRARIES vorbis::vorbisfile-alias APPEND)
    set_property(TARGET vorbis::vorbis PROPERTY INTERFACE_LINK_LIBRARIES vorbis::vorbisenc-alias APPEND)
    set_property(TARGET vorbis::vorbis PROPERTY INTERFACE_LINK_LIBRARIES Vorbis::vorbisfile APPEND)
    set_property(TARGET vorbis::vorbis PROPERTY INTERFACE_LINK_LIBRARIES Vorbis::vorbisenc APPEND)
    set_property(TARGET vorbis::vorbis PROPERTY INTERFACE_LINK_LIBRARIES Vorbis::vorbis APPEND)

########## For the modules (FindXXX)
set(vorbis_LIBRARIES_MINSIZEREL vorbis::vorbis)
