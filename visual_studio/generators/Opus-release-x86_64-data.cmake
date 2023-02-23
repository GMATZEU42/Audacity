########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND opus_COMPONENT_NAMES Opus::opus)
list(REMOVE_DUPLICATES opus_COMPONENT_NAMES)
set(opus_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(opus_PACKAGE_FOLDER_RELEASE "C:/Users/giaco/.conan/data/opus/1.3.1/_/_/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0")
set(opus_BUILD_MODULES_PATHS_RELEASE )


set(opus_INCLUDE_DIRS_RELEASE "${opus_PACKAGE_FOLDER_RELEASE}/include"
			"${opus_PACKAGE_FOLDER_RELEASE}/include/opus")
set(opus_RES_DIRS_RELEASE )
set(opus_DEFINITIONS_RELEASE )
set(opus_SHARED_LINK_FLAGS_RELEASE )
set(opus_EXE_LINK_FLAGS_RELEASE )
set(opus_OBJECTS_RELEASE )
set(opus_COMPILE_DEFINITIONS_RELEASE )
set(opus_COMPILE_OPTIONS_C_RELEASE )
set(opus_COMPILE_OPTIONS_CXX_RELEASE )
set(opus_LIB_DIRS_RELEASE "${opus_PACKAGE_FOLDER_RELEASE}/lib")
set(opus_LIBS_RELEASE opus)
set(opus_SYSTEM_LIBS_RELEASE )
set(opus_FRAMEWORK_DIRS_RELEASE )
set(opus_FRAMEWORKS_RELEASE )
set(opus_BUILD_DIRS_RELEASE )

# COMPOUND VARIABLES
set(opus_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${opus_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${opus_COMPILE_OPTIONS_C_RELEASE}>")
set(opus_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${opus_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${opus_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${opus_EXE_LINK_FLAGS_RELEASE}>")


set(opus_COMPONENTS_RELEASE Opus::opus)
########### COMPONENT Opus::opus VARIABLES ############################################

set(opus_Opus_opus_INCLUDE_DIRS_RELEASE "${opus_PACKAGE_FOLDER_RELEASE}/include"
			"${opus_PACKAGE_FOLDER_RELEASE}/include/opus")
set(opus_Opus_opus_LIB_DIRS_RELEASE "${opus_PACKAGE_FOLDER_RELEASE}/lib")
set(opus_Opus_opus_RES_DIRS_RELEASE )
set(opus_Opus_opus_DEFINITIONS_RELEASE )
set(opus_Opus_opus_OBJECTS_RELEASE )
set(opus_Opus_opus_COMPILE_DEFINITIONS_RELEASE )
set(opus_Opus_opus_COMPILE_OPTIONS_C_RELEASE "")
set(opus_Opus_opus_COMPILE_OPTIONS_CXX_RELEASE "")
set(opus_Opus_opus_LIBS_RELEASE opus)
set(opus_Opus_opus_SYSTEM_LIBS_RELEASE )
set(opus_Opus_opus_FRAMEWORK_DIRS_RELEASE )
set(opus_Opus_opus_FRAMEWORKS_RELEASE )
set(opus_Opus_opus_DEPENDENCIES_RELEASE )
set(opus_Opus_opus_SHARED_LINK_FLAGS_RELEASE )
set(opus_Opus_opus_EXE_LINK_FLAGS_RELEASE )
# COMPOUND VARIABLES
set(opus_Opus_opus_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${opus_Opus_opus_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${opus_Opus_opus_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${opus_Opus_opus_EXE_LINK_FLAGS_RELEASE}>
)
set(opus_Opus_opus_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${opus_Opus_opus_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${opus_Opus_opus_COMPILE_OPTIONS_C_RELEASE}>")