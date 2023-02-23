########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(libpng_COMPONENT_NAMES "")
list(APPEND libpng_FIND_DEPENDENCY_NAMES ZLIB)
list(REMOVE_DUPLICATES libpng_FIND_DEPENDENCY_NAMES)
set(ZLIB_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(libpng_PACKAGE_FOLDER_MINSIZEREL "C:/Users/giaco/.conan/data/libpng/1.6.37/_/_/package/c6d8367cbf7c047a38c0929c00d8d160cb8378db")
set(libpng_BUILD_MODULES_PATHS_MINSIZEREL )


set(libpng_INCLUDE_DIRS_MINSIZEREL "${libpng_PACKAGE_FOLDER_MINSIZEREL}/include")
set(libpng_RES_DIRS_MINSIZEREL )
set(libpng_DEFINITIONS_MINSIZEREL )
set(libpng_SHARED_LINK_FLAGS_MINSIZEREL )
set(libpng_EXE_LINK_FLAGS_MINSIZEREL )
set(libpng_OBJECTS_MINSIZEREL )
set(libpng_COMPILE_DEFINITIONS_MINSIZEREL )
set(libpng_COMPILE_OPTIONS_C_MINSIZEREL )
set(libpng_COMPILE_OPTIONS_CXX_MINSIZEREL )
set(libpng_LIB_DIRS_MINSIZEREL "${libpng_PACKAGE_FOLDER_MINSIZEREL}/lib")
set(libpng_LIBS_MINSIZEREL libpng16)
set(libpng_SYSTEM_LIBS_MINSIZEREL )
set(libpng_FRAMEWORK_DIRS_MINSIZEREL )
set(libpng_FRAMEWORKS_MINSIZEREL )
set(libpng_BUILD_DIRS_MINSIZEREL "${libpng_PACKAGE_FOLDER_MINSIZEREL}/")

# COMPOUND VARIABLES
set(libpng_COMPILE_OPTIONS_MINSIZEREL
    "$<$<COMPILE_LANGUAGE:CXX>:${libpng_COMPILE_OPTIONS_CXX_MINSIZEREL}>"
    "$<$<COMPILE_LANGUAGE:C>:${libpng_COMPILE_OPTIONS_C_MINSIZEREL}>")
set(libpng_LINKER_FLAGS_MINSIZEREL
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libpng_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libpng_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libpng_EXE_LINK_FLAGS_MINSIZEREL}>")


set(libpng_COMPONENTS_MINSIZEREL )