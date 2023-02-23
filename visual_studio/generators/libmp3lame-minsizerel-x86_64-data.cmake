########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(libmp3lame_COMPONENT_NAMES "")
set(libmp3lame_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(libmp3lame_PACKAGE_FOLDER_MINSIZEREL "C:/Users/giaco/.conan/data/libmp3lame/3.100/_/_/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0")
set(libmp3lame_BUILD_MODULES_PATHS_MINSIZEREL )


set(libmp3lame_INCLUDE_DIRS_MINSIZEREL "${libmp3lame_PACKAGE_FOLDER_MINSIZEREL}/include")
set(libmp3lame_RES_DIRS_MINSIZEREL )
set(libmp3lame_DEFINITIONS_MINSIZEREL )
set(libmp3lame_SHARED_LINK_FLAGS_MINSIZEREL )
set(libmp3lame_EXE_LINK_FLAGS_MINSIZEREL )
set(libmp3lame_OBJECTS_MINSIZEREL )
set(libmp3lame_COMPILE_DEFINITIONS_MINSIZEREL )
set(libmp3lame_COMPILE_OPTIONS_C_MINSIZEREL )
set(libmp3lame_COMPILE_OPTIONS_CXX_MINSIZEREL )
set(libmp3lame_LIB_DIRS_MINSIZEREL "${libmp3lame_PACKAGE_FOLDER_MINSIZEREL}/lib")
set(libmp3lame_LIBS_MINSIZEREL mp3lame)
set(libmp3lame_SYSTEM_LIBS_MINSIZEREL )
set(libmp3lame_FRAMEWORK_DIRS_MINSIZEREL )
set(libmp3lame_FRAMEWORKS_MINSIZEREL )
set(libmp3lame_BUILD_DIRS_MINSIZEREL "${libmp3lame_PACKAGE_FOLDER_MINSIZEREL}/")

# COMPOUND VARIABLES
set(libmp3lame_COMPILE_OPTIONS_MINSIZEREL
    "$<$<COMPILE_LANGUAGE:CXX>:${libmp3lame_COMPILE_OPTIONS_CXX_MINSIZEREL}>"
    "$<$<COMPILE_LANGUAGE:C>:${libmp3lame_COMPILE_OPTIONS_C_MINSIZEREL}>")
set(libmp3lame_LINKER_FLAGS_MINSIZEREL
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libmp3lame_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libmp3lame_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libmp3lame_EXE_LINK_FLAGS_MINSIZEREL}>")


set(libmp3lame_COMPONENTS_MINSIZEREL )