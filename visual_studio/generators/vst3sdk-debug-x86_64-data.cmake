########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND vst3sdk_COMPONENT_NAMES vst3sdk::base vst3sdk::pluginterfaces vst3sdk::sdk vst3sdk::sdk_common vst3sdk::sdk_hosting)
list(REMOVE_DUPLICATES vst3sdk_COMPONENT_NAMES)
set(vst3sdk_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(vst3sdk_PACKAGE_FOLDER_DEBUG "C:/Users/giaco/.conan/data/vst3sdk/3.7.3/_/_/package/164640aad040835ac89882393a96d89200694f04")
set(vst3sdk_BUILD_MODULES_PATHS_DEBUG )


set(vst3sdk_INCLUDE_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/include")
set(vst3sdk_RES_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/res")
set(vst3sdk_DEFINITIONS_DEBUG )
set(vst3sdk_SHARED_LINK_FLAGS_DEBUG )
set(vst3sdk_EXE_LINK_FLAGS_DEBUG )
set(vst3sdk_OBJECTS_DEBUG )
set(vst3sdk_COMPILE_DEFINITIONS_DEBUG )
set(vst3sdk_COMPILE_OPTIONS_C_DEBUG )
set(vst3sdk_COMPILE_OPTIONS_CXX_DEBUG )
set(vst3sdk_LIB_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/lib")
set(vst3sdk_LIBS_DEBUG sdk_hosting sdk_common sdk pluginterfaces base)
set(vst3sdk_SYSTEM_LIBS_DEBUG )
set(vst3sdk_FRAMEWORK_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(vst3sdk_FRAMEWORKS_DEBUG )
set(vst3sdk_BUILD_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/")

# COMPOUND VARIABLES
set(vst3sdk_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${vst3sdk_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${vst3sdk_COMPILE_OPTIONS_C_DEBUG}>")
set(vst3sdk_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vst3sdk_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vst3sdk_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vst3sdk_EXE_LINK_FLAGS_DEBUG}>")


set(vst3sdk_COMPONENTS_DEBUG vst3sdk::base vst3sdk::pluginterfaces vst3sdk::sdk vst3sdk::sdk_common vst3sdk::sdk_hosting)
########### COMPONENT vst3sdk::sdk_hosting VARIABLES ############################################

set(vst3sdk_vst3sdk_sdk_hosting_INCLUDE_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/include")
set(vst3sdk_vst3sdk_sdk_hosting_LIB_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/lib")
set(vst3sdk_vst3sdk_sdk_hosting_RES_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/res")
set(vst3sdk_vst3sdk_sdk_hosting_DEFINITIONS_DEBUG )
set(vst3sdk_vst3sdk_sdk_hosting_OBJECTS_DEBUG )
set(vst3sdk_vst3sdk_sdk_hosting_COMPILE_DEFINITIONS_DEBUG )
set(vst3sdk_vst3sdk_sdk_hosting_COMPILE_OPTIONS_C_DEBUG "")
set(vst3sdk_vst3sdk_sdk_hosting_COMPILE_OPTIONS_CXX_DEBUG "")
set(vst3sdk_vst3sdk_sdk_hosting_LIBS_DEBUG sdk_hosting)
set(vst3sdk_vst3sdk_sdk_hosting_SYSTEM_LIBS_DEBUG )
set(vst3sdk_vst3sdk_sdk_hosting_FRAMEWORK_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(vst3sdk_vst3sdk_sdk_hosting_FRAMEWORKS_DEBUG )
set(vst3sdk_vst3sdk_sdk_hosting_DEPENDENCIES_DEBUG )
set(vst3sdk_vst3sdk_sdk_hosting_SHARED_LINK_FLAGS_DEBUG )
set(vst3sdk_vst3sdk_sdk_hosting_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(vst3sdk_vst3sdk_sdk_hosting_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vst3sdk_vst3sdk_sdk_hosting_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vst3sdk_vst3sdk_sdk_hosting_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vst3sdk_vst3sdk_sdk_hosting_EXE_LINK_FLAGS_DEBUG}>
)
set(vst3sdk_vst3sdk_sdk_hosting_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${vst3sdk_vst3sdk_sdk_hosting_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${vst3sdk_vst3sdk_sdk_hosting_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT vst3sdk::sdk_common VARIABLES ############################################

set(vst3sdk_vst3sdk_sdk_common_INCLUDE_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/include")
set(vst3sdk_vst3sdk_sdk_common_LIB_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/lib")
set(vst3sdk_vst3sdk_sdk_common_RES_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/res")
set(vst3sdk_vst3sdk_sdk_common_DEFINITIONS_DEBUG )
set(vst3sdk_vst3sdk_sdk_common_OBJECTS_DEBUG )
set(vst3sdk_vst3sdk_sdk_common_COMPILE_DEFINITIONS_DEBUG )
set(vst3sdk_vst3sdk_sdk_common_COMPILE_OPTIONS_C_DEBUG "")
set(vst3sdk_vst3sdk_sdk_common_COMPILE_OPTIONS_CXX_DEBUG "")
set(vst3sdk_vst3sdk_sdk_common_LIBS_DEBUG sdk_common)
set(vst3sdk_vst3sdk_sdk_common_SYSTEM_LIBS_DEBUG )
set(vst3sdk_vst3sdk_sdk_common_FRAMEWORK_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(vst3sdk_vst3sdk_sdk_common_FRAMEWORKS_DEBUG )
set(vst3sdk_vst3sdk_sdk_common_DEPENDENCIES_DEBUG )
set(vst3sdk_vst3sdk_sdk_common_SHARED_LINK_FLAGS_DEBUG )
set(vst3sdk_vst3sdk_sdk_common_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(vst3sdk_vst3sdk_sdk_common_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vst3sdk_vst3sdk_sdk_common_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vst3sdk_vst3sdk_sdk_common_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vst3sdk_vst3sdk_sdk_common_EXE_LINK_FLAGS_DEBUG}>
)
set(vst3sdk_vst3sdk_sdk_common_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${vst3sdk_vst3sdk_sdk_common_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${vst3sdk_vst3sdk_sdk_common_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT vst3sdk::sdk VARIABLES ############################################

set(vst3sdk_vst3sdk_sdk_INCLUDE_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/include")
set(vst3sdk_vst3sdk_sdk_LIB_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/lib")
set(vst3sdk_vst3sdk_sdk_RES_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/res")
set(vst3sdk_vst3sdk_sdk_DEFINITIONS_DEBUG )
set(vst3sdk_vst3sdk_sdk_OBJECTS_DEBUG )
set(vst3sdk_vst3sdk_sdk_COMPILE_DEFINITIONS_DEBUG )
set(vst3sdk_vst3sdk_sdk_COMPILE_OPTIONS_C_DEBUG "")
set(vst3sdk_vst3sdk_sdk_COMPILE_OPTIONS_CXX_DEBUG "")
set(vst3sdk_vst3sdk_sdk_LIBS_DEBUG sdk)
set(vst3sdk_vst3sdk_sdk_SYSTEM_LIBS_DEBUG )
set(vst3sdk_vst3sdk_sdk_FRAMEWORK_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(vst3sdk_vst3sdk_sdk_FRAMEWORKS_DEBUG )
set(vst3sdk_vst3sdk_sdk_DEPENDENCIES_DEBUG )
set(vst3sdk_vst3sdk_sdk_SHARED_LINK_FLAGS_DEBUG )
set(vst3sdk_vst3sdk_sdk_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(vst3sdk_vst3sdk_sdk_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vst3sdk_vst3sdk_sdk_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vst3sdk_vst3sdk_sdk_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vst3sdk_vst3sdk_sdk_EXE_LINK_FLAGS_DEBUG}>
)
set(vst3sdk_vst3sdk_sdk_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${vst3sdk_vst3sdk_sdk_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${vst3sdk_vst3sdk_sdk_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT vst3sdk::pluginterfaces VARIABLES ############################################

set(vst3sdk_vst3sdk_pluginterfaces_INCLUDE_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/include")
set(vst3sdk_vst3sdk_pluginterfaces_LIB_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/lib")
set(vst3sdk_vst3sdk_pluginterfaces_RES_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/res")
set(vst3sdk_vst3sdk_pluginterfaces_DEFINITIONS_DEBUG )
set(vst3sdk_vst3sdk_pluginterfaces_OBJECTS_DEBUG )
set(vst3sdk_vst3sdk_pluginterfaces_COMPILE_DEFINITIONS_DEBUG )
set(vst3sdk_vst3sdk_pluginterfaces_COMPILE_OPTIONS_C_DEBUG "")
set(vst3sdk_vst3sdk_pluginterfaces_COMPILE_OPTIONS_CXX_DEBUG "")
set(vst3sdk_vst3sdk_pluginterfaces_LIBS_DEBUG pluginterfaces)
set(vst3sdk_vst3sdk_pluginterfaces_SYSTEM_LIBS_DEBUG )
set(vst3sdk_vst3sdk_pluginterfaces_FRAMEWORK_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(vst3sdk_vst3sdk_pluginterfaces_FRAMEWORKS_DEBUG )
set(vst3sdk_vst3sdk_pluginterfaces_DEPENDENCIES_DEBUG )
set(vst3sdk_vst3sdk_pluginterfaces_SHARED_LINK_FLAGS_DEBUG )
set(vst3sdk_vst3sdk_pluginterfaces_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(vst3sdk_vst3sdk_pluginterfaces_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vst3sdk_vst3sdk_pluginterfaces_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vst3sdk_vst3sdk_pluginterfaces_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vst3sdk_vst3sdk_pluginterfaces_EXE_LINK_FLAGS_DEBUG}>
)
set(vst3sdk_vst3sdk_pluginterfaces_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${vst3sdk_vst3sdk_pluginterfaces_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${vst3sdk_vst3sdk_pluginterfaces_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT vst3sdk::base VARIABLES ############################################

set(vst3sdk_vst3sdk_base_INCLUDE_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/include")
set(vst3sdk_vst3sdk_base_LIB_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/lib")
set(vst3sdk_vst3sdk_base_RES_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/res")
set(vst3sdk_vst3sdk_base_DEFINITIONS_DEBUG )
set(vst3sdk_vst3sdk_base_OBJECTS_DEBUG )
set(vst3sdk_vst3sdk_base_COMPILE_DEFINITIONS_DEBUG )
set(vst3sdk_vst3sdk_base_COMPILE_OPTIONS_C_DEBUG "")
set(vst3sdk_vst3sdk_base_COMPILE_OPTIONS_CXX_DEBUG "")
set(vst3sdk_vst3sdk_base_LIBS_DEBUG base)
set(vst3sdk_vst3sdk_base_SYSTEM_LIBS_DEBUG )
set(vst3sdk_vst3sdk_base_FRAMEWORK_DIRS_DEBUG "${vst3sdk_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(vst3sdk_vst3sdk_base_FRAMEWORKS_DEBUG )
set(vst3sdk_vst3sdk_base_DEPENDENCIES_DEBUG )
set(vst3sdk_vst3sdk_base_SHARED_LINK_FLAGS_DEBUG )
set(vst3sdk_vst3sdk_base_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(vst3sdk_vst3sdk_base_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vst3sdk_vst3sdk_base_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vst3sdk_vst3sdk_base_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vst3sdk_vst3sdk_base_EXE_LINK_FLAGS_DEBUG}>
)
set(vst3sdk_vst3sdk_base_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${vst3sdk_vst3sdk_base_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${vst3sdk_vst3sdk_base_COMPILE_OPTIONS_C_DEBUG}>")