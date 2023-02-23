########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(expat_COMPONENT_NAMES "")
set(expat_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(expat_PACKAGE_FOLDER_RELEASE "C:/Users/giaco/.conan/data/expat/2.2.9/audacity/stable/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0")
set(expat_BUILD_MODULES_PATHS_RELEASE )


set(expat_INCLUDE_DIRS_RELEASE "${expat_PACKAGE_FOLDER_RELEASE}/include")
set(expat_RES_DIRS_RELEASE "${expat_PACKAGE_FOLDER_RELEASE}/res")
set(expat_DEFINITIONS_RELEASE )
set(expat_SHARED_LINK_FLAGS_RELEASE )
set(expat_EXE_LINK_FLAGS_RELEASE )
set(expat_OBJECTS_RELEASE )
set(expat_COMPILE_DEFINITIONS_RELEASE )
set(expat_COMPILE_OPTIONS_C_RELEASE )
set(expat_COMPILE_OPTIONS_CXX_RELEASE )
set(expat_LIB_DIRS_RELEASE "${expat_PACKAGE_FOLDER_RELEASE}/lib")
set(expat_LIBS_RELEASE libexpat)
set(expat_SYSTEM_LIBS_RELEASE )
set(expat_FRAMEWORK_DIRS_RELEASE "${expat_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(expat_FRAMEWORKS_RELEASE )
set(expat_BUILD_DIRS_RELEASE "${expat_PACKAGE_FOLDER_RELEASE}/")

# COMPOUND VARIABLES
set(expat_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${expat_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${expat_COMPILE_OPTIONS_C_RELEASE}>")
set(expat_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${expat_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${expat_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${expat_EXE_LINK_FLAGS_RELEASE}>")


set(expat_COMPONENTS_RELEASE )