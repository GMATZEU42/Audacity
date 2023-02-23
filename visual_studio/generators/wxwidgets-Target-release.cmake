# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(wxwidgets_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(wxwidgets_FRAMEWORKS_FOUND_RELEASE "${wxwidgets_FRAMEWORKS_RELEASE}" "${wxwidgets_FRAMEWORK_DIRS_RELEASE}")

set(wxwidgets_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET wxwidgets_DEPS_TARGET)
    add_library(wxwidgets_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET wxwidgets_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${wxwidgets_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${wxwidgets_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:ZLIB::ZLIB;PNG::PNG;libjpeg-turbo::libjpeg-turbo;wxwidgets::base;wxwidgets::base;wxwidgets::base;expat::expat;wxwidgets::base;wxwidgets::core;wxwidgets::core;wxwidgets::html;wxwidgets::xml;wxwidgets::core;wxwidgets::xml;wxwidgets::core;wxwidgets::html;wxwidgets::xml>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### wxwidgets_DEPS_TARGET to all of them
conan_package_library_targets("${wxwidgets_LIBS_RELEASE}"    # libraries
                              "${wxwidgets_LIB_DIRS_RELEASE}" # package_libdir
                              wxwidgets_DEPS_TARGET
                              wxwidgets_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "wxwidgets")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${wxwidgets_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Release ########################################

    ########## COMPONENT wxwidgets::xrc #############

        set(wxwidgets_wxwidgets_xrc_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(wxwidgets_wxwidgets_xrc_FRAMEWORKS_FOUND_RELEASE "${wxwidgets_wxwidgets_xrc_FRAMEWORKS_RELEASE}" "${wxwidgets_wxwidgets_xrc_FRAMEWORK_DIRS_RELEASE}")

        set(wxwidgets_wxwidgets_xrc_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET wxwidgets_wxwidgets_xrc_DEPS_TARGET)
            add_library(wxwidgets_wxwidgets_xrc_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET wxwidgets_wxwidgets_xrc_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xrc_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xrc_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xrc_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'wxwidgets_wxwidgets_xrc_DEPS_TARGET' to all of them
        conan_package_library_targets("${wxwidgets_wxwidgets_xrc_LIBS_RELEASE}"
                                      "${wxwidgets_wxwidgets_xrc_LIB_DIRS_RELEASE}"
                                      wxwidgets_wxwidgets_xrc_DEPS_TARGET
                                      wxwidgets_wxwidgets_xrc_LIBRARIES_TARGETS
                                      "_RELEASE"
                                      "wxwidgets_wxwidgets_xrc")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET wxwidgets::xrc
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xrc_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xrc_LIBRARIES_TARGETS}>
                     APPEND)

        if("${wxwidgets_wxwidgets_xrc_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET wxwidgets::xrc
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         wxwidgets_wxwidgets_xrc_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET wxwidgets::xrc PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xrc_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::xrc PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xrc_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::xrc PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xrc_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::xrc PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xrc_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT wxwidgets::qa #############

        set(wxwidgets_wxwidgets_qa_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(wxwidgets_wxwidgets_qa_FRAMEWORKS_FOUND_RELEASE "${wxwidgets_wxwidgets_qa_FRAMEWORKS_RELEASE}" "${wxwidgets_wxwidgets_qa_FRAMEWORK_DIRS_RELEASE}")

        set(wxwidgets_wxwidgets_qa_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET wxwidgets_wxwidgets_qa_DEPS_TARGET)
            add_library(wxwidgets_wxwidgets_qa_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET wxwidgets_wxwidgets_qa_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_qa_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_qa_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_qa_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'wxwidgets_wxwidgets_qa_DEPS_TARGET' to all of them
        conan_package_library_targets("${wxwidgets_wxwidgets_qa_LIBS_RELEASE}"
                                      "${wxwidgets_wxwidgets_qa_LIB_DIRS_RELEASE}"
                                      wxwidgets_wxwidgets_qa_DEPS_TARGET
                                      wxwidgets_wxwidgets_qa_LIBRARIES_TARGETS
                                      "_RELEASE"
                                      "wxwidgets_wxwidgets_qa")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET wxwidgets::qa
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_qa_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_qa_LIBRARIES_TARGETS}>
                     APPEND)

        if("${wxwidgets_wxwidgets_qa_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET wxwidgets::qa
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         wxwidgets_wxwidgets_qa_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET wxwidgets::qa PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_qa_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::qa PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_qa_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::qa PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_qa_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::qa PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_qa_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT wxwidgets::aui #############

        set(wxwidgets_wxwidgets_aui_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(wxwidgets_wxwidgets_aui_FRAMEWORKS_FOUND_RELEASE "${wxwidgets_wxwidgets_aui_FRAMEWORKS_RELEASE}" "${wxwidgets_wxwidgets_aui_FRAMEWORK_DIRS_RELEASE}")

        set(wxwidgets_wxwidgets_aui_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET wxwidgets_wxwidgets_aui_DEPS_TARGET)
            add_library(wxwidgets_wxwidgets_aui_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET wxwidgets_wxwidgets_aui_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_aui_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_aui_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_aui_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'wxwidgets_wxwidgets_aui_DEPS_TARGET' to all of them
        conan_package_library_targets("${wxwidgets_wxwidgets_aui_LIBS_RELEASE}"
                                      "${wxwidgets_wxwidgets_aui_LIB_DIRS_RELEASE}"
                                      wxwidgets_wxwidgets_aui_DEPS_TARGET
                                      wxwidgets_wxwidgets_aui_LIBRARIES_TARGETS
                                      "_RELEASE"
                                      "wxwidgets_wxwidgets_aui")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET wxwidgets::aui
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_aui_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_aui_LIBRARIES_TARGETS}>
                     APPEND)

        if("${wxwidgets_wxwidgets_aui_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET wxwidgets::aui
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         wxwidgets_wxwidgets_aui_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET wxwidgets::aui PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_aui_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::aui PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_aui_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::aui PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_aui_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::aui PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_aui_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT wxwidgets::html #############

        set(wxwidgets_wxwidgets_html_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(wxwidgets_wxwidgets_html_FRAMEWORKS_FOUND_RELEASE "${wxwidgets_wxwidgets_html_FRAMEWORKS_RELEASE}" "${wxwidgets_wxwidgets_html_FRAMEWORK_DIRS_RELEASE}")

        set(wxwidgets_wxwidgets_html_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET wxwidgets_wxwidgets_html_DEPS_TARGET)
            add_library(wxwidgets_wxwidgets_html_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET wxwidgets_wxwidgets_html_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_html_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_html_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_html_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'wxwidgets_wxwidgets_html_DEPS_TARGET' to all of them
        conan_package_library_targets("${wxwidgets_wxwidgets_html_LIBS_RELEASE}"
                                      "${wxwidgets_wxwidgets_html_LIB_DIRS_RELEASE}"
                                      wxwidgets_wxwidgets_html_DEPS_TARGET
                                      wxwidgets_wxwidgets_html_LIBRARIES_TARGETS
                                      "_RELEASE"
                                      "wxwidgets_wxwidgets_html")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET wxwidgets::html
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_html_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_html_LIBRARIES_TARGETS}>
                     APPEND)

        if("${wxwidgets_wxwidgets_html_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET wxwidgets::html
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         wxwidgets_wxwidgets_html_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET wxwidgets::html PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_html_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::html PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_html_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::html PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_html_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::html PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_html_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT wxwidgets::xml #############

        set(wxwidgets_wxwidgets_xml_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(wxwidgets_wxwidgets_xml_FRAMEWORKS_FOUND_RELEASE "${wxwidgets_wxwidgets_xml_FRAMEWORKS_RELEASE}" "${wxwidgets_wxwidgets_xml_FRAMEWORK_DIRS_RELEASE}")

        set(wxwidgets_wxwidgets_xml_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET wxwidgets_wxwidgets_xml_DEPS_TARGET)
            add_library(wxwidgets_wxwidgets_xml_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET wxwidgets_wxwidgets_xml_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xml_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xml_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xml_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'wxwidgets_wxwidgets_xml_DEPS_TARGET' to all of them
        conan_package_library_targets("${wxwidgets_wxwidgets_xml_LIBS_RELEASE}"
                                      "${wxwidgets_wxwidgets_xml_LIB_DIRS_RELEASE}"
                                      wxwidgets_wxwidgets_xml_DEPS_TARGET
                                      wxwidgets_wxwidgets_xml_LIBRARIES_TARGETS
                                      "_RELEASE"
                                      "wxwidgets_wxwidgets_xml")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET wxwidgets::xml
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xml_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xml_LIBRARIES_TARGETS}>
                     APPEND)

        if("${wxwidgets_wxwidgets_xml_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET wxwidgets::xml
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         wxwidgets_wxwidgets_xml_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET wxwidgets::xml PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xml_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::xml PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xml_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::xml PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xml_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::xml PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_xml_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT wxwidgets::net #############

        set(wxwidgets_wxwidgets_net_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(wxwidgets_wxwidgets_net_FRAMEWORKS_FOUND_RELEASE "${wxwidgets_wxwidgets_net_FRAMEWORKS_RELEASE}" "${wxwidgets_wxwidgets_net_FRAMEWORK_DIRS_RELEASE}")

        set(wxwidgets_wxwidgets_net_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET wxwidgets_wxwidgets_net_DEPS_TARGET)
            add_library(wxwidgets_wxwidgets_net_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET wxwidgets_wxwidgets_net_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_net_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_net_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_net_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'wxwidgets_wxwidgets_net_DEPS_TARGET' to all of them
        conan_package_library_targets("${wxwidgets_wxwidgets_net_LIBS_RELEASE}"
                                      "${wxwidgets_wxwidgets_net_LIB_DIRS_RELEASE}"
                                      wxwidgets_wxwidgets_net_DEPS_TARGET
                                      wxwidgets_wxwidgets_net_LIBRARIES_TARGETS
                                      "_RELEASE"
                                      "wxwidgets_wxwidgets_net")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET wxwidgets::net
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_net_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_net_LIBRARIES_TARGETS}>
                     APPEND)

        if("${wxwidgets_wxwidgets_net_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET wxwidgets::net
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         wxwidgets_wxwidgets_net_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET wxwidgets::net PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_net_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::net PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_net_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::net PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_net_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::net PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_net_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT wxwidgets::adv #############

        set(wxwidgets_wxwidgets_adv_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(wxwidgets_wxwidgets_adv_FRAMEWORKS_FOUND_RELEASE "${wxwidgets_wxwidgets_adv_FRAMEWORKS_RELEASE}" "${wxwidgets_wxwidgets_adv_FRAMEWORK_DIRS_RELEASE}")

        set(wxwidgets_wxwidgets_adv_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET wxwidgets_wxwidgets_adv_DEPS_TARGET)
            add_library(wxwidgets_wxwidgets_adv_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET wxwidgets_wxwidgets_adv_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_adv_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_adv_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_adv_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'wxwidgets_wxwidgets_adv_DEPS_TARGET' to all of them
        conan_package_library_targets("${wxwidgets_wxwidgets_adv_LIBS_RELEASE}"
                                      "${wxwidgets_wxwidgets_adv_LIB_DIRS_RELEASE}"
                                      wxwidgets_wxwidgets_adv_DEPS_TARGET
                                      wxwidgets_wxwidgets_adv_LIBRARIES_TARGETS
                                      "_RELEASE"
                                      "wxwidgets_wxwidgets_adv")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET wxwidgets::adv
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_adv_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_adv_LIBRARIES_TARGETS}>
                     APPEND)

        if("${wxwidgets_wxwidgets_adv_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET wxwidgets::adv
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         wxwidgets_wxwidgets_adv_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET wxwidgets::adv PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_adv_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::adv PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_adv_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::adv PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_adv_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::adv PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_adv_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT wxwidgets::core #############

        set(wxwidgets_wxwidgets_core_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(wxwidgets_wxwidgets_core_FRAMEWORKS_FOUND_RELEASE "${wxwidgets_wxwidgets_core_FRAMEWORKS_RELEASE}" "${wxwidgets_wxwidgets_core_FRAMEWORK_DIRS_RELEASE}")

        set(wxwidgets_wxwidgets_core_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET wxwidgets_wxwidgets_core_DEPS_TARGET)
            add_library(wxwidgets_wxwidgets_core_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET wxwidgets_wxwidgets_core_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_core_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_core_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_core_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'wxwidgets_wxwidgets_core_DEPS_TARGET' to all of them
        conan_package_library_targets("${wxwidgets_wxwidgets_core_LIBS_RELEASE}"
                                      "${wxwidgets_wxwidgets_core_LIB_DIRS_RELEASE}"
                                      wxwidgets_wxwidgets_core_DEPS_TARGET
                                      wxwidgets_wxwidgets_core_LIBRARIES_TARGETS
                                      "_RELEASE"
                                      "wxwidgets_wxwidgets_core")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET wxwidgets::core
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_core_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_core_LIBRARIES_TARGETS}>
                     APPEND)

        if("${wxwidgets_wxwidgets_core_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET wxwidgets::core
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         wxwidgets_wxwidgets_core_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET wxwidgets::core PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_core_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::core PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_core_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::core PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_core_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::core PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_core_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## COMPONENT wxwidgets::base #############

        set(wxwidgets_wxwidgets_base_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(wxwidgets_wxwidgets_base_FRAMEWORKS_FOUND_RELEASE "${wxwidgets_wxwidgets_base_FRAMEWORKS_RELEASE}" "${wxwidgets_wxwidgets_base_FRAMEWORK_DIRS_RELEASE}")

        set(wxwidgets_wxwidgets_base_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET wxwidgets_wxwidgets_base_DEPS_TARGET)
            add_library(wxwidgets_wxwidgets_base_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET wxwidgets_wxwidgets_base_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_base_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_base_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_base_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'wxwidgets_wxwidgets_base_DEPS_TARGET' to all of them
        conan_package_library_targets("${wxwidgets_wxwidgets_base_LIBS_RELEASE}"
                                      "${wxwidgets_wxwidgets_base_LIB_DIRS_RELEASE}"
                                      wxwidgets_wxwidgets_base_DEPS_TARGET
                                      wxwidgets_wxwidgets_base_LIBRARIES_TARGETS
                                      "_RELEASE"
                                      "wxwidgets_wxwidgets_base")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET wxwidgets::base
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_base_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_base_LIBRARIES_TARGETS}>
                     APPEND)

        if("${wxwidgets_wxwidgets_base_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET wxwidgets::base
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         wxwidgets_wxwidgets_base_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET wxwidgets::base PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_base_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::base PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_base_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::base PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_base_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET wxwidgets::base PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${wxwidgets_wxwidgets_base_COMPILE_OPTIONS_RELEASE}> APPEND)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET wxwidgets::wxwidgets PROPERTY INTERFACE_LINK_LIBRARIES wxwidgets::xrc APPEND)
    set_property(TARGET wxwidgets::wxwidgets PROPERTY INTERFACE_LINK_LIBRARIES wxwidgets::qa APPEND)
    set_property(TARGET wxwidgets::wxwidgets PROPERTY INTERFACE_LINK_LIBRARIES wxwidgets::aui APPEND)
    set_property(TARGET wxwidgets::wxwidgets PROPERTY INTERFACE_LINK_LIBRARIES wxwidgets::html APPEND)
    set_property(TARGET wxwidgets::wxwidgets PROPERTY INTERFACE_LINK_LIBRARIES wxwidgets::xml APPEND)
    set_property(TARGET wxwidgets::wxwidgets PROPERTY INTERFACE_LINK_LIBRARIES wxwidgets::net APPEND)
    set_property(TARGET wxwidgets::wxwidgets PROPERTY INTERFACE_LINK_LIBRARIES wxwidgets::adv APPEND)
    set_property(TARGET wxwidgets::wxwidgets PROPERTY INTERFACE_LINK_LIBRARIES wxwidgets::core APPEND)
    set_property(TARGET wxwidgets::wxwidgets PROPERTY INTERFACE_LINK_LIBRARIES wxwidgets::base APPEND)

########## For the modules (FindXXX)
set(wxwidgets_LIBRARIES_RELEASE wxwidgets::wxwidgets)
