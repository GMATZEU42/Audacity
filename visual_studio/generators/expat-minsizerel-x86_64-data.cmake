########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(expat_COMPONENT_NAMES "")
set(expat_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(expat_PACKAGE_FOLDER_MINSIZEREL "C:/Users/giaco/.conan/data/expat/2.2.9/audacity/stable/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0")
set(expat_BUILD_MODULES_PATHS_MINSIZEREL )


set(expat_INCLUDE_DIRS_MINSIZEREL "${expat_PACKAGE_FOLDER_MINSIZEREL}/include")
set(expat_RES_DIRS_MINSIZEREL "${expat_PACKAGE_FOLDER_MINSIZEREL}/res")
set(expat_DEFINITIONS_MINSIZEREL )
set(expat_SHARED_LINK_FLAGS_MINSIZEREL )
set(expat_EXE_LINK_FLAGS_MINSIZEREL )
set(expat_OBJECTS_MINSIZEREL )
set(expat_COMPILE_DEFINITIONS_MINSIZEREL )
set(expat_COMPILE_OPTIONS_C_MINSIZEREL )
set(expat_COMPILE_OPTIONS_CXX_MINSIZEREL )
set(expat_LIB_DIRS_MINSIZEREL "${expat_PACKAGE_FOLDER_MINSIZEREL}/lib")
set(expat_LIBS_MINSIZEREL libexpat)
set(expat_SYSTEM_LIBS_MINSIZEREL )
set(expat_FRAMEWORK_DIRS_MINSIZEREL "${expat_PACKAGE_FOLDER_MINSIZEREL}/Frameworks")
set(expat_FRAMEWORKS_MINSIZEREL )
set(expat_BUILD_DIRS_MINSIZEREL "${expat_PACKAGE_FOLDER_MINSIZEREL}/")

# COMPOUND VARIABLES
set(expat_COMPILE_OPTIONS_MINSIZEREL
    "$<$<COMPILE_LANGUAGE:CXX>:${expat_COMPILE_OPTIONS_CXX_MINSIZEREL}>"
    "$<$<COMPILE_LANGUAGE:C>:${expat_COMPILE_OPTIONS_C_MINSIZEREL}>")
set(expat_LINKER_FLAGS_MINSIZEREL
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${expat_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${expat_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${expat_EXE_LINK_FLAGS_MINSIZEREL}>")


set(expat_COMPONENTS_MINSIZEREL )