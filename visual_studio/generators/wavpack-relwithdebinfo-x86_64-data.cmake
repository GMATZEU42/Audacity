########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(wavpack_COMPONENT_NAMES "")
set(wavpack_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(wavpack_PACKAGE_FOLDER_RELWITHDEBINFO "C:/Users/giaco/.conan/data/wavpack/5.4.0/_/_/package/f8ede90eeb7dcf521c8653ba9e84fa208c917189")
set(wavpack_BUILD_MODULES_PATHS_RELWITHDEBINFO )


set(wavpack_INCLUDE_DIRS_RELWITHDEBINFO "${wavpack_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(wavpack_RES_DIRS_RELWITHDEBINFO "${wavpack_PACKAGE_FOLDER_RELWITHDEBINFO}/res")
set(wavpack_DEFINITIONS_RELWITHDEBINFO )
set(wavpack_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(wavpack_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(wavpack_OBJECTS_RELWITHDEBINFO )
set(wavpack_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(wavpack_COMPILE_OPTIONS_C_RELWITHDEBINFO )
set(wavpack_COMPILE_OPTIONS_CXX_RELWITHDEBINFO )
set(wavpack_LIB_DIRS_RELWITHDEBINFO "${wavpack_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(wavpack_LIBS_RELWITHDEBINFO wavpackdll)
set(wavpack_SYSTEM_LIBS_RELWITHDEBINFO )
set(wavpack_FRAMEWORK_DIRS_RELWITHDEBINFO "${wavpack_PACKAGE_FOLDER_RELWITHDEBINFO}/Frameworks")
set(wavpack_FRAMEWORKS_RELWITHDEBINFO )
set(wavpack_BUILD_DIRS_RELWITHDEBINFO "${wavpack_PACKAGE_FOLDER_RELWITHDEBINFO}/")

# COMPOUND VARIABLES
set(wavpack_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${wavpack_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${wavpack_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
set(wavpack_LINKER_FLAGS_RELWITHDEBINFO
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${wavpack_SHARED_LINK_FLAGS_RELWITHDEBINFO}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${wavpack_SHARED_LINK_FLAGS_RELWITHDEBINFO}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${wavpack_EXE_LINK_FLAGS_RELWITHDEBINFO}>")


set(wavpack_COMPONENTS_RELWITHDEBINFO )