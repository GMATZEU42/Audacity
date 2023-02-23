########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(wavpack_COMPONENT_NAMES "")
set(wavpack_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(wavpack_PACKAGE_FOLDER_MINSIZEREL "C:/Users/giaco/.conan/data/wavpack/5.4.0/_/_/package/f8ede90eeb7dcf521c8653ba9e84fa208c917189")
set(wavpack_BUILD_MODULES_PATHS_MINSIZEREL )


set(wavpack_INCLUDE_DIRS_MINSIZEREL "${wavpack_PACKAGE_FOLDER_MINSIZEREL}/include")
set(wavpack_RES_DIRS_MINSIZEREL "${wavpack_PACKAGE_FOLDER_MINSIZEREL}/res")
set(wavpack_DEFINITIONS_MINSIZEREL )
set(wavpack_SHARED_LINK_FLAGS_MINSIZEREL )
set(wavpack_EXE_LINK_FLAGS_MINSIZEREL )
set(wavpack_OBJECTS_MINSIZEREL )
set(wavpack_COMPILE_DEFINITIONS_MINSIZEREL )
set(wavpack_COMPILE_OPTIONS_C_MINSIZEREL )
set(wavpack_COMPILE_OPTIONS_CXX_MINSIZEREL )
set(wavpack_LIB_DIRS_MINSIZEREL "${wavpack_PACKAGE_FOLDER_MINSIZEREL}/lib")
set(wavpack_LIBS_MINSIZEREL wavpackdll)
set(wavpack_SYSTEM_LIBS_MINSIZEREL )
set(wavpack_FRAMEWORK_DIRS_MINSIZEREL "${wavpack_PACKAGE_FOLDER_MINSIZEREL}/Frameworks")
set(wavpack_FRAMEWORKS_MINSIZEREL )
set(wavpack_BUILD_DIRS_MINSIZEREL "${wavpack_PACKAGE_FOLDER_MINSIZEREL}/")

# COMPOUND VARIABLES
set(wavpack_COMPILE_OPTIONS_MINSIZEREL
    "$<$<COMPILE_LANGUAGE:CXX>:${wavpack_COMPILE_OPTIONS_CXX_MINSIZEREL}>"
    "$<$<COMPILE_LANGUAGE:C>:${wavpack_COMPILE_OPTIONS_C_MINSIZEREL}>")
set(wavpack_LINKER_FLAGS_MINSIZEREL
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${wavpack_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${wavpack_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${wavpack_EXE_LINK_FLAGS_MINSIZEREL}>")


set(wavpack_COMPONENTS_MINSIZEREL )