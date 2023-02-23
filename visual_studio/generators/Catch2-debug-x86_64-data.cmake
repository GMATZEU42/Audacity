########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(catch2_COMPONENT_NAMES "")
set(catch2_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(catch2_PACKAGE_FOLDER_DEBUG "C:/Users/giaco/.conan/data/catch2/2.13.8/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(catch2_BUILD_MODULES_PATHS_DEBUG )


set(catch2_INCLUDE_DIRS_DEBUG "${catch2_PACKAGE_FOLDER_DEBUG}/include")
set(catch2_RES_DIRS_DEBUG )
set(catch2_DEFINITIONS_DEBUG )
set(catch2_SHARED_LINK_FLAGS_DEBUG )
set(catch2_EXE_LINK_FLAGS_DEBUG )
set(catch2_OBJECTS_DEBUG )
set(catch2_COMPILE_DEFINITIONS_DEBUG )
set(catch2_COMPILE_OPTIONS_C_DEBUG )
set(catch2_COMPILE_OPTIONS_CXX_DEBUG )
set(catch2_LIB_DIRS_DEBUG "${catch2_PACKAGE_FOLDER_DEBUG}/lib")
set(catch2_LIBS_DEBUG )
set(catch2_SYSTEM_LIBS_DEBUG )
set(catch2_FRAMEWORK_DIRS_DEBUG )
set(catch2_FRAMEWORKS_DEBUG )
set(catch2_BUILD_DIRS_DEBUG "${catch2_PACKAGE_FOLDER_DEBUG}/lib/cmake/Catch2")

# COMPOUND VARIABLES
set(catch2_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${catch2_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${catch2_COMPILE_OPTIONS_C_DEBUG}>")
set(catch2_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${catch2_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${catch2_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${catch2_EXE_LINK_FLAGS_DEBUG}>")


set(catch2_COMPONENTS_DEBUG )