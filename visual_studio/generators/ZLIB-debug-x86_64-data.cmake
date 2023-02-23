########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(zlib_COMPONENT_NAMES "")
set(zlib_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(zlib_PACKAGE_FOLDER_DEBUG "C:/Users/giaco/.conan/data/zlib/1.2.11/_/_/package/bf9ec17af5844bd8d3cc139070000dc26fc5f076")
set(zlib_BUILD_MODULES_PATHS_DEBUG )


set(zlib_INCLUDE_DIRS_DEBUG "${zlib_PACKAGE_FOLDER_DEBUG}/include")
set(zlib_RES_DIRS_DEBUG )
set(zlib_DEFINITIONS_DEBUG )
set(zlib_SHARED_LINK_FLAGS_DEBUG )
set(zlib_EXE_LINK_FLAGS_DEBUG )
set(zlib_OBJECTS_DEBUG )
set(zlib_COMPILE_DEFINITIONS_DEBUG )
set(zlib_COMPILE_OPTIONS_C_DEBUG )
set(zlib_COMPILE_OPTIONS_CXX_DEBUG )
set(zlib_LIB_DIRS_DEBUG "${zlib_PACKAGE_FOLDER_DEBUG}/lib")
set(zlib_LIBS_DEBUG zdll)
set(zlib_SYSTEM_LIBS_DEBUG )
set(zlib_FRAMEWORK_DIRS_DEBUG )
set(zlib_FRAMEWORKS_DEBUG )
set(zlib_BUILD_DIRS_DEBUG "${zlib_PACKAGE_FOLDER_DEBUG}/")

# COMPOUND VARIABLES
set(zlib_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${zlib_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${zlib_COMPILE_OPTIONS_C_DEBUG}>")
set(zlib_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${zlib_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${zlib_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${zlib_EXE_LINK_FLAGS_DEBUG}>")


set(zlib_COMPONENTS_DEBUG )