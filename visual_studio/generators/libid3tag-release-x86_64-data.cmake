########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(libid3tag_COMPONENT_NAMES "")
list(APPEND libid3tag_FIND_DEPENDENCY_NAMES ZLIB)
list(REMOVE_DUPLICATES libid3tag_FIND_DEPENDENCY_NAMES)
set(ZLIB_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(libid3tag_PACKAGE_FOLDER_RELEASE "C:/Users/giaco/.conan/data/libid3tag/0.15.2b/audacity/stable/package/cff0a049e1746c21cbf4a615b7f8af9699b5e4e2")
set(libid3tag_BUILD_MODULES_PATHS_RELEASE )


set(libid3tag_INCLUDE_DIRS_RELEASE "${libid3tag_PACKAGE_FOLDER_RELEASE}/include")
set(libid3tag_RES_DIRS_RELEASE "${libid3tag_PACKAGE_FOLDER_RELEASE}/res")
set(libid3tag_DEFINITIONS_RELEASE )
set(libid3tag_SHARED_LINK_FLAGS_RELEASE )
set(libid3tag_EXE_LINK_FLAGS_RELEASE )
set(libid3tag_OBJECTS_RELEASE )
set(libid3tag_COMPILE_DEFINITIONS_RELEASE )
set(libid3tag_COMPILE_OPTIONS_C_RELEASE )
set(libid3tag_COMPILE_OPTIONS_CXX_RELEASE )
set(libid3tag_LIB_DIRS_RELEASE "${libid3tag_PACKAGE_FOLDER_RELEASE}/lib")
set(libid3tag_LIBS_RELEASE libid3tag)
set(libid3tag_SYSTEM_LIBS_RELEASE )
set(libid3tag_FRAMEWORK_DIRS_RELEASE "${libid3tag_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(libid3tag_FRAMEWORKS_RELEASE )
set(libid3tag_BUILD_DIRS_RELEASE "${libid3tag_PACKAGE_FOLDER_RELEASE}/")

# COMPOUND VARIABLES
set(libid3tag_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${libid3tag_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${libid3tag_COMPILE_OPTIONS_C_RELEASE}>")
set(libid3tag_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libid3tag_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libid3tag_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libid3tag_EXE_LINK_FLAGS_RELEASE}>")


set(libid3tag_COMPONENTS_RELEASE )