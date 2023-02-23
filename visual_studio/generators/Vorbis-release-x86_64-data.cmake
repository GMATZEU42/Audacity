########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND vorbis_COMPONENT_NAMES Vorbis::vorbis Vorbis::vorbisenc Vorbis::vorbisfile vorbis::vorbisenc-alias vorbis::vorbisfile-alias)
list(REMOVE_DUPLICATES vorbis_COMPONENT_NAMES)
list(APPEND vorbis_FIND_DEPENDENCY_NAMES Ogg)
list(REMOVE_DUPLICATES vorbis_FIND_DEPENDENCY_NAMES)
set(Ogg_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(vorbis_PACKAGE_FOLDER_RELEASE "C:/Users/giaco/.conan/data/vorbis/1.3.7/_/_/package/3b26581a680ab99eb0ef725aa935a0289708df91")
set(vorbis_BUILD_MODULES_PATHS_RELEASE )


set(vorbis_INCLUDE_DIRS_RELEASE "${vorbis_PACKAGE_FOLDER_RELEASE}/include")
set(vorbis_RES_DIRS_RELEASE )
set(vorbis_DEFINITIONS_RELEASE )
set(vorbis_SHARED_LINK_FLAGS_RELEASE )
set(vorbis_EXE_LINK_FLAGS_RELEASE )
set(vorbis_OBJECTS_RELEASE )
set(vorbis_COMPILE_DEFINITIONS_RELEASE )
set(vorbis_COMPILE_OPTIONS_C_RELEASE )
set(vorbis_COMPILE_OPTIONS_CXX_RELEASE )
set(vorbis_LIB_DIRS_RELEASE "${vorbis_PACKAGE_FOLDER_RELEASE}/lib")
set(vorbis_LIBS_RELEASE vorbisfile vorbisenc vorbis)
set(vorbis_SYSTEM_LIBS_RELEASE )
set(vorbis_FRAMEWORK_DIRS_RELEASE )
set(vorbis_FRAMEWORKS_RELEASE )
set(vorbis_BUILD_DIRS_RELEASE )

# COMPOUND VARIABLES
set(vorbis_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${vorbis_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${vorbis_COMPILE_OPTIONS_C_RELEASE}>")
set(vorbis_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vorbis_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vorbis_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vorbis_EXE_LINK_FLAGS_RELEASE}>")


set(vorbis_COMPONENTS_RELEASE Vorbis::vorbis Vorbis::vorbisenc Vorbis::vorbisfile vorbis::vorbisenc-alias vorbis::vorbisfile-alias)
########### COMPONENT vorbis::vorbisfile-alias VARIABLES ############################################

set(vorbis_vorbis_vorbisfile-alias_INCLUDE_DIRS_RELEASE "${vorbis_PACKAGE_FOLDER_RELEASE}/include")
set(vorbis_vorbis_vorbisfile-alias_LIB_DIRS_RELEASE "${vorbis_PACKAGE_FOLDER_RELEASE}/lib")
set(vorbis_vorbis_vorbisfile-alias_RES_DIRS_RELEASE )
set(vorbis_vorbis_vorbisfile-alias_DEFINITIONS_RELEASE )
set(vorbis_vorbis_vorbisfile-alias_OBJECTS_RELEASE )
set(vorbis_vorbis_vorbisfile-alias_COMPILE_DEFINITIONS_RELEASE )
set(vorbis_vorbis_vorbisfile-alias_COMPILE_OPTIONS_C_RELEASE "")
set(vorbis_vorbis_vorbisfile-alias_COMPILE_OPTIONS_CXX_RELEASE "")
set(vorbis_vorbis_vorbisfile-alias_LIBS_RELEASE )
set(vorbis_vorbis_vorbisfile-alias_SYSTEM_LIBS_RELEASE )
set(vorbis_vorbis_vorbisfile-alias_FRAMEWORK_DIRS_RELEASE )
set(vorbis_vorbis_vorbisfile-alias_FRAMEWORKS_RELEASE )
set(vorbis_vorbis_vorbisfile-alias_DEPENDENCIES_RELEASE Vorbis::vorbisfile)
set(vorbis_vorbis_vorbisfile-alias_SHARED_LINK_FLAGS_RELEASE )
set(vorbis_vorbis_vorbisfile-alias_EXE_LINK_FLAGS_RELEASE )
# COMPOUND VARIABLES
set(vorbis_vorbis_vorbisfile-alias_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vorbis_vorbis_vorbisfile-alias_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vorbis_vorbis_vorbisfile-alias_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vorbis_vorbis_vorbisfile-alias_EXE_LINK_FLAGS_RELEASE}>
)
set(vorbis_vorbis_vorbisfile-alias_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${vorbis_vorbis_vorbisfile-alias_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${vorbis_vorbis_vorbisfile-alias_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT vorbis::vorbisenc-alias VARIABLES ############################################

set(vorbis_vorbis_vorbisenc-alias_INCLUDE_DIRS_RELEASE "${vorbis_PACKAGE_FOLDER_RELEASE}/include")
set(vorbis_vorbis_vorbisenc-alias_LIB_DIRS_RELEASE "${vorbis_PACKAGE_FOLDER_RELEASE}/lib")
set(vorbis_vorbis_vorbisenc-alias_RES_DIRS_RELEASE )
set(vorbis_vorbis_vorbisenc-alias_DEFINITIONS_RELEASE )
set(vorbis_vorbis_vorbisenc-alias_OBJECTS_RELEASE )
set(vorbis_vorbis_vorbisenc-alias_COMPILE_DEFINITIONS_RELEASE )
set(vorbis_vorbis_vorbisenc-alias_COMPILE_OPTIONS_C_RELEASE "")
set(vorbis_vorbis_vorbisenc-alias_COMPILE_OPTIONS_CXX_RELEASE "")
set(vorbis_vorbis_vorbisenc-alias_LIBS_RELEASE )
set(vorbis_vorbis_vorbisenc-alias_SYSTEM_LIBS_RELEASE )
set(vorbis_vorbis_vorbisenc-alias_FRAMEWORK_DIRS_RELEASE )
set(vorbis_vorbis_vorbisenc-alias_FRAMEWORKS_RELEASE )
set(vorbis_vorbis_vorbisenc-alias_DEPENDENCIES_RELEASE Vorbis::vorbisenc)
set(vorbis_vorbis_vorbisenc-alias_SHARED_LINK_FLAGS_RELEASE )
set(vorbis_vorbis_vorbisenc-alias_EXE_LINK_FLAGS_RELEASE )
# COMPOUND VARIABLES
set(vorbis_vorbis_vorbisenc-alias_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vorbis_vorbis_vorbisenc-alias_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vorbis_vorbis_vorbisenc-alias_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vorbis_vorbis_vorbisenc-alias_EXE_LINK_FLAGS_RELEASE}>
)
set(vorbis_vorbis_vorbisenc-alias_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${vorbis_vorbis_vorbisenc-alias_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${vorbis_vorbis_vorbisenc-alias_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Vorbis::vorbisfile VARIABLES ############################################

set(vorbis_Vorbis_vorbisfile_INCLUDE_DIRS_RELEASE "${vorbis_PACKAGE_FOLDER_RELEASE}/include")
set(vorbis_Vorbis_vorbisfile_LIB_DIRS_RELEASE "${vorbis_PACKAGE_FOLDER_RELEASE}/lib")
set(vorbis_Vorbis_vorbisfile_RES_DIRS_RELEASE )
set(vorbis_Vorbis_vorbisfile_DEFINITIONS_RELEASE )
set(vorbis_Vorbis_vorbisfile_OBJECTS_RELEASE )
set(vorbis_Vorbis_vorbisfile_COMPILE_DEFINITIONS_RELEASE )
set(vorbis_Vorbis_vorbisfile_COMPILE_OPTIONS_C_RELEASE "")
set(vorbis_Vorbis_vorbisfile_COMPILE_OPTIONS_CXX_RELEASE "")
set(vorbis_Vorbis_vorbisfile_LIBS_RELEASE vorbisfile)
set(vorbis_Vorbis_vorbisfile_SYSTEM_LIBS_RELEASE )
set(vorbis_Vorbis_vorbisfile_FRAMEWORK_DIRS_RELEASE )
set(vorbis_Vorbis_vorbisfile_FRAMEWORKS_RELEASE )
set(vorbis_Vorbis_vorbisfile_DEPENDENCIES_RELEASE Vorbis::vorbis)
set(vorbis_Vorbis_vorbisfile_SHARED_LINK_FLAGS_RELEASE )
set(vorbis_Vorbis_vorbisfile_EXE_LINK_FLAGS_RELEASE )
# COMPOUND VARIABLES
set(vorbis_Vorbis_vorbisfile_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vorbis_Vorbis_vorbisfile_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vorbis_Vorbis_vorbisfile_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vorbis_Vorbis_vorbisfile_EXE_LINK_FLAGS_RELEASE}>
)
set(vorbis_Vorbis_vorbisfile_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${vorbis_Vorbis_vorbisfile_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${vorbis_Vorbis_vorbisfile_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Vorbis::vorbisenc VARIABLES ############################################

set(vorbis_Vorbis_vorbisenc_INCLUDE_DIRS_RELEASE "${vorbis_PACKAGE_FOLDER_RELEASE}/include")
set(vorbis_Vorbis_vorbisenc_LIB_DIRS_RELEASE "${vorbis_PACKAGE_FOLDER_RELEASE}/lib")
set(vorbis_Vorbis_vorbisenc_RES_DIRS_RELEASE )
set(vorbis_Vorbis_vorbisenc_DEFINITIONS_RELEASE )
set(vorbis_Vorbis_vorbisenc_OBJECTS_RELEASE )
set(vorbis_Vorbis_vorbisenc_COMPILE_DEFINITIONS_RELEASE )
set(vorbis_Vorbis_vorbisenc_COMPILE_OPTIONS_C_RELEASE "")
set(vorbis_Vorbis_vorbisenc_COMPILE_OPTIONS_CXX_RELEASE "")
set(vorbis_Vorbis_vorbisenc_LIBS_RELEASE vorbisenc)
set(vorbis_Vorbis_vorbisenc_SYSTEM_LIBS_RELEASE )
set(vorbis_Vorbis_vorbisenc_FRAMEWORK_DIRS_RELEASE )
set(vorbis_Vorbis_vorbisenc_FRAMEWORKS_RELEASE )
set(vorbis_Vorbis_vorbisenc_DEPENDENCIES_RELEASE Vorbis::vorbis)
set(vorbis_Vorbis_vorbisenc_SHARED_LINK_FLAGS_RELEASE )
set(vorbis_Vorbis_vorbisenc_EXE_LINK_FLAGS_RELEASE )
# COMPOUND VARIABLES
set(vorbis_Vorbis_vorbisenc_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vorbis_Vorbis_vorbisenc_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vorbis_Vorbis_vorbisenc_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vorbis_Vorbis_vorbisenc_EXE_LINK_FLAGS_RELEASE}>
)
set(vorbis_Vorbis_vorbisenc_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${vorbis_Vorbis_vorbisenc_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${vorbis_Vorbis_vorbisenc_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT Vorbis::vorbis VARIABLES ############################################

set(vorbis_Vorbis_vorbis_INCLUDE_DIRS_RELEASE "${vorbis_PACKAGE_FOLDER_RELEASE}/include")
set(vorbis_Vorbis_vorbis_LIB_DIRS_RELEASE "${vorbis_PACKAGE_FOLDER_RELEASE}/lib")
set(vorbis_Vorbis_vorbis_RES_DIRS_RELEASE )
set(vorbis_Vorbis_vorbis_DEFINITIONS_RELEASE )
set(vorbis_Vorbis_vorbis_OBJECTS_RELEASE )
set(vorbis_Vorbis_vorbis_COMPILE_DEFINITIONS_RELEASE )
set(vorbis_Vorbis_vorbis_COMPILE_OPTIONS_C_RELEASE "")
set(vorbis_Vorbis_vorbis_COMPILE_OPTIONS_CXX_RELEASE "")
set(vorbis_Vorbis_vorbis_LIBS_RELEASE vorbis)
set(vorbis_Vorbis_vorbis_SYSTEM_LIBS_RELEASE )
set(vorbis_Vorbis_vorbis_FRAMEWORK_DIRS_RELEASE )
set(vorbis_Vorbis_vorbis_FRAMEWORKS_RELEASE )
set(vorbis_Vorbis_vorbis_DEPENDENCIES_RELEASE Ogg::ogg)
set(vorbis_Vorbis_vorbis_SHARED_LINK_FLAGS_RELEASE )
set(vorbis_Vorbis_vorbis_EXE_LINK_FLAGS_RELEASE )
# COMPOUND VARIABLES
set(vorbis_Vorbis_vorbis_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vorbis_Vorbis_vorbis_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vorbis_Vorbis_vorbis_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vorbis_Vorbis_vorbis_EXE_LINK_FLAGS_RELEASE}>
)
set(vorbis_Vorbis_vorbis_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${vorbis_Vorbis_vorbis_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${vorbis_Vorbis_vorbis_COMPILE_OPTIONS_C_RELEASE}>")