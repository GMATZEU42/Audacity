# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(ogg_FRAMEWORKS_FOUND_RELWITHDEBINFO "") # Will be filled later
conan_find_apple_frameworks(ogg_FRAMEWORKS_FOUND_RELWITHDEBINFO "${ogg_FRAMEWORKS_RELWITHDEBINFO}" "${ogg_FRAMEWORK_DIRS_RELWITHDEBINFO}")

set(ogg_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET ogg_DEPS_TARGET)
    add_library(ogg_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET ogg_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:RelWithDebInfo>:${ogg_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:${ogg_SYSTEM_LIBS_RELWITHDEBINFO}>
             $<$<CONFIG:RelWithDebInfo>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### ogg_DEPS_TARGET to all of them
conan_package_library_targets("${ogg_LIBS_RELWITHDEBINFO}"    # libraries
                              "${ogg_LIB_DIRS_RELWITHDEBINFO}" # package_libdir
                              ogg_DEPS_TARGET
                              ogg_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELWITHDEBINFO"
                              "ogg")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${ogg_BUILD_DIRS_RELWITHDEBINFO} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES RelWithDebInfo ########################################

    ########## COMPONENT Ogg::ogg #############

        set(ogg_Ogg_ogg_FRAMEWORKS_FOUND_RELWITHDEBINFO "")
        conan_find_apple_frameworks(ogg_Ogg_ogg_FRAMEWORKS_FOUND_RELWITHDEBINFO "${ogg_Ogg_ogg_FRAMEWORKS_RELWITHDEBINFO}" "${ogg_Ogg_ogg_FRAMEWORK_DIRS_RELWITHDEBINFO}")

        set(ogg_Ogg_ogg_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET ogg_Ogg_ogg_DEPS_TARGET)
            add_library(ogg_Ogg_ogg_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET ogg_Ogg_ogg_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${ogg_Ogg_ogg_FRAMEWORKS_FOUND_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${ogg_Ogg_ogg_SYSTEM_LIBS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${ogg_Ogg_ogg_DEPENDENCIES_RELWITHDEBINFO}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'ogg_Ogg_ogg_DEPS_TARGET' to all of them
        conan_package_library_targets("${ogg_Ogg_ogg_LIBS_RELWITHDEBINFO}"
                                      "${ogg_Ogg_ogg_LIB_DIRS_RELWITHDEBINFO}"
                                      ogg_Ogg_ogg_DEPS_TARGET
                                      ogg_Ogg_ogg_LIBRARIES_TARGETS
                                      "_RELWITHDEBINFO"
                                      "ogg_Ogg_ogg")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Ogg::ogg
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:RelWithDebInfo>:${ogg_Ogg_ogg_OBJECTS_RELWITHDEBINFO}>
                     $<$<CONFIG:RelWithDebInfo>:${ogg_Ogg_ogg_LIBRARIES_TARGETS}>
                     APPEND)

        if("${ogg_Ogg_ogg_LIBS_RELWITHDEBINFO}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Ogg::ogg
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         ogg_Ogg_ogg_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Ogg::ogg PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${ogg_Ogg_ogg_LINKER_FLAGS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Ogg::ogg PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:RelWithDebInfo>:${ogg_Ogg_ogg_INCLUDE_DIRS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Ogg::ogg PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:RelWithDebInfo>:${ogg_Ogg_ogg_COMPILE_DEFINITIONS_RELWITHDEBINFO}> APPEND)
        set_property(TARGET Ogg::ogg PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:RelWithDebInfo>:${ogg_Ogg_ogg_COMPILE_OPTIONS_RELWITHDEBINFO}> APPEND)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET Ogg::ogg PROPERTY INTERFACE_LINK_LIBRARIES Ogg::ogg APPEND)

########## For the modules (FindXXX)
set(ogg_LIBRARIES_RELWITHDEBINFO Ogg::ogg)
