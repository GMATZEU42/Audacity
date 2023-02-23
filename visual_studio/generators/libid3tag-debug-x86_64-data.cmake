########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(libid3tag_COMPONENT_NAMES "")
list(APPEND libid3tag_FIND_DEPENDENCY_NAMES ZLIB)
list(REMOVE_DUPLICATES libid3tag_FIND_DEPENDENCY_NAMES)
set(ZLIB_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(libid3tag_PACKAGE_FOLDER_DEBUG "C:/Users/giaco/.conan/data/libid3tag/0.15.2b/audacity/stable/package/177e4dcd8901cd0ef1fcec3151e2b8388cf14a47")
set(libid3tag_BUILD_MODULES_PATHS_DEBUG )


set(libid3tag_INCLUDE_DIRS_DEBUG "${libid3tag_PACKAGE_FOLDER_DEBUG}/include")
set(libid3tag_RES_DIRS_DEBUG "${libid3tag_PACKAGE_FOLDER_DEBUG}/res")
set(libid3tag_DEFINITIONS_DEBUG )
set(libid3tag_SHARED_LINK_FLAGS_DEBUG )
set(libid3tag_EXE_LINK_FLAGS_DEBUG )
set(libid3tag_OBJECTS_DEBUG )
set(libid3tag_COMPILE_DEFINITIONS_DEBUG )
set(libid3tag_COMPILE_OPTIONS_C_DEBUG )
set(libid3tag_COMPILE_OPTIONS_CXX_DEBUG )
set(libid3tag_LIB_DIRS_DEBUG "${libid3tag_PACKAGE_FOLDER_DEBUG}/lib")
set(libid3tag_LIBS_DEBUG libid3tag)
set(libid3tag_SYSTEM_LIBS_DEBUG )
set(libid3tag_FRAMEWORK_DIRS_DEBUG "${libid3tag_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(libid3tag_FRAMEWORKS_DEBUG )
set(libid3tag_BUILD_DIRS_DEBUG "${libid3tag_PACKAGE_FOLDER_DEBUG}/")

# COMPOUND VARIABLES
set(libid3tag_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${libid3tag_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${libid3tag_COMPILE_OPTIONS_C_DEBUG}>")
set(libid3tag_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libid3tag_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libid3tag_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libid3tag_EXE_LINK_FLAGS_DEBUG}>")


set(libid3tag_COMPONENTS_DEBUG )