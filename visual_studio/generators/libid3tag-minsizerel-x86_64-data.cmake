########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(libid3tag_COMPONENT_NAMES "")
list(APPEND libid3tag_FIND_DEPENDENCY_NAMES ZLIB)
list(REMOVE_DUPLICATES libid3tag_FIND_DEPENDENCY_NAMES)
set(ZLIB_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(libid3tag_PACKAGE_FOLDER_MINSIZEREL "C:/Users/giaco/.conan/data/libid3tag/0.15.2b/audacity/stable/package/cff0a049e1746c21cbf4a615b7f8af9699b5e4e2")
set(libid3tag_BUILD_MODULES_PATHS_MINSIZEREL )


set(libid3tag_INCLUDE_DIRS_MINSIZEREL "${libid3tag_PACKAGE_FOLDER_MINSIZEREL}/include")
set(libid3tag_RES_DIRS_MINSIZEREL "${libid3tag_PACKAGE_FOLDER_MINSIZEREL}/res")
set(libid3tag_DEFINITIONS_MINSIZEREL )
set(libid3tag_SHARED_LINK_FLAGS_MINSIZEREL )
set(libid3tag_EXE_LINK_FLAGS_MINSIZEREL )
set(libid3tag_OBJECTS_MINSIZEREL )
set(libid3tag_COMPILE_DEFINITIONS_MINSIZEREL )
set(libid3tag_COMPILE_OPTIONS_C_MINSIZEREL )
set(libid3tag_COMPILE_OPTIONS_CXX_MINSIZEREL )
set(libid3tag_LIB_DIRS_MINSIZEREL "${libid3tag_PACKAGE_FOLDER_MINSIZEREL}/lib")
set(libid3tag_LIBS_MINSIZEREL libid3tag)
set(libid3tag_SYSTEM_LIBS_MINSIZEREL )
set(libid3tag_FRAMEWORK_DIRS_MINSIZEREL "${libid3tag_PACKAGE_FOLDER_MINSIZEREL}/Frameworks")
set(libid3tag_FRAMEWORKS_MINSIZEREL )
set(libid3tag_BUILD_DIRS_MINSIZEREL "${libid3tag_PACKAGE_FOLDER_MINSIZEREL}/")

# COMPOUND VARIABLES
set(libid3tag_COMPILE_OPTIONS_MINSIZEREL
    "$<$<COMPILE_LANGUAGE:CXX>:${libid3tag_COMPILE_OPTIONS_CXX_MINSIZEREL}>"
    "$<$<COMPILE_LANGUAGE:C>:${libid3tag_COMPILE_OPTIONS_C_MINSIZEREL}>")
set(libid3tag_LINKER_FLAGS_MINSIZEREL
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libid3tag_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libid3tag_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libid3tag_EXE_LINK_FLAGS_MINSIZEREL}>")


set(libid3tag_COMPONENTS_MINSIZEREL )