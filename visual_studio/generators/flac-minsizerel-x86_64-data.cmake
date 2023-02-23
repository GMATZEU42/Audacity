########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND flac_COMPONENT_NAMES FLAC::FLAC FLAC::FLAC++)
list(REMOVE_DUPLICATES flac_COMPONENT_NAMES)
list(APPEND flac_FIND_DEPENDENCY_NAMES Ogg)
list(REMOVE_DUPLICATES flac_FIND_DEPENDENCY_NAMES)
set(Ogg_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(flac_PACKAGE_FOLDER_MINSIZEREL "C:/Users/giaco/.conan/data/flac/1.3.3/_/_/package/3b26581a680ab99eb0ef725aa935a0289708df91")
set(flac_BUILD_MODULES_PATHS_MINSIZEREL )


set(flac_INCLUDE_DIRS_MINSIZEREL "${flac_PACKAGE_FOLDER_MINSIZEREL}/include")
set(flac_RES_DIRS_MINSIZEREL )
set(flac_DEFINITIONS_MINSIZEREL )
set(flac_SHARED_LINK_FLAGS_MINSIZEREL )
set(flac_EXE_LINK_FLAGS_MINSIZEREL )
set(flac_OBJECTS_MINSIZEREL )
set(flac_COMPILE_DEFINITIONS_MINSIZEREL )
set(flac_COMPILE_OPTIONS_C_MINSIZEREL )
set(flac_COMPILE_OPTIONS_CXX_MINSIZEREL )
set(flac_LIB_DIRS_MINSIZEREL "${flac_PACKAGE_FOLDER_MINSIZEREL}/lib")
set(flac_LIBS_MINSIZEREL FLAC++ FLAC)
set(flac_SYSTEM_LIBS_MINSIZEREL )
set(flac_FRAMEWORK_DIRS_MINSIZEREL )
set(flac_FRAMEWORKS_MINSIZEREL )
set(flac_BUILD_DIRS_MINSIZEREL )

# COMPOUND VARIABLES
set(flac_COMPILE_OPTIONS_MINSIZEREL
    "$<$<COMPILE_LANGUAGE:CXX>:${flac_COMPILE_OPTIONS_CXX_MINSIZEREL}>"
    "$<$<COMPILE_LANGUAGE:C>:${flac_COMPILE_OPTIONS_C_MINSIZEREL}>")
set(flac_LINKER_FLAGS_MINSIZEREL
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${flac_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${flac_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${flac_EXE_LINK_FLAGS_MINSIZEREL}>")


set(flac_COMPONENTS_MINSIZEREL FLAC::FLAC FLAC::FLAC++)
########### COMPONENT FLAC::FLAC++ VARIABLES ############################################

set(flac_FLAC_FLAC++_INCLUDE_DIRS_MINSIZEREL "${flac_PACKAGE_FOLDER_MINSIZEREL}/include")
set(flac_FLAC_FLAC++_LIB_DIRS_MINSIZEREL "${flac_PACKAGE_FOLDER_MINSIZEREL}/lib")
set(flac_FLAC_FLAC++_RES_DIRS_MINSIZEREL )
set(flac_FLAC_FLAC++_DEFINITIONS_MINSIZEREL )
set(flac_FLAC_FLAC++_OBJECTS_MINSIZEREL )
set(flac_FLAC_FLAC++_COMPILE_DEFINITIONS_MINSIZEREL )
set(flac_FLAC_FLAC++_COMPILE_OPTIONS_C_MINSIZEREL "")
set(flac_FLAC_FLAC++_COMPILE_OPTIONS_CXX_MINSIZEREL "")
set(flac_FLAC_FLAC++_LIBS_MINSIZEREL FLAC++)
set(flac_FLAC_FLAC++_SYSTEM_LIBS_MINSIZEREL )
set(flac_FLAC_FLAC++_FRAMEWORK_DIRS_MINSIZEREL )
set(flac_FLAC_FLAC++_FRAMEWORKS_MINSIZEREL )
set(flac_FLAC_FLAC++_DEPENDENCIES_MINSIZEREL FLAC::FLAC)
set(flac_FLAC_FLAC++_SHARED_LINK_FLAGS_MINSIZEREL )
set(flac_FLAC_FLAC++_EXE_LINK_FLAGS_MINSIZEREL )
# COMPOUND VARIABLES
set(flac_FLAC_FLAC++_LINKER_FLAGS_MINSIZEREL
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${flac_FLAC_FLAC++_SHARED_LINK_FLAGS_MINSIZEREL}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${flac_FLAC_FLAC++_SHARED_LINK_FLAGS_MINSIZEREL}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${flac_FLAC_FLAC++_EXE_LINK_FLAGS_MINSIZEREL}>
)
set(flac_FLAC_FLAC++_COMPILE_OPTIONS_MINSIZEREL
    "$<$<COMPILE_LANGUAGE:CXX>:${flac_FLAC_FLAC++_COMPILE_OPTIONS_CXX_MINSIZEREL}>"
    "$<$<COMPILE_LANGUAGE:C>:${flac_FLAC_FLAC++_COMPILE_OPTIONS_C_MINSIZEREL}>")
########### COMPONENT FLAC::FLAC VARIABLES ############################################

set(flac_FLAC_FLAC_INCLUDE_DIRS_MINSIZEREL "${flac_PACKAGE_FOLDER_MINSIZEREL}/include")
set(flac_FLAC_FLAC_LIB_DIRS_MINSIZEREL "${flac_PACKAGE_FOLDER_MINSIZEREL}/lib")
set(flac_FLAC_FLAC_RES_DIRS_MINSIZEREL )
set(flac_FLAC_FLAC_DEFINITIONS_MINSIZEREL )
set(flac_FLAC_FLAC_OBJECTS_MINSIZEREL )
set(flac_FLAC_FLAC_COMPILE_DEFINITIONS_MINSIZEREL )
set(flac_FLAC_FLAC_COMPILE_OPTIONS_C_MINSIZEREL "")
set(flac_FLAC_FLAC_COMPILE_OPTIONS_CXX_MINSIZEREL "")
set(flac_FLAC_FLAC_LIBS_MINSIZEREL FLAC)
set(flac_FLAC_FLAC_SYSTEM_LIBS_MINSIZEREL )
set(flac_FLAC_FLAC_FRAMEWORK_DIRS_MINSIZEREL )
set(flac_FLAC_FLAC_FRAMEWORKS_MINSIZEREL )
set(flac_FLAC_FLAC_DEPENDENCIES_MINSIZEREL Ogg::ogg)
set(flac_FLAC_FLAC_SHARED_LINK_FLAGS_MINSIZEREL )
set(flac_FLAC_FLAC_EXE_LINK_FLAGS_MINSIZEREL )
# COMPOUND VARIABLES
set(flac_FLAC_FLAC_LINKER_FLAGS_MINSIZEREL
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${flac_FLAC_FLAC_SHARED_LINK_FLAGS_MINSIZEREL}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${flac_FLAC_FLAC_SHARED_LINK_FLAGS_MINSIZEREL}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${flac_FLAC_FLAC_EXE_LINK_FLAGS_MINSIZEREL}>
)
set(flac_FLAC_FLAC_COMPILE_OPTIONS_MINSIZEREL
    "$<$<COMPILE_LANGUAGE:CXX>:${flac_FLAC_FLAC_COMPILE_OPTIONS_CXX_MINSIZEREL}>"
    "$<$<COMPILE_LANGUAGE:C>:${flac_FLAC_FLAC_COMPILE_OPTIONS_C_MINSIZEREL}>")