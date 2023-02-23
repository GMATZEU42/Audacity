########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND opus_COMPONENT_NAMES Opus::opus)
list(REMOVE_DUPLICATES opus_COMPONENT_NAMES)
set(opus_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(opus_PACKAGE_FOLDER_DEBUG "C:/Users/giaco/.conan/data/opus/1.3.1/_/_/package/bf9ec17af5844bd8d3cc139070000dc26fc5f076")
set(opus_BUILD_MODULES_PATHS_DEBUG )


set(opus_INCLUDE_DIRS_DEBUG "${opus_PACKAGE_FOLDER_DEBUG}/include"
			"${opus_PACKAGE_FOLDER_DEBUG}/include/opus")
set(opus_RES_DIRS_DEBUG )
set(opus_DEFINITIONS_DEBUG )
set(opus_SHARED_LINK_FLAGS_DEBUG )
set(opus_EXE_LINK_FLAGS_DEBUG )
set(opus_OBJECTS_DEBUG )
set(opus_COMPILE_DEFINITIONS_DEBUG )
set(opus_COMPILE_OPTIONS_C_DEBUG )
set(opus_COMPILE_OPTIONS_CXX_DEBUG )
set(opus_LIB_DIRS_DEBUG "${opus_PACKAGE_FOLDER_DEBUG}/lib")
set(opus_LIBS_DEBUG opus)
set(opus_SYSTEM_LIBS_DEBUG )
set(opus_FRAMEWORK_DIRS_DEBUG )
set(opus_FRAMEWORKS_DEBUG )
set(opus_BUILD_DIRS_DEBUG )

# COMPOUND VARIABLES
set(opus_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${opus_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${opus_COMPILE_OPTIONS_C_DEBUG}>")
set(opus_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${opus_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${opus_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${opus_EXE_LINK_FLAGS_DEBUG}>")


set(opus_COMPONENTS_DEBUG Opus::opus)
########### COMPONENT Opus::opus VARIABLES ############################################

set(opus_Opus_opus_INCLUDE_DIRS_DEBUG "${opus_PACKAGE_FOLDER_DEBUG}/include"
			"${opus_PACKAGE_FOLDER_DEBUG}/include/opus")
set(opus_Opus_opus_LIB_DIRS_DEBUG "${opus_PACKAGE_FOLDER_DEBUG}/lib")
set(opus_Opus_opus_RES_DIRS_DEBUG )
set(opus_Opus_opus_DEFINITIONS_DEBUG )
set(opus_Opus_opus_OBJECTS_DEBUG )
set(opus_Opus_opus_COMPILE_DEFINITIONS_DEBUG )
set(opus_Opus_opus_COMPILE_OPTIONS_C_DEBUG "")
set(opus_Opus_opus_COMPILE_OPTIONS_CXX_DEBUG "")
set(opus_Opus_opus_LIBS_DEBUG opus)
set(opus_Opus_opus_SYSTEM_LIBS_DEBUG )
set(opus_Opus_opus_FRAMEWORK_DIRS_DEBUG )
set(opus_Opus_opus_FRAMEWORKS_DEBUG )
set(opus_Opus_opus_DEPENDENCIES_DEBUG )
set(opus_Opus_opus_SHARED_LINK_FLAGS_DEBUG )
set(opus_Opus_opus_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(opus_Opus_opus_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${opus_Opus_opus_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${opus_Opus_opus_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${opus_Opus_opus_EXE_LINK_FLAGS_DEBUG}>
)
set(opus_Opus_opus_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${opus_Opus_opus_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${opus_Opus_opus_COMPILE_OPTIONS_C_DEBUG}>")