########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(expat_COMPONENT_NAMES "")
set(expat_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(expat_PACKAGE_FOLDER_DEBUG "C:/Users/giaco/.conan/data/expat/2.2.9/audacity/stable/package/bf9ec17af5844bd8d3cc139070000dc26fc5f076")
set(expat_BUILD_MODULES_PATHS_DEBUG )


set(expat_INCLUDE_DIRS_DEBUG "${expat_PACKAGE_FOLDER_DEBUG}/include")
set(expat_RES_DIRS_DEBUG "${expat_PACKAGE_FOLDER_DEBUG}/res")
set(expat_DEFINITIONS_DEBUG )
set(expat_SHARED_LINK_FLAGS_DEBUG )
set(expat_EXE_LINK_FLAGS_DEBUG )
set(expat_OBJECTS_DEBUG )
set(expat_COMPILE_DEFINITIONS_DEBUG )
set(expat_COMPILE_OPTIONS_C_DEBUG )
set(expat_COMPILE_OPTIONS_CXX_DEBUG )
set(expat_LIB_DIRS_DEBUG "${expat_PACKAGE_FOLDER_DEBUG}/lib")
set(expat_LIBS_DEBUG libexpatd)
set(expat_SYSTEM_LIBS_DEBUG )
set(expat_FRAMEWORK_DIRS_DEBUG "${expat_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(expat_FRAMEWORKS_DEBUG )
set(expat_BUILD_DIRS_DEBUG "${expat_PACKAGE_FOLDER_DEBUG}/")

# COMPOUND VARIABLES
set(expat_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${expat_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${expat_COMPILE_OPTIONS_C_DEBUG}>")
set(expat_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${expat_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${expat_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${expat_EXE_LINK_FLAGS_DEBUG}>")


set(expat_COMPONENTS_DEBUG )