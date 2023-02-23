########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(wavpack_COMPONENT_NAMES "")
set(wavpack_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(wavpack_PACKAGE_FOLDER_RELEASE "C:/Users/giaco/.conan/data/wavpack/5.4.0/_/_/package/f8ede90eeb7dcf521c8653ba9e84fa208c917189")
set(wavpack_BUILD_MODULES_PATHS_RELEASE )


set(wavpack_INCLUDE_DIRS_RELEASE "${wavpack_PACKAGE_FOLDER_RELEASE}/include")
set(wavpack_RES_DIRS_RELEASE "${wavpack_PACKAGE_FOLDER_RELEASE}/res")
set(wavpack_DEFINITIONS_RELEASE )
set(wavpack_SHARED_LINK_FLAGS_RELEASE )
set(wavpack_EXE_LINK_FLAGS_RELEASE )
set(wavpack_OBJECTS_RELEASE )
set(wavpack_COMPILE_DEFINITIONS_RELEASE )
set(wavpack_COMPILE_OPTIONS_C_RELEASE )
set(wavpack_COMPILE_OPTIONS_CXX_RELEASE )
set(wavpack_LIB_DIRS_RELEASE "${wavpack_PACKAGE_FOLDER_RELEASE}/lib")
set(wavpack_LIBS_RELEASE wavpackdll)
set(wavpack_SYSTEM_LIBS_RELEASE )
set(wavpack_FRAMEWORK_DIRS_RELEASE "${wavpack_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(wavpack_FRAMEWORKS_RELEASE )
set(wavpack_BUILD_DIRS_RELEASE "${wavpack_PACKAGE_FOLDER_RELEASE}/")

# COMPOUND VARIABLES
set(wavpack_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${wavpack_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${wavpack_COMPILE_OPTIONS_C_RELEASE}>")
set(wavpack_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${wavpack_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${wavpack_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${wavpack_EXE_LINK_FLAGS_RELEASE}>")


set(wavpack_COMPONENTS_RELEASE )