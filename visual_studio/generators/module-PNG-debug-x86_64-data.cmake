########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(libpng_COMPONENT_NAMES "")
list(APPEND libpng_FIND_DEPENDENCY_NAMES ZLIB)
list(REMOVE_DUPLICATES libpng_FIND_DEPENDENCY_NAMES)
set(ZLIB_FIND_MODE "MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(libpng_PACKAGE_FOLDER_DEBUG "C:/Users/giaco/.conan/data/libpng/1.6.37/_/_/package/2026793585d04329599fcef815fc80b19828f099")
set(libpng_BUILD_MODULES_PATHS_DEBUG )


set(libpng_INCLUDE_DIRS_DEBUG "${libpng_PACKAGE_FOLDER_DEBUG}/include")
set(libpng_RES_DIRS_DEBUG )
set(libpng_DEFINITIONS_DEBUG )
set(libpng_SHARED_LINK_FLAGS_DEBUG )
set(libpng_EXE_LINK_FLAGS_DEBUG )
set(libpng_OBJECTS_DEBUG )
set(libpng_COMPILE_DEFINITIONS_DEBUG )
set(libpng_COMPILE_OPTIONS_C_DEBUG )
set(libpng_COMPILE_OPTIONS_CXX_DEBUG )
set(libpng_LIB_DIRS_DEBUG "${libpng_PACKAGE_FOLDER_DEBUG}/lib")
set(libpng_LIBS_DEBUG libpng16d)
set(libpng_SYSTEM_LIBS_DEBUG )
set(libpng_FRAMEWORK_DIRS_DEBUG )
set(libpng_FRAMEWORKS_DEBUG )
set(libpng_BUILD_DIRS_DEBUG "${libpng_PACKAGE_FOLDER_DEBUG}/")

# COMPOUND VARIABLES
set(libpng_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${libpng_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${libpng_COMPILE_OPTIONS_C_DEBUG}>")
set(libpng_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libpng_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libpng_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libpng_EXE_LINK_FLAGS_DEBUG}>")


set(libpng_COMPONENTS_DEBUG )