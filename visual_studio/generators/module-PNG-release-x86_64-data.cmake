########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(libpng_COMPONENT_NAMES "")
list(APPEND libpng_FIND_DEPENDENCY_NAMES ZLIB)
list(REMOVE_DUPLICATES libpng_FIND_DEPENDENCY_NAMES)
set(ZLIB_FIND_MODE "MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(libpng_PACKAGE_FOLDER_RELEASE "C:/Users/giaco/.conan/data/libpng/1.6.37/_/_/package/c6d8367cbf7c047a38c0929c00d8d160cb8378db")
set(libpng_BUILD_MODULES_PATHS_RELEASE )


set(libpng_INCLUDE_DIRS_RELEASE "${libpng_PACKAGE_FOLDER_RELEASE}/include")
set(libpng_RES_DIRS_RELEASE )
set(libpng_DEFINITIONS_RELEASE )
set(libpng_SHARED_LINK_FLAGS_RELEASE )
set(libpng_EXE_LINK_FLAGS_RELEASE )
set(libpng_OBJECTS_RELEASE )
set(libpng_COMPILE_DEFINITIONS_RELEASE )
set(libpng_COMPILE_OPTIONS_C_RELEASE )
set(libpng_COMPILE_OPTIONS_CXX_RELEASE )
set(libpng_LIB_DIRS_RELEASE "${libpng_PACKAGE_FOLDER_RELEASE}/lib")
set(libpng_LIBS_RELEASE libpng16)
set(libpng_SYSTEM_LIBS_RELEASE )
set(libpng_FRAMEWORK_DIRS_RELEASE )
set(libpng_FRAMEWORKS_RELEASE )
set(libpng_BUILD_DIRS_RELEASE "${libpng_PACKAGE_FOLDER_RELEASE}/")

# COMPOUND VARIABLES
set(libpng_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${libpng_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${libpng_COMPILE_OPTIONS_C_RELEASE}>")
set(libpng_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libpng_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libpng_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libpng_EXE_LINK_FLAGS_RELEASE}>")


set(libpng_COMPONENTS_RELEASE )