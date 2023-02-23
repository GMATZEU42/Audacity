########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND ogg_COMPONENT_NAMES Ogg::ogg)
list(REMOVE_DUPLICATES ogg_COMPONENT_NAMES)
set(ogg_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(ogg_PACKAGE_FOLDER_RELEASE "C:/Users/giaco/.conan/data/ogg/1.3.4/_/_/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0")
set(ogg_BUILD_MODULES_PATHS_RELEASE )


set(ogg_INCLUDE_DIRS_RELEASE "${ogg_PACKAGE_FOLDER_RELEASE}/include")
set(ogg_RES_DIRS_RELEASE )
set(ogg_DEFINITIONS_RELEASE )
set(ogg_SHARED_LINK_FLAGS_RELEASE )
set(ogg_EXE_LINK_FLAGS_RELEASE )
set(ogg_OBJECTS_RELEASE )
set(ogg_COMPILE_DEFINITIONS_RELEASE )
set(ogg_COMPILE_OPTIONS_C_RELEASE )
set(ogg_COMPILE_OPTIONS_CXX_RELEASE )
set(ogg_LIB_DIRS_RELEASE "${ogg_PACKAGE_FOLDER_RELEASE}/lib")
set(ogg_LIBS_RELEASE ogg)
set(ogg_SYSTEM_LIBS_RELEASE )
set(ogg_FRAMEWORK_DIRS_RELEASE )
set(ogg_FRAMEWORKS_RELEASE )
set(ogg_BUILD_DIRS_RELEASE )

# COMPOUND VARIABLES
set(ogg_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${ogg_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${ogg_COMPILE_OPTIONS_C_RELEASE}>")
set(ogg_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ogg_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ogg_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ogg_EXE_LINK_FLAGS_RELEASE}>")


set(ogg_COMPONENTS_RELEASE Ogg::ogg)
########### COMPONENT Ogg::ogg VARIABLES ############################################

set(ogg_Ogg_ogg_INCLUDE_DIRS_RELEASE "${ogg_PACKAGE_FOLDER_RELEASE}/include")
set(ogg_Ogg_ogg_LIB_DIRS_RELEASE "${ogg_PACKAGE_FOLDER_RELEASE}/lib")
set(ogg_Ogg_ogg_RES_DIRS_RELEASE )
set(ogg_Ogg_ogg_DEFINITIONS_RELEASE )
set(ogg_Ogg_ogg_OBJECTS_RELEASE )
set(ogg_Ogg_ogg_COMPILE_DEFINITIONS_RELEASE )
set(ogg_Ogg_ogg_COMPILE_OPTIONS_C_RELEASE "")
set(ogg_Ogg_ogg_COMPILE_OPTIONS_CXX_RELEASE "")
set(ogg_Ogg_ogg_LIBS_RELEASE ogg)
set(ogg_Ogg_ogg_SYSTEM_LIBS_RELEASE )
set(ogg_Ogg_ogg_FRAMEWORK_DIRS_RELEASE )
set(ogg_Ogg_ogg_FRAMEWORKS_RELEASE )
set(ogg_Ogg_ogg_DEPENDENCIES_RELEASE )
set(ogg_Ogg_ogg_SHARED_LINK_FLAGS_RELEASE )
set(ogg_Ogg_ogg_EXE_LINK_FLAGS_RELEASE )
# COMPOUND VARIABLES
set(ogg_Ogg_ogg_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ogg_Ogg_ogg_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ogg_Ogg_ogg_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ogg_Ogg_ogg_EXE_LINK_FLAGS_RELEASE}>
)
set(ogg_Ogg_ogg_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${ogg_Ogg_ogg_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${ogg_Ogg_ogg_COMPILE_OPTIONS_C_RELEASE}>")