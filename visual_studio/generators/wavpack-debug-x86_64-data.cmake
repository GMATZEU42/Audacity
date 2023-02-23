########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(wavpack_COMPONENT_NAMES "")
set(wavpack_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(wavpack_PACKAGE_FOLDER_DEBUG "C:/Users/giaco/.conan/data/wavpack/5.4.0/_/_/package/149c3cbffe15feb8948c72bae420304d464a1e75")
set(wavpack_BUILD_MODULES_PATHS_DEBUG )


set(wavpack_INCLUDE_DIRS_DEBUG "${wavpack_PACKAGE_FOLDER_DEBUG}/include")
set(wavpack_RES_DIRS_DEBUG "${wavpack_PACKAGE_FOLDER_DEBUG}/res")
set(wavpack_DEFINITIONS_DEBUG )
set(wavpack_SHARED_LINK_FLAGS_DEBUG )
set(wavpack_EXE_LINK_FLAGS_DEBUG )
set(wavpack_OBJECTS_DEBUG )
set(wavpack_COMPILE_DEFINITIONS_DEBUG )
set(wavpack_COMPILE_OPTIONS_C_DEBUG )
set(wavpack_COMPILE_OPTIONS_CXX_DEBUG )
set(wavpack_LIB_DIRS_DEBUG "${wavpack_PACKAGE_FOLDER_DEBUG}/lib")
set(wavpack_LIBS_DEBUG wavpackdll)
set(wavpack_SYSTEM_LIBS_DEBUG )
set(wavpack_FRAMEWORK_DIRS_DEBUG "${wavpack_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(wavpack_FRAMEWORKS_DEBUG )
set(wavpack_BUILD_DIRS_DEBUG "${wavpack_PACKAGE_FOLDER_DEBUG}/")

# COMPOUND VARIABLES
set(wavpack_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${wavpack_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${wavpack_COMPILE_OPTIONS_C_DEBUG}>")
set(wavpack_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${wavpack_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${wavpack_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${wavpack_EXE_LINK_FLAGS_DEBUG}>")


set(wavpack_COMPONENTS_DEBUG )