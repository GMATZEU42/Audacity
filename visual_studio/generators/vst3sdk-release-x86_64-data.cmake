########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND vst3sdk_COMPONENT_NAMES vst3sdk::base vst3sdk::pluginterfaces vst3sdk::sdk vst3sdk::sdk_common vst3sdk::sdk_hosting)
list(REMOVE_DUPLICATES vst3sdk_COMPONENT_NAMES)
set(vst3sdk_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(vst3sdk_PACKAGE_FOLDER_RELEASE "C:/Users/giaco/.conan/data/vst3sdk/3.7.3/_/_/package/5a61a86bb3e07ce4262c80e1510f9c05e9b6d48b")
set(vst3sdk_BUILD_MODULES_PATHS_RELEASE )


set(vst3sdk_INCLUDE_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/include")
set(vst3sdk_RES_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/res")
set(vst3sdk_DEFINITIONS_RELEASE )
set(vst3sdk_SHARED_LINK_FLAGS_RELEASE )
set(vst3sdk_EXE_LINK_FLAGS_RELEASE )
set(vst3sdk_OBJECTS_RELEASE )
set(vst3sdk_COMPILE_DEFINITIONS_RELEASE )
set(vst3sdk_COMPILE_OPTIONS_C_RELEASE )
set(vst3sdk_COMPILE_OPTIONS_CXX_RELEASE )
set(vst3sdk_LIB_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/lib")
set(vst3sdk_LIBS_RELEASE sdk_hosting sdk_common sdk pluginterfaces base)
set(vst3sdk_SYSTEM_LIBS_RELEASE )
set(vst3sdk_FRAMEWORK_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(vst3sdk_FRAMEWORKS_RELEASE )
set(vst3sdk_BUILD_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/")

# COMPOUND VARIABLES
set(vst3sdk_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${vst3sdk_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${vst3sdk_COMPILE_OPTIONS_C_RELEASE}>")
set(vst3sdk_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vst3sdk_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vst3sdk_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vst3sdk_EXE_LINK_FLAGS_RELEASE}>")


set(vst3sdk_COMPONENTS_RELEASE vst3sdk::base vst3sdk::pluginterfaces vst3sdk::sdk vst3sdk::sdk_common vst3sdk::sdk_hosting)
########### COMPONENT vst3sdk::sdk_hosting VARIABLES ############################################

set(vst3sdk_vst3sdk_sdk_hosting_INCLUDE_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/include")
set(vst3sdk_vst3sdk_sdk_hosting_LIB_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/lib")
set(vst3sdk_vst3sdk_sdk_hosting_RES_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/res")
set(vst3sdk_vst3sdk_sdk_hosting_DEFINITIONS_RELEASE )
set(vst3sdk_vst3sdk_sdk_hosting_OBJECTS_RELEASE )
set(vst3sdk_vst3sdk_sdk_hosting_COMPILE_DEFINITIONS_RELEASE )
set(vst3sdk_vst3sdk_sdk_hosting_COMPILE_OPTIONS_C_RELEASE "")
set(vst3sdk_vst3sdk_sdk_hosting_COMPILE_OPTIONS_CXX_RELEASE "")
set(vst3sdk_vst3sdk_sdk_hosting_LIBS_RELEASE sdk_hosting)
set(vst3sdk_vst3sdk_sdk_hosting_SYSTEM_LIBS_RELEASE )
set(vst3sdk_vst3sdk_sdk_hosting_FRAMEWORK_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(vst3sdk_vst3sdk_sdk_hosting_FRAMEWORKS_RELEASE )
set(vst3sdk_vst3sdk_sdk_hosting_DEPENDENCIES_RELEASE )
set(vst3sdk_vst3sdk_sdk_hosting_SHARED_LINK_FLAGS_RELEASE )
set(vst3sdk_vst3sdk_sdk_hosting_EXE_LINK_FLAGS_RELEASE )
# COMPOUND VARIABLES
set(vst3sdk_vst3sdk_sdk_hosting_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vst3sdk_vst3sdk_sdk_hosting_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vst3sdk_vst3sdk_sdk_hosting_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vst3sdk_vst3sdk_sdk_hosting_EXE_LINK_FLAGS_RELEASE}>
)
set(vst3sdk_vst3sdk_sdk_hosting_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${vst3sdk_vst3sdk_sdk_hosting_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${vst3sdk_vst3sdk_sdk_hosting_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT vst3sdk::sdk_common VARIABLES ############################################

set(vst3sdk_vst3sdk_sdk_common_INCLUDE_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/include")
set(vst3sdk_vst3sdk_sdk_common_LIB_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/lib")
set(vst3sdk_vst3sdk_sdk_common_RES_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/res")
set(vst3sdk_vst3sdk_sdk_common_DEFINITIONS_RELEASE )
set(vst3sdk_vst3sdk_sdk_common_OBJECTS_RELEASE )
set(vst3sdk_vst3sdk_sdk_common_COMPILE_DEFINITIONS_RELEASE )
set(vst3sdk_vst3sdk_sdk_common_COMPILE_OPTIONS_C_RELEASE "")
set(vst3sdk_vst3sdk_sdk_common_COMPILE_OPTIONS_CXX_RELEASE "")
set(vst3sdk_vst3sdk_sdk_common_LIBS_RELEASE sdk_common)
set(vst3sdk_vst3sdk_sdk_common_SYSTEM_LIBS_RELEASE )
set(vst3sdk_vst3sdk_sdk_common_FRAMEWORK_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(vst3sdk_vst3sdk_sdk_common_FRAMEWORKS_RELEASE )
set(vst3sdk_vst3sdk_sdk_common_DEPENDENCIES_RELEASE )
set(vst3sdk_vst3sdk_sdk_common_SHARED_LINK_FLAGS_RELEASE )
set(vst3sdk_vst3sdk_sdk_common_EXE_LINK_FLAGS_RELEASE )
# COMPOUND VARIABLES
set(vst3sdk_vst3sdk_sdk_common_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vst3sdk_vst3sdk_sdk_common_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vst3sdk_vst3sdk_sdk_common_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vst3sdk_vst3sdk_sdk_common_EXE_LINK_FLAGS_RELEASE}>
)
set(vst3sdk_vst3sdk_sdk_common_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${vst3sdk_vst3sdk_sdk_common_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${vst3sdk_vst3sdk_sdk_common_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT vst3sdk::sdk VARIABLES ############################################

set(vst3sdk_vst3sdk_sdk_INCLUDE_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/include")
set(vst3sdk_vst3sdk_sdk_LIB_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/lib")
set(vst3sdk_vst3sdk_sdk_RES_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/res")
set(vst3sdk_vst3sdk_sdk_DEFINITIONS_RELEASE )
set(vst3sdk_vst3sdk_sdk_OBJECTS_RELEASE )
set(vst3sdk_vst3sdk_sdk_COMPILE_DEFINITIONS_RELEASE )
set(vst3sdk_vst3sdk_sdk_COMPILE_OPTIONS_C_RELEASE "")
set(vst3sdk_vst3sdk_sdk_COMPILE_OPTIONS_CXX_RELEASE "")
set(vst3sdk_vst3sdk_sdk_LIBS_RELEASE sdk)
set(vst3sdk_vst3sdk_sdk_SYSTEM_LIBS_RELEASE )
set(vst3sdk_vst3sdk_sdk_FRAMEWORK_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(vst3sdk_vst3sdk_sdk_FRAMEWORKS_RELEASE )
set(vst3sdk_vst3sdk_sdk_DEPENDENCIES_RELEASE )
set(vst3sdk_vst3sdk_sdk_SHARED_LINK_FLAGS_RELEASE )
set(vst3sdk_vst3sdk_sdk_EXE_LINK_FLAGS_RELEASE )
# COMPOUND VARIABLES
set(vst3sdk_vst3sdk_sdk_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vst3sdk_vst3sdk_sdk_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vst3sdk_vst3sdk_sdk_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vst3sdk_vst3sdk_sdk_EXE_LINK_FLAGS_RELEASE}>
)
set(vst3sdk_vst3sdk_sdk_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${vst3sdk_vst3sdk_sdk_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${vst3sdk_vst3sdk_sdk_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT vst3sdk::pluginterfaces VARIABLES ############################################

set(vst3sdk_vst3sdk_pluginterfaces_INCLUDE_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/include")
set(vst3sdk_vst3sdk_pluginterfaces_LIB_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/lib")
set(vst3sdk_vst3sdk_pluginterfaces_RES_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/res")
set(vst3sdk_vst3sdk_pluginterfaces_DEFINITIONS_RELEASE )
set(vst3sdk_vst3sdk_pluginterfaces_OBJECTS_RELEASE )
set(vst3sdk_vst3sdk_pluginterfaces_COMPILE_DEFINITIONS_RELEASE )
set(vst3sdk_vst3sdk_pluginterfaces_COMPILE_OPTIONS_C_RELEASE "")
set(vst3sdk_vst3sdk_pluginterfaces_COMPILE_OPTIONS_CXX_RELEASE "")
set(vst3sdk_vst3sdk_pluginterfaces_LIBS_RELEASE pluginterfaces)
set(vst3sdk_vst3sdk_pluginterfaces_SYSTEM_LIBS_RELEASE )
set(vst3sdk_vst3sdk_pluginterfaces_FRAMEWORK_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(vst3sdk_vst3sdk_pluginterfaces_FRAMEWORKS_RELEASE )
set(vst3sdk_vst3sdk_pluginterfaces_DEPENDENCIES_RELEASE )
set(vst3sdk_vst3sdk_pluginterfaces_SHARED_LINK_FLAGS_RELEASE )
set(vst3sdk_vst3sdk_pluginterfaces_EXE_LINK_FLAGS_RELEASE )
# COMPOUND VARIABLES
set(vst3sdk_vst3sdk_pluginterfaces_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vst3sdk_vst3sdk_pluginterfaces_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vst3sdk_vst3sdk_pluginterfaces_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vst3sdk_vst3sdk_pluginterfaces_EXE_LINK_FLAGS_RELEASE}>
)
set(vst3sdk_vst3sdk_pluginterfaces_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${vst3sdk_vst3sdk_pluginterfaces_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${vst3sdk_vst3sdk_pluginterfaces_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT vst3sdk::base VARIABLES ############################################

set(vst3sdk_vst3sdk_base_INCLUDE_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/include")
set(vst3sdk_vst3sdk_base_LIB_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/lib")
set(vst3sdk_vst3sdk_base_RES_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/res")
set(vst3sdk_vst3sdk_base_DEFINITIONS_RELEASE )
set(vst3sdk_vst3sdk_base_OBJECTS_RELEASE )
set(vst3sdk_vst3sdk_base_COMPILE_DEFINITIONS_RELEASE )
set(vst3sdk_vst3sdk_base_COMPILE_OPTIONS_C_RELEASE "")
set(vst3sdk_vst3sdk_base_COMPILE_OPTIONS_CXX_RELEASE "")
set(vst3sdk_vst3sdk_base_LIBS_RELEASE base)
set(vst3sdk_vst3sdk_base_SYSTEM_LIBS_RELEASE )
set(vst3sdk_vst3sdk_base_FRAMEWORK_DIRS_RELEASE "${vst3sdk_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(vst3sdk_vst3sdk_base_FRAMEWORKS_RELEASE )
set(vst3sdk_vst3sdk_base_DEPENDENCIES_RELEASE )
set(vst3sdk_vst3sdk_base_SHARED_LINK_FLAGS_RELEASE )
set(vst3sdk_vst3sdk_base_EXE_LINK_FLAGS_RELEASE )
# COMPOUND VARIABLES
set(vst3sdk_vst3sdk_base_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vst3sdk_vst3sdk_base_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vst3sdk_vst3sdk_base_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vst3sdk_vst3sdk_base_EXE_LINK_FLAGS_RELEASE}>
)
set(vst3sdk_vst3sdk_base_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${vst3sdk_vst3sdk_base_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${vst3sdk_vst3sdk_base_COMPILE_OPTIONS_C_RELEASE}>")