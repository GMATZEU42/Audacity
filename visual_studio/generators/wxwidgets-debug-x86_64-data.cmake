########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND wxwidgets_COMPONENT_NAMES wxwidgets::base wxwidgets::core wxwidgets::adv wxwidgets::net wxwidgets::xml wxwidgets::html wxwidgets::aui wxwidgets::qa wxwidgets::xrc)
list(REMOVE_DUPLICATES wxwidgets_COMPONENT_NAMES)
list(APPEND wxwidgets_FIND_DEPENDENCY_NAMES ZLIB PNG libjpeg-turbo expat)
list(REMOVE_DUPLICATES wxwidgets_FIND_DEPENDENCY_NAMES)
set(PNG_FIND_MODE "NO_MODULE")
set(libjpeg-turbo_FIND_MODE "NO_MODULE")
set(ZLIB_FIND_MODE "NO_MODULE")
set(expat_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(wxwidgets_PACKAGE_FOLDER_DEBUG "C:/Users/giaco/.conan/data/wxwidgets/3.1.3.4-audacity/_/_/package/7b6179636cd96e2eaf6628a5948c95243b67b127")
set(wxwidgets_BUILD_MODULES_PATHS_DEBUG )


set(wxwidgets_INCLUDE_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/include"
			"${wxwidgets_PACKAGE_FOLDER_DEBUG}/include/msvc")
set(wxwidgets_RES_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/res")
set(wxwidgets_DEFINITIONS_DEBUG "-DwxUSE_GUI=1"
			"-D__WXDEBUG__"
			"-DWXUSINGDLL"
			"-D__WXMSW__"
			"-DwxNO_NET_LIB"
			"-DwxNO_XML_LIB"
			"-DwxNO_REGEX_LIB"
			"-DwxNO_ZLIB_LIB"
			"-DwxNO_JPEG_LIB"
			"-DwxNO_PNG_LIB"
			"-DwxNO_TIFF_LIB"
			"-DwxNO_ADV_LIB"
			"-DwxNO_HTML_LIB"
			"-DwxNO_GL_LIB"
			"-DwxNO_QA_LIB"
			"-DwxNO_XRC_LIB"
			"-DwxNO_AUI_LIB"
			"-DwxNO_PROPGRID_LIB"
			"-DwxNO_RIBBON_LIB"
			"-DwxNO_RICHTEXT_LIB"
			"-DwxNO_MEDIA_LIB"
			"-DwxNO_STC_LIB"
			"-DwxNO_WEBVIEW_LIB")
set(wxwidgets_SHARED_LINK_FLAGS_DEBUG )
set(wxwidgets_EXE_LINK_FLAGS_DEBUG )
set(wxwidgets_OBJECTS_DEBUG )
set(wxwidgets_COMPILE_DEFINITIONS_DEBUG "wxUSE_GUI=1"
			"__WXDEBUG__"
			"WXUSINGDLL"
			"__WXMSW__"
			"wxNO_NET_LIB"
			"wxNO_XML_LIB"
			"wxNO_REGEX_LIB"
			"wxNO_ZLIB_LIB"
			"wxNO_JPEG_LIB"
			"wxNO_PNG_LIB"
			"wxNO_TIFF_LIB"
			"wxNO_ADV_LIB"
			"wxNO_HTML_LIB"
			"wxNO_GL_LIB"
			"wxNO_QA_LIB"
			"wxNO_XRC_LIB"
			"wxNO_AUI_LIB"
			"wxNO_PROPGRID_LIB"
			"wxNO_RIBBON_LIB"
			"wxNO_RICHTEXT_LIB"
			"wxNO_MEDIA_LIB"
			"wxNO_STC_LIB"
			"wxNO_WEBVIEW_LIB")
set(wxwidgets_COMPILE_OPTIONS_C_DEBUG )
set(wxwidgets_COMPILE_OPTIONS_CXX_DEBUG )
set(wxwidgets_LIB_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib"
			"${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib/vc_x64_dll")
set(wxwidgets_LIBS_DEBUG wxmsw31ud_xrc wxmsw31ud_qa wxmsw31ud_aui wxmsw31ud_html wxbase31ud_xml wxbase31ud_net wxmsw31ud_adv wxmsw31ud_core wxbase31ud)
set(wxwidgets_SYSTEM_LIBS_DEBUG kernel32 user32 gdi32 comdlg32 winspool shell32 comctl32 ole32 oleaut32 uuid wininet rpcrt4 winmm advapi32 wsock32)
set(wxwidgets_FRAMEWORK_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(wxwidgets_FRAMEWORKS_DEBUG )
set(wxwidgets_BUILD_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/")

# COMPOUND VARIABLES
set(wxwidgets_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${wxwidgets_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${wxwidgets_COMPILE_OPTIONS_C_DEBUG}>")
set(wxwidgets_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${wxwidgets_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${wxwidgets_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${wxwidgets_EXE_LINK_FLAGS_DEBUG}>")


set(wxwidgets_COMPONENTS_DEBUG wxwidgets::base wxwidgets::core wxwidgets::adv wxwidgets::net wxwidgets::xml wxwidgets::html wxwidgets::aui wxwidgets::qa wxwidgets::xrc)
########### COMPONENT wxwidgets::xrc VARIABLES ############################################

set(wxwidgets_wxwidgets_xrc_INCLUDE_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/include")
set(wxwidgets_wxwidgets_xrc_LIB_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib"
			"${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib/vc_x64_dll")
set(wxwidgets_wxwidgets_xrc_RES_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/res")
set(wxwidgets_wxwidgets_xrc_DEFINITIONS_DEBUG "-DwxUSE_GUI=1"
			"-D__WXDEBUG__"
			"-DWXUSINGDLL"
			"-D__WXMSW__"
			"-DwxNO_NET_LIB"
			"-DwxNO_XML_LIB"
			"-DwxNO_REGEX_LIB"
			"-DwxNO_ZLIB_LIB"
			"-DwxNO_JPEG_LIB"
			"-DwxNO_PNG_LIB"
			"-DwxNO_TIFF_LIB"
			"-DwxNO_ADV_LIB"
			"-DwxNO_HTML_LIB"
			"-DwxNO_GL_LIB"
			"-DwxNO_QA_LIB"
			"-DwxNO_XRC_LIB"
			"-DwxNO_AUI_LIB"
			"-DwxNO_PROPGRID_LIB"
			"-DwxNO_RIBBON_LIB"
			"-DwxNO_RICHTEXT_LIB"
			"-DwxNO_MEDIA_LIB"
			"-DwxNO_STC_LIB"
			"-DwxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_xrc_OBJECTS_DEBUG )
set(wxwidgets_wxwidgets_xrc_COMPILE_DEFINITIONS_DEBUG "wxUSE_GUI=1"
			"__WXDEBUG__"
			"WXUSINGDLL"
			"__WXMSW__"
			"wxNO_NET_LIB"
			"wxNO_XML_LIB"
			"wxNO_REGEX_LIB"
			"wxNO_ZLIB_LIB"
			"wxNO_JPEG_LIB"
			"wxNO_PNG_LIB"
			"wxNO_TIFF_LIB"
			"wxNO_ADV_LIB"
			"wxNO_HTML_LIB"
			"wxNO_GL_LIB"
			"wxNO_QA_LIB"
			"wxNO_XRC_LIB"
			"wxNO_AUI_LIB"
			"wxNO_PROPGRID_LIB"
			"wxNO_RIBBON_LIB"
			"wxNO_RICHTEXT_LIB"
			"wxNO_MEDIA_LIB"
			"wxNO_STC_LIB"
			"wxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_xrc_COMPILE_OPTIONS_C_DEBUG "")
set(wxwidgets_wxwidgets_xrc_COMPILE_OPTIONS_CXX_DEBUG "")
set(wxwidgets_wxwidgets_xrc_LIBS_DEBUG wxmsw31ud_xrc)
set(wxwidgets_wxwidgets_xrc_SYSTEM_LIBS_DEBUG )
set(wxwidgets_wxwidgets_xrc_FRAMEWORK_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(wxwidgets_wxwidgets_xrc_FRAMEWORKS_DEBUG )
set(wxwidgets_wxwidgets_xrc_DEPENDENCIES_DEBUG wxwidgets::core wxwidgets::html wxwidgets::xml)
set(wxwidgets_wxwidgets_xrc_SHARED_LINK_FLAGS_DEBUG )
set(wxwidgets_wxwidgets_xrc_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(wxwidgets_wxwidgets_xrc_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${wxwidgets_wxwidgets_xrc_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${wxwidgets_wxwidgets_xrc_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${wxwidgets_wxwidgets_xrc_EXE_LINK_FLAGS_DEBUG}>
)
set(wxwidgets_wxwidgets_xrc_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${wxwidgets_wxwidgets_xrc_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${wxwidgets_wxwidgets_xrc_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT wxwidgets::qa VARIABLES ############################################

set(wxwidgets_wxwidgets_qa_INCLUDE_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/include")
set(wxwidgets_wxwidgets_qa_LIB_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib"
			"${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib/vc_x64_dll")
set(wxwidgets_wxwidgets_qa_RES_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/res")
set(wxwidgets_wxwidgets_qa_DEFINITIONS_DEBUG "-DwxUSE_GUI=1"
			"-D__WXDEBUG__"
			"-DWXUSINGDLL"
			"-D__WXMSW__"
			"-DwxNO_NET_LIB"
			"-DwxNO_XML_LIB"
			"-DwxNO_REGEX_LIB"
			"-DwxNO_ZLIB_LIB"
			"-DwxNO_JPEG_LIB"
			"-DwxNO_PNG_LIB"
			"-DwxNO_TIFF_LIB"
			"-DwxNO_ADV_LIB"
			"-DwxNO_HTML_LIB"
			"-DwxNO_GL_LIB"
			"-DwxNO_QA_LIB"
			"-DwxNO_XRC_LIB"
			"-DwxNO_AUI_LIB"
			"-DwxNO_PROPGRID_LIB"
			"-DwxNO_RIBBON_LIB"
			"-DwxNO_RICHTEXT_LIB"
			"-DwxNO_MEDIA_LIB"
			"-DwxNO_STC_LIB"
			"-DwxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_qa_OBJECTS_DEBUG )
set(wxwidgets_wxwidgets_qa_COMPILE_DEFINITIONS_DEBUG "wxUSE_GUI=1"
			"__WXDEBUG__"
			"WXUSINGDLL"
			"__WXMSW__"
			"wxNO_NET_LIB"
			"wxNO_XML_LIB"
			"wxNO_REGEX_LIB"
			"wxNO_ZLIB_LIB"
			"wxNO_JPEG_LIB"
			"wxNO_PNG_LIB"
			"wxNO_TIFF_LIB"
			"wxNO_ADV_LIB"
			"wxNO_HTML_LIB"
			"wxNO_GL_LIB"
			"wxNO_QA_LIB"
			"wxNO_XRC_LIB"
			"wxNO_AUI_LIB"
			"wxNO_PROPGRID_LIB"
			"wxNO_RIBBON_LIB"
			"wxNO_RICHTEXT_LIB"
			"wxNO_MEDIA_LIB"
			"wxNO_STC_LIB"
			"wxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_qa_COMPILE_OPTIONS_C_DEBUG "")
set(wxwidgets_wxwidgets_qa_COMPILE_OPTIONS_CXX_DEBUG "")
set(wxwidgets_wxwidgets_qa_LIBS_DEBUG wxmsw31ud_qa)
set(wxwidgets_wxwidgets_qa_SYSTEM_LIBS_DEBUG )
set(wxwidgets_wxwidgets_qa_FRAMEWORK_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(wxwidgets_wxwidgets_qa_FRAMEWORKS_DEBUG )
set(wxwidgets_wxwidgets_qa_DEPENDENCIES_DEBUG wxwidgets::core wxwidgets::xml)
set(wxwidgets_wxwidgets_qa_SHARED_LINK_FLAGS_DEBUG )
set(wxwidgets_wxwidgets_qa_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(wxwidgets_wxwidgets_qa_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${wxwidgets_wxwidgets_qa_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${wxwidgets_wxwidgets_qa_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${wxwidgets_wxwidgets_qa_EXE_LINK_FLAGS_DEBUG}>
)
set(wxwidgets_wxwidgets_qa_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${wxwidgets_wxwidgets_qa_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${wxwidgets_wxwidgets_qa_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT wxwidgets::aui VARIABLES ############################################

set(wxwidgets_wxwidgets_aui_INCLUDE_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/include")
set(wxwidgets_wxwidgets_aui_LIB_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib"
			"${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib/vc_x64_dll")
set(wxwidgets_wxwidgets_aui_RES_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/res")
set(wxwidgets_wxwidgets_aui_DEFINITIONS_DEBUG "-DwxUSE_GUI=1"
			"-D__WXDEBUG__"
			"-DWXUSINGDLL"
			"-D__WXMSW__"
			"-DwxNO_NET_LIB"
			"-DwxNO_XML_LIB"
			"-DwxNO_REGEX_LIB"
			"-DwxNO_ZLIB_LIB"
			"-DwxNO_JPEG_LIB"
			"-DwxNO_PNG_LIB"
			"-DwxNO_TIFF_LIB"
			"-DwxNO_ADV_LIB"
			"-DwxNO_HTML_LIB"
			"-DwxNO_GL_LIB"
			"-DwxNO_QA_LIB"
			"-DwxNO_XRC_LIB"
			"-DwxNO_AUI_LIB"
			"-DwxNO_PROPGRID_LIB"
			"-DwxNO_RIBBON_LIB"
			"-DwxNO_RICHTEXT_LIB"
			"-DwxNO_MEDIA_LIB"
			"-DwxNO_STC_LIB"
			"-DwxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_aui_OBJECTS_DEBUG )
set(wxwidgets_wxwidgets_aui_COMPILE_DEFINITIONS_DEBUG "wxUSE_GUI=1"
			"__WXDEBUG__"
			"WXUSINGDLL"
			"__WXMSW__"
			"wxNO_NET_LIB"
			"wxNO_XML_LIB"
			"wxNO_REGEX_LIB"
			"wxNO_ZLIB_LIB"
			"wxNO_JPEG_LIB"
			"wxNO_PNG_LIB"
			"wxNO_TIFF_LIB"
			"wxNO_ADV_LIB"
			"wxNO_HTML_LIB"
			"wxNO_GL_LIB"
			"wxNO_QA_LIB"
			"wxNO_XRC_LIB"
			"wxNO_AUI_LIB"
			"wxNO_PROPGRID_LIB"
			"wxNO_RIBBON_LIB"
			"wxNO_RICHTEXT_LIB"
			"wxNO_MEDIA_LIB"
			"wxNO_STC_LIB"
			"wxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_aui_COMPILE_OPTIONS_C_DEBUG "")
set(wxwidgets_wxwidgets_aui_COMPILE_OPTIONS_CXX_DEBUG "")
set(wxwidgets_wxwidgets_aui_LIBS_DEBUG wxmsw31ud_aui)
set(wxwidgets_wxwidgets_aui_SYSTEM_LIBS_DEBUG )
set(wxwidgets_wxwidgets_aui_FRAMEWORK_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(wxwidgets_wxwidgets_aui_FRAMEWORKS_DEBUG )
set(wxwidgets_wxwidgets_aui_DEPENDENCIES_DEBUG wxwidgets::core wxwidgets::html wxwidgets::xml)
set(wxwidgets_wxwidgets_aui_SHARED_LINK_FLAGS_DEBUG )
set(wxwidgets_wxwidgets_aui_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(wxwidgets_wxwidgets_aui_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${wxwidgets_wxwidgets_aui_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${wxwidgets_wxwidgets_aui_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${wxwidgets_wxwidgets_aui_EXE_LINK_FLAGS_DEBUG}>
)
set(wxwidgets_wxwidgets_aui_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${wxwidgets_wxwidgets_aui_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${wxwidgets_wxwidgets_aui_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT wxwidgets::html VARIABLES ############################################

set(wxwidgets_wxwidgets_html_INCLUDE_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/include")
set(wxwidgets_wxwidgets_html_LIB_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib"
			"${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib/vc_x64_dll")
set(wxwidgets_wxwidgets_html_RES_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/res")
set(wxwidgets_wxwidgets_html_DEFINITIONS_DEBUG "-DwxUSE_GUI=1"
			"-D__WXDEBUG__"
			"-DWXUSINGDLL"
			"-D__WXMSW__"
			"-DwxNO_NET_LIB"
			"-DwxNO_XML_LIB"
			"-DwxNO_REGEX_LIB"
			"-DwxNO_ZLIB_LIB"
			"-DwxNO_JPEG_LIB"
			"-DwxNO_PNG_LIB"
			"-DwxNO_TIFF_LIB"
			"-DwxNO_ADV_LIB"
			"-DwxNO_HTML_LIB"
			"-DwxNO_GL_LIB"
			"-DwxNO_QA_LIB"
			"-DwxNO_XRC_LIB"
			"-DwxNO_AUI_LIB"
			"-DwxNO_PROPGRID_LIB"
			"-DwxNO_RIBBON_LIB"
			"-DwxNO_RICHTEXT_LIB"
			"-DwxNO_MEDIA_LIB"
			"-DwxNO_STC_LIB"
			"-DwxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_html_OBJECTS_DEBUG )
set(wxwidgets_wxwidgets_html_COMPILE_DEFINITIONS_DEBUG "wxUSE_GUI=1"
			"__WXDEBUG__"
			"WXUSINGDLL"
			"__WXMSW__"
			"wxNO_NET_LIB"
			"wxNO_XML_LIB"
			"wxNO_REGEX_LIB"
			"wxNO_ZLIB_LIB"
			"wxNO_JPEG_LIB"
			"wxNO_PNG_LIB"
			"wxNO_TIFF_LIB"
			"wxNO_ADV_LIB"
			"wxNO_HTML_LIB"
			"wxNO_GL_LIB"
			"wxNO_QA_LIB"
			"wxNO_XRC_LIB"
			"wxNO_AUI_LIB"
			"wxNO_PROPGRID_LIB"
			"wxNO_RIBBON_LIB"
			"wxNO_RICHTEXT_LIB"
			"wxNO_MEDIA_LIB"
			"wxNO_STC_LIB"
			"wxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_html_COMPILE_OPTIONS_C_DEBUG "")
set(wxwidgets_wxwidgets_html_COMPILE_OPTIONS_CXX_DEBUG "")
set(wxwidgets_wxwidgets_html_LIBS_DEBUG wxmsw31ud_html)
set(wxwidgets_wxwidgets_html_SYSTEM_LIBS_DEBUG )
set(wxwidgets_wxwidgets_html_FRAMEWORK_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(wxwidgets_wxwidgets_html_FRAMEWORKS_DEBUG )
set(wxwidgets_wxwidgets_html_DEPENDENCIES_DEBUG wxwidgets::core)
set(wxwidgets_wxwidgets_html_SHARED_LINK_FLAGS_DEBUG )
set(wxwidgets_wxwidgets_html_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(wxwidgets_wxwidgets_html_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${wxwidgets_wxwidgets_html_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${wxwidgets_wxwidgets_html_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${wxwidgets_wxwidgets_html_EXE_LINK_FLAGS_DEBUG}>
)
set(wxwidgets_wxwidgets_html_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${wxwidgets_wxwidgets_html_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${wxwidgets_wxwidgets_html_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT wxwidgets::xml VARIABLES ############################################

set(wxwidgets_wxwidgets_xml_INCLUDE_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/include")
set(wxwidgets_wxwidgets_xml_LIB_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib"
			"${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib/vc_x64_dll")
set(wxwidgets_wxwidgets_xml_RES_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/res")
set(wxwidgets_wxwidgets_xml_DEFINITIONS_DEBUG "-DwxUSE_GUI=1"
			"-D__WXDEBUG__"
			"-DWXUSINGDLL"
			"-D__WXMSW__"
			"-DwxNO_NET_LIB"
			"-DwxNO_XML_LIB"
			"-DwxNO_REGEX_LIB"
			"-DwxNO_ZLIB_LIB"
			"-DwxNO_JPEG_LIB"
			"-DwxNO_PNG_LIB"
			"-DwxNO_TIFF_LIB"
			"-DwxNO_ADV_LIB"
			"-DwxNO_HTML_LIB"
			"-DwxNO_GL_LIB"
			"-DwxNO_QA_LIB"
			"-DwxNO_XRC_LIB"
			"-DwxNO_AUI_LIB"
			"-DwxNO_PROPGRID_LIB"
			"-DwxNO_RIBBON_LIB"
			"-DwxNO_RICHTEXT_LIB"
			"-DwxNO_MEDIA_LIB"
			"-DwxNO_STC_LIB"
			"-DwxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_xml_OBJECTS_DEBUG )
set(wxwidgets_wxwidgets_xml_COMPILE_DEFINITIONS_DEBUG "wxUSE_GUI=1"
			"__WXDEBUG__"
			"WXUSINGDLL"
			"__WXMSW__"
			"wxNO_NET_LIB"
			"wxNO_XML_LIB"
			"wxNO_REGEX_LIB"
			"wxNO_ZLIB_LIB"
			"wxNO_JPEG_LIB"
			"wxNO_PNG_LIB"
			"wxNO_TIFF_LIB"
			"wxNO_ADV_LIB"
			"wxNO_HTML_LIB"
			"wxNO_GL_LIB"
			"wxNO_QA_LIB"
			"wxNO_XRC_LIB"
			"wxNO_AUI_LIB"
			"wxNO_PROPGRID_LIB"
			"wxNO_RIBBON_LIB"
			"wxNO_RICHTEXT_LIB"
			"wxNO_MEDIA_LIB"
			"wxNO_STC_LIB"
			"wxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_xml_COMPILE_OPTIONS_C_DEBUG "")
set(wxwidgets_wxwidgets_xml_COMPILE_OPTIONS_CXX_DEBUG "")
set(wxwidgets_wxwidgets_xml_LIBS_DEBUG wxbase31ud_xml)
set(wxwidgets_wxwidgets_xml_SYSTEM_LIBS_DEBUG )
set(wxwidgets_wxwidgets_xml_FRAMEWORK_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(wxwidgets_wxwidgets_xml_FRAMEWORKS_DEBUG )
set(wxwidgets_wxwidgets_xml_DEPENDENCIES_DEBUG wxwidgets::base expat::expat)
set(wxwidgets_wxwidgets_xml_SHARED_LINK_FLAGS_DEBUG )
set(wxwidgets_wxwidgets_xml_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(wxwidgets_wxwidgets_xml_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${wxwidgets_wxwidgets_xml_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${wxwidgets_wxwidgets_xml_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${wxwidgets_wxwidgets_xml_EXE_LINK_FLAGS_DEBUG}>
)
set(wxwidgets_wxwidgets_xml_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${wxwidgets_wxwidgets_xml_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${wxwidgets_wxwidgets_xml_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT wxwidgets::net VARIABLES ############################################

set(wxwidgets_wxwidgets_net_INCLUDE_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/include")
set(wxwidgets_wxwidgets_net_LIB_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib"
			"${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib/vc_x64_dll")
set(wxwidgets_wxwidgets_net_RES_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/res")
set(wxwidgets_wxwidgets_net_DEFINITIONS_DEBUG "-DwxUSE_GUI=1"
			"-D__WXDEBUG__"
			"-DWXUSINGDLL"
			"-D__WXMSW__"
			"-DwxNO_NET_LIB"
			"-DwxNO_XML_LIB"
			"-DwxNO_REGEX_LIB"
			"-DwxNO_ZLIB_LIB"
			"-DwxNO_JPEG_LIB"
			"-DwxNO_PNG_LIB"
			"-DwxNO_TIFF_LIB"
			"-DwxNO_ADV_LIB"
			"-DwxNO_HTML_LIB"
			"-DwxNO_GL_LIB"
			"-DwxNO_QA_LIB"
			"-DwxNO_XRC_LIB"
			"-DwxNO_AUI_LIB"
			"-DwxNO_PROPGRID_LIB"
			"-DwxNO_RIBBON_LIB"
			"-DwxNO_RICHTEXT_LIB"
			"-DwxNO_MEDIA_LIB"
			"-DwxNO_STC_LIB"
			"-DwxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_net_OBJECTS_DEBUG )
set(wxwidgets_wxwidgets_net_COMPILE_DEFINITIONS_DEBUG "wxUSE_GUI=1"
			"__WXDEBUG__"
			"WXUSINGDLL"
			"__WXMSW__"
			"wxNO_NET_LIB"
			"wxNO_XML_LIB"
			"wxNO_REGEX_LIB"
			"wxNO_ZLIB_LIB"
			"wxNO_JPEG_LIB"
			"wxNO_PNG_LIB"
			"wxNO_TIFF_LIB"
			"wxNO_ADV_LIB"
			"wxNO_HTML_LIB"
			"wxNO_GL_LIB"
			"wxNO_QA_LIB"
			"wxNO_XRC_LIB"
			"wxNO_AUI_LIB"
			"wxNO_PROPGRID_LIB"
			"wxNO_RIBBON_LIB"
			"wxNO_RICHTEXT_LIB"
			"wxNO_MEDIA_LIB"
			"wxNO_STC_LIB"
			"wxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_net_COMPILE_OPTIONS_C_DEBUG "")
set(wxwidgets_wxwidgets_net_COMPILE_OPTIONS_CXX_DEBUG "")
set(wxwidgets_wxwidgets_net_LIBS_DEBUG wxbase31ud_net)
set(wxwidgets_wxwidgets_net_SYSTEM_LIBS_DEBUG )
set(wxwidgets_wxwidgets_net_FRAMEWORK_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(wxwidgets_wxwidgets_net_FRAMEWORKS_DEBUG )
set(wxwidgets_wxwidgets_net_DEPENDENCIES_DEBUG wxwidgets::base)
set(wxwidgets_wxwidgets_net_SHARED_LINK_FLAGS_DEBUG )
set(wxwidgets_wxwidgets_net_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(wxwidgets_wxwidgets_net_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${wxwidgets_wxwidgets_net_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${wxwidgets_wxwidgets_net_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${wxwidgets_wxwidgets_net_EXE_LINK_FLAGS_DEBUG}>
)
set(wxwidgets_wxwidgets_net_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${wxwidgets_wxwidgets_net_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${wxwidgets_wxwidgets_net_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT wxwidgets::adv VARIABLES ############################################

set(wxwidgets_wxwidgets_adv_INCLUDE_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/include")
set(wxwidgets_wxwidgets_adv_LIB_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib"
			"${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib/vc_x64_dll")
set(wxwidgets_wxwidgets_adv_RES_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/res")
set(wxwidgets_wxwidgets_adv_DEFINITIONS_DEBUG "-DwxUSE_GUI=1"
			"-D__WXDEBUG__"
			"-DWXUSINGDLL"
			"-D__WXMSW__"
			"-DwxNO_NET_LIB"
			"-DwxNO_XML_LIB"
			"-DwxNO_REGEX_LIB"
			"-DwxNO_ZLIB_LIB"
			"-DwxNO_JPEG_LIB"
			"-DwxNO_PNG_LIB"
			"-DwxNO_TIFF_LIB"
			"-DwxNO_ADV_LIB"
			"-DwxNO_HTML_LIB"
			"-DwxNO_GL_LIB"
			"-DwxNO_QA_LIB"
			"-DwxNO_XRC_LIB"
			"-DwxNO_AUI_LIB"
			"-DwxNO_PROPGRID_LIB"
			"-DwxNO_RIBBON_LIB"
			"-DwxNO_RICHTEXT_LIB"
			"-DwxNO_MEDIA_LIB"
			"-DwxNO_STC_LIB"
			"-DwxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_adv_OBJECTS_DEBUG )
set(wxwidgets_wxwidgets_adv_COMPILE_DEFINITIONS_DEBUG "wxUSE_GUI=1"
			"__WXDEBUG__"
			"WXUSINGDLL"
			"__WXMSW__"
			"wxNO_NET_LIB"
			"wxNO_XML_LIB"
			"wxNO_REGEX_LIB"
			"wxNO_ZLIB_LIB"
			"wxNO_JPEG_LIB"
			"wxNO_PNG_LIB"
			"wxNO_TIFF_LIB"
			"wxNO_ADV_LIB"
			"wxNO_HTML_LIB"
			"wxNO_GL_LIB"
			"wxNO_QA_LIB"
			"wxNO_XRC_LIB"
			"wxNO_AUI_LIB"
			"wxNO_PROPGRID_LIB"
			"wxNO_RIBBON_LIB"
			"wxNO_RICHTEXT_LIB"
			"wxNO_MEDIA_LIB"
			"wxNO_STC_LIB"
			"wxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_adv_COMPILE_OPTIONS_C_DEBUG "")
set(wxwidgets_wxwidgets_adv_COMPILE_OPTIONS_CXX_DEBUG "")
set(wxwidgets_wxwidgets_adv_LIBS_DEBUG wxmsw31ud_adv)
set(wxwidgets_wxwidgets_adv_SYSTEM_LIBS_DEBUG )
set(wxwidgets_wxwidgets_adv_FRAMEWORK_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(wxwidgets_wxwidgets_adv_FRAMEWORKS_DEBUG )
set(wxwidgets_wxwidgets_adv_DEPENDENCIES_DEBUG wxwidgets::base)
set(wxwidgets_wxwidgets_adv_SHARED_LINK_FLAGS_DEBUG )
set(wxwidgets_wxwidgets_adv_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(wxwidgets_wxwidgets_adv_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${wxwidgets_wxwidgets_adv_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${wxwidgets_wxwidgets_adv_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${wxwidgets_wxwidgets_adv_EXE_LINK_FLAGS_DEBUG}>
)
set(wxwidgets_wxwidgets_adv_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${wxwidgets_wxwidgets_adv_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${wxwidgets_wxwidgets_adv_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT wxwidgets::core VARIABLES ############################################

set(wxwidgets_wxwidgets_core_INCLUDE_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/include")
set(wxwidgets_wxwidgets_core_LIB_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib"
			"${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib/vc_x64_dll")
set(wxwidgets_wxwidgets_core_RES_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/res")
set(wxwidgets_wxwidgets_core_DEFINITIONS_DEBUG "-DwxUSE_GUI=1"
			"-D__WXDEBUG__"
			"-DWXUSINGDLL"
			"-D__WXMSW__"
			"-DwxNO_NET_LIB"
			"-DwxNO_XML_LIB"
			"-DwxNO_REGEX_LIB"
			"-DwxNO_ZLIB_LIB"
			"-DwxNO_JPEG_LIB"
			"-DwxNO_PNG_LIB"
			"-DwxNO_TIFF_LIB"
			"-DwxNO_ADV_LIB"
			"-DwxNO_HTML_LIB"
			"-DwxNO_GL_LIB"
			"-DwxNO_QA_LIB"
			"-DwxNO_XRC_LIB"
			"-DwxNO_AUI_LIB"
			"-DwxNO_PROPGRID_LIB"
			"-DwxNO_RIBBON_LIB"
			"-DwxNO_RICHTEXT_LIB"
			"-DwxNO_MEDIA_LIB"
			"-DwxNO_STC_LIB"
			"-DwxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_core_OBJECTS_DEBUG )
set(wxwidgets_wxwidgets_core_COMPILE_DEFINITIONS_DEBUG "wxUSE_GUI=1"
			"__WXDEBUG__"
			"WXUSINGDLL"
			"__WXMSW__"
			"wxNO_NET_LIB"
			"wxNO_XML_LIB"
			"wxNO_REGEX_LIB"
			"wxNO_ZLIB_LIB"
			"wxNO_JPEG_LIB"
			"wxNO_PNG_LIB"
			"wxNO_TIFF_LIB"
			"wxNO_ADV_LIB"
			"wxNO_HTML_LIB"
			"wxNO_GL_LIB"
			"wxNO_QA_LIB"
			"wxNO_XRC_LIB"
			"wxNO_AUI_LIB"
			"wxNO_PROPGRID_LIB"
			"wxNO_RIBBON_LIB"
			"wxNO_RICHTEXT_LIB"
			"wxNO_MEDIA_LIB"
			"wxNO_STC_LIB"
			"wxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_core_COMPILE_OPTIONS_C_DEBUG "")
set(wxwidgets_wxwidgets_core_COMPILE_OPTIONS_CXX_DEBUG "")
set(wxwidgets_wxwidgets_core_LIBS_DEBUG wxmsw31ud_core)
set(wxwidgets_wxwidgets_core_SYSTEM_LIBS_DEBUG )
set(wxwidgets_wxwidgets_core_FRAMEWORK_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(wxwidgets_wxwidgets_core_FRAMEWORKS_DEBUG )
set(wxwidgets_wxwidgets_core_DEPENDENCIES_DEBUG wxwidgets::base PNG::PNG libjpeg-turbo::libjpeg-turbo)
set(wxwidgets_wxwidgets_core_SHARED_LINK_FLAGS_DEBUG )
set(wxwidgets_wxwidgets_core_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(wxwidgets_wxwidgets_core_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${wxwidgets_wxwidgets_core_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${wxwidgets_wxwidgets_core_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${wxwidgets_wxwidgets_core_EXE_LINK_FLAGS_DEBUG}>
)
set(wxwidgets_wxwidgets_core_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${wxwidgets_wxwidgets_core_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${wxwidgets_wxwidgets_core_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT wxwidgets::base VARIABLES ############################################

set(wxwidgets_wxwidgets_base_INCLUDE_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/include"
			"${wxwidgets_PACKAGE_FOLDER_DEBUG}/include/msvc")
set(wxwidgets_wxwidgets_base_LIB_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib"
			"${wxwidgets_PACKAGE_FOLDER_DEBUG}/lib/vc_x64_dll")
set(wxwidgets_wxwidgets_base_RES_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/res")
set(wxwidgets_wxwidgets_base_DEFINITIONS_DEBUG "-DwxUSE_GUI=1"
			"-D__WXDEBUG__"
			"-DWXUSINGDLL"
			"-D__WXMSW__"
			"-DwxNO_NET_LIB"
			"-DwxNO_XML_LIB"
			"-DwxNO_REGEX_LIB"
			"-DwxNO_ZLIB_LIB"
			"-DwxNO_JPEG_LIB"
			"-DwxNO_PNG_LIB"
			"-DwxNO_TIFF_LIB"
			"-DwxNO_ADV_LIB"
			"-DwxNO_HTML_LIB"
			"-DwxNO_GL_LIB"
			"-DwxNO_QA_LIB"
			"-DwxNO_XRC_LIB"
			"-DwxNO_AUI_LIB"
			"-DwxNO_PROPGRID_LIB"
			"-DwxNO_RIBBON_LIB"
			"-DwxNO_RICHTEXT_LIB"
			"-DwxNO_MEDIA_LIB"
			"-DwxNO_STC_LIB"
			"-DwxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_base_OBJECTS_DEBUG )
set(wxwidgets_wxwidgets_base_COMPILE_DEFINITIONS_DEBUG "wxUSE_GUI=1"
			"__WXDEBUG__"
			"WXUSINGDLL"
			"__WXMSW__"
			"wxNO_NET_LIB"
			"wxNO_XML_LIB"
			"wxNO_REGEX_LIB"
			"wxNO_ZLIB_LIB"
			"wxNO_JPEG_LIB"
			"wxNO_PNG_LIB"
			"wxNO_TIFF_LIB"
			"wxNO_ADV_LIB"
			"wxNO_HTML_LIB"
			"wxNO_GL_LIB"
			"wxNO_QA_LIB"
			"wxNO_XRC_LIB"
			"wxNO_AUI_LIB"
			"wxNO_PROPGRID_LIB"
			"wxNO_RIBBON_LIB"
			"wxNO_RICHTEXT_LIB"
			"wxNO_MEDIA_LIB"
			"wxNO_STC_LIB"
			"wxNO_WEBVIEW_LIB")
set(wxwidgets_wxwidgets_base_COMPILE_OPTIONS_C_DEBUG "")
set(wxwidgets_wxwidgets_base_COMPILE_OPTIONS_CXX_DEBUG "")
set(wxwidgets_wxwidgets_base_LIBS_DEBUG wxbase31ud)
set(wxwidgets_wxwidgets_base_SYSTEM_LIBS_DEBUG kernel32 user32 gdi32 comdlg32 winspool shell32 comctl32 ole32 oleaut32 uuid wininet rpcrt4 winmm advapi32 wsock32)
set(wxwidgets_wxwidgets_base_FRAMEWORK_DIRS_DEBUG "${wxwidgets_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(wxwidgets_wxwidgets_base_FRAMEWORKS_DEBUG )
set(wxwidgets_wxwidgets_base_DEPENDENCIES_DEBUG ZLIB::ZLIB)
set(wxwidgets_wxwidgets_base_SHARED_LINK_FLAGS_DEBUG )
set(wxwidgets_wxwidgets_base_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(wxwidgets_wxwidgets_base_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${wxwidgets_wxwidgets_base_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${wxwidgets_wxwidgets_base_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${wxwidgets_wxwidgets_base_EXE_LINK_FLAGS_DEBUG}>
)
set(wxwidgets_wxwidgets_base_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${wxwidgets_wxwidgets_base_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${wxwidgets_wxwidgets_base_COMPILE_OPTIONS_C_DEBUG}>")