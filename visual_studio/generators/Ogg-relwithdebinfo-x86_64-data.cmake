########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND ogg_COMPONENT_NAMES Ogg::ogg)
list(REMOVE_DUPLICATES ogg_COMPONENT_NAMES)
set(ogg_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(ogg_PACKAGE_FOLDER_RELWITHDEBINFO "C:/Users/giaco/.conan/data/ogg/1.3.4/_/_/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0")
set(ogg_BUILD_MODULES_PATHS_RELWITHDEBINFO )


set(ogg_INCLUDE_DIRS_RELWITHDEBINFO "${ogg_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(ogg_RES_DIRS_RELWITHDEBINFO )
set(ogg_DEFINITIONS_RELWITHDEBINFO )
set(ogg_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(ogg_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(ogg_OBJECTS_RELWITHDEBINFO )
set(ogg_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(ogg_COMPILE_OPTIONS_C_RELWITHDEBINFO )
set(ogg_COMPILE_OPTIONS_CXX_RELWITHDEBINFO )
set(ogg_LIB_DIRS_RELWITHDEBINFO "${ogg_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(ogg_LIBS_RELWITHDEBINFO ogg)
set(ogg_SYSTEM_LIBS_RELWITHDEBINFO )
set(ogg_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(ogg_FRAMEWORKS_RELWITHDEBINFO )
set(ogg_BUILD_DIRS_RELWITHDEBINFO )

# COMPOUND VARIABLES
set(ogg_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${ogg_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${ogg_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
set(ogg_LINKER_FLAGS_RELWITHDEBINFO
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ogg_SHARED_LINK_FLAGS_RELWITHDEBINFO}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ogg_SHARED_LINK_FLAGS_RELWITHDEBINFO}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ogg_EXE_LINK_FLAGS_RELWITHDEBINFO}>")


set(ogg_COMPONENTS_RELWITHDEBINFO Ogg::ogg)
########### COMPONENT Ogg::ogg VARIABLES ############################################

set(ogg_Ogg_ogg_INCLUDE_DIRS_RELWITHDEBINFO "${ogg_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(ogg_Ogg_ogg_LIB_DIRS_RELWITHDEBINFO "${ogg_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(ogg_Ogg_ogg_RES_DIRS_RELWITHDEBINFO )
set(ogg_Ogg_ogg_DEFINITIONS_RELWITHDEBINFO )
set(ogg_Ogg_ogg_OBJECTS_RELWITHDEBINFO )
set(ogg_Ogg_ogg_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(ogg_Ogg_ogg_COMPILE_OPTIONS_C_RELWITHDEBINFO "")
set(ogg_Ogg_ogg_COMPILE_OPTIONS_CXX_RELWITHDEBINFO "")
set(ogg_Ogg_ogg_LIBS_RELWITHDEBINFO ogg)
set(ogg_Ogg_ogg_SYSTEM_LIBS_RELWITHDEBINFO )
set(ogg_Ogg_ogg_FRAMEWORK_DIRS_RELWITHDEBINFO )
set(ogg_Ogg_ogg_FRAMEWORKS_RELWITHDEBINFO )
set(ogg_Ogg_ogg_DEPENDENCIES_RELWITHDEBINFO )
set(ogg_Ogg_ogg_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(ogg_Ogg_ogg_EXE_LINK_FLAGS_RELWITHDEBINFO )
# COMPOUND VARIABLES
set(ogg_Ogg_ogg_LINKER_FLAGS_RELWITHDEBINFO
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${ogg_Ogg_ogg_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${ogg_Ogg_ogg_SHARED_LINK_FLAGS_RELWITHDEBINFO}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${ogg_Ogg_ogg_EXE_LINK_FLAGS_RELWITHDEBINFO}>
)
set(ogg_Ogg_ogg_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${ogg_Ogg_ogg_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${ogg_Ogg_ogg_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")