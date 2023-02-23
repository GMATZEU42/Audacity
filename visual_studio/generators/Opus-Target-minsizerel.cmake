# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(opus_FRAMEWORKS_FOUND_MINSIZEREL "") # Will be filled later
conan_find_apple_frameworks(opus_FRAMEWORKS_FOUND_MINSIZEREL "${opus_FRAMEWORKS_MINSIZEREL}" "${opus_FRAMEWORK_DIRS_MINSIZEREL}")

set(opus_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET opus_DEPS_TARGET)
    add_library(opus_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET opus_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:MinSizeRel>:${opus_FRAMEWORKS_FOUND_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:${opus_SYSTEM_LIBS_MINSIZEREL}>
             $<$<CONFIG:MinSizeRel>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### opus_DEPS_TARGET to all of them
conan_package_library_targets("${opus_LIBS_MINSIZEREL}"    # libraries
                              "${opus_LIB_DIRS_MINSIZEREL}" # package_libdir
                              opus_DEPS_TARGET
                              opus_LIBRARIES_TARGETS  # out_libraries_targets
                              "_MINSIZEREL"
                              "opus")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${opus_BUILD_DIRS_MINSIZEREL} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES MinSizeRel ########################################

    ########## COMPONENT Opus::opus #############

        set(opus_Opus_opus_FRAMEWORKS_FOUND_MINSIZEREL "")
        conan_find_apple_frameworks(opus_Opus_opus_FRAMEWORKS_FOUND_MINSIZEREL "${opus_Opus_opus_FRAMEWORKS_MINSIZEREL}" "${opus_Opus_opus_FRAMEWORK_DIRS_MINSIZEREL}")

        set(opus_Opus_opus_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET opus_Opus_opus_DEPS_TARGET)
            add_library(opus_Opus_opus_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET opus_Opus_opus_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${opus_Opus_opus_FRAMEWORKS_FOUND_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${opus_Opus_opus_SYSTEM_LIBS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${opus_Opus_opus_DEPENDENCIES_MINSIZEREL}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'opus_Opus_opus_DEPS_TARGET' to all of them
        conan_package_library_targets("${opus_Opus_opus_LIBS_MINSIZEREL}"
                                      "${opus_Opus_opus_LIB_DIRS_MINSIZEREL}"
                                      opus_Opus_opus_DEPS_TARGET
                                      opus_Opus_opus_LIBRARIES_TARGETS
                                      "_MINSIZEREL"
                                      "opus_Opus_opus")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Opus::opus
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:MinSizeRel>:${opus_Opus_opus_OBJECTS_MINSIZEREL}>
                     $<$<CONFIG:MinSizeRel>:${opus_Opus_opus_LIBRARIES_TARGETS}>
                     APPEND)

        if("${opus_Opus_opus_LIBS_MINSIZEREL}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Opus::opus
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         opus_Opus_opus_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Opus::opus PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${opus_Opus_opus_LINKER_FLAGS_MINSIZEREL}> APPEND)
        set_property(TARGET Opus::opus PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:MinSizeRel>:${opus_Opus_opus_INCLUDE_DIRS_MINSIZEREL}> APPEND)
        set_property(TARGET Opus::opus PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:MinSizeRel>:${opus_Opus_opus_COMPILE_DEFINITIONS_MINSIZEREL}> APPEND)
        set_property(TARGET Opus::opus PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:MinSizeRel>:${opus_Opus_opus_COMPILE_OPTIONS_MINSIZEREL}> APPEND)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET Opus::opus PROPERTY INTERFACE_LINK_LIBRARIES Opus::opus APPEND)

########## For the modules (FindXXX)
set(opus_LIBRARIES_MINSIZEREL Opus::opus)
