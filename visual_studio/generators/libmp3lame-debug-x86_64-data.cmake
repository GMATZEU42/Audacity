########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(libmp3lame_COMPONENT_NAMES "")
set(libmp3lame_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(libmp3lame_PACKAGE_FOLDER_DEBUG "C:/Users/giaco/.conan/data/libmp3lame/3.100/_/_/package/bf9ec17af5844bd8d3cc139070000dc26fc5f076")
set(libmp3lame_BUILD_MODULES_PATHS_DEBUG )


set(libmp3lame_INCLUDE_DIRS_DEBUG "${libmp3lame_PACKAGE_FOLDER_DEBUG}/include")
set(libmp3lame_RES_DIRS_DEBUG )
set(libmp3lame_DEFINITIONS_DEBUG )
set(libmp3lame_SHARED_LINK_FLAGS_DEBUG )
set(libmp3lame_EXE_LINK_FLAGS_DEBUG )
set(libmp3lame_OBJECTS_DEBUG )
set(libmp3lame_COMPILE_DEFINITIONS_DEBUG )
set(libmp3lame_COMPILE_OPTIONS_C_DEBUG )
set(libmp3lame_COMPILE_OPTIONS_CXX_DEBUG )
set(libmp3lame_LIB_DIRS_DEBUG "${libmp3lame_PACKAGE_FOLDER_DEBUG}/lib")
set(libmp3lame_LIBS_DEBUG mp3lame)
set(libmp3lame_SYSTEM_LIBS_DEBUG )
set(libmp3lame_FRAMEWORK_DIRS_DEBUG )
set(libmp3lame_FRAMEWORKS_DEBUG )
set(libmp3lame_BUILD_DIRS_DEBUG "${libmp3lame_PACKAGE_FOLDER_DEBUG}/")

# COMPOUND VARIABLES
set(libmp3lame_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${libmp3lame_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${libmp3lame_COMPILE_OPTIONS_C_DEBUG}>")
set(libmp3lame_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libmp3lame_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libmp3lame_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libmp3lame_EXE_LINK_FLAGS_DEBUG}>")


set(libmp3lame_COMPONENTS_DEBUG )