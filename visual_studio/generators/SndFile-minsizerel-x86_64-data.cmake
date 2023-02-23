########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND libsndfile_COMPONENT_NAMES SndFile::sndfile)
list(REMOVE_DUPLICATES libsndfile_COMPONENT_NAMES)
list(APPEND libsndfile_FIND_DEPENDENCY_NAMES Ogg Vorbis Vorbis flac Opus)
list(REMOVE_DUPLICATES libsndfile_FIND_DEPENDENCY_NAMES)
set(Ogg_FIND_MODE "NO_MODULE")
set(Vorbis_FIND_MODE "NO_MODULE")
set(flac_FIND_MODE "NO_MODULE")
set(Opus_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(libsndfile_PACKAGE_FOLDER_MINSIZEREL "C:/Users/giaco/.conan/data/libsndfile/1.0.31/_/_/package/899d2c53f1b9e4a7deb461e3cf1716f2d4fd697d")
set(libsndfile_BUILD_MODULES_PATHS_MINSIZEREL )


set(libsndfile_INCLUDE_DIRS_MINSIZEREL "${libsndfile_PACKAGE_FOLDER_MINSIZEREL}/include")
set(libsndfile_RES_DIRS_MINSIZEREL )
set(libsndfile_DEFINITIONS_MINSIZEREL )
set(libsndfile_SHARED_LINK_FLAGS_MINSIZEREL )
set(libsndfile_EXE_LINK_FLAGS_MINSIZEREL )
set(libsndfile_OBJECTS_MINSIZEREL )
set(libsndfile_COMPILE_DEFINITIONS_MINSIZEREL )
set(libsndfile_COMPILE_OPTIONS_C_MINSIZEREL )
set(libsndfile_COMPILE_OPTIONS_CXX_MINSIZEREL )
set(libsndfile_LIB_DIRS_MINSIZEREL "${libsndfile_PACKAGE_FOLDER_MINSIZEREL}/lib")
set(libsndfile_LIBS_MINSIZEREL sndfile)
set(libsndfile_SYSTEM_LIBS_MINSIZEREL )
set(libsndfile_FRAMEWORK_DIRS_MINSIZEREL )
set(libsndfile_FRAMEWORKS_MINSIZEREL )
set(libsndfile_BUILD_DIRS_MINSIZEREL )

# COMPOUND VARIABLES
set(libsndfile_COMPILE_OPTIONS_MINSIZEREL
    "$<$<COMPILE_LANGUAGE:CXX>:${libsndfile_COMPILE_OPTIONS_CXX_MINSIZEREL}>"
    "$<$<COMPILE_LANGUAGE:C>:${libsndfile_COMPILE_OPTIONS_C_MINSIZEREL}>")
set(libsndfile_LINKER_FLAGS_MINSIZEREL
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libsndfile_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libsndfile_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libsndfile_EXE_LINK_FLAGS_MINSIZEREL}>")


set(libsndfile_COMPONENTS_MINSIZEREL SndFile::sndfile)
########### COMPONENT SndFile::sndfile VARIABLES ############################################

set(libsndfile_SndFile_sndfile_INCLUDE_DIRS_MINSIZEREL "${libsndfile_PACKAGE_FOLDER_MINSIZEREL}/include")
set(libsndfile_SndFile_sndfile_LIB_DIRS_MINSIZEREL "${libsndfile_PACKAGE_FOLDER_MINSIZEREL}/lib")
set(libsndfile_SndFile_sndfile_RES_DIRS_MINSIZEREL )
set(libsndfile_SndFile_sndfile_DEFINITIONS_MINSIZEREL )
set(libsndfile_SndFile_sndfile_OBJECTS_MINSIZEREL )
set(libsndfile_SndFile_sndfile_COMPILE_DEFINITIONS_MINSIZEREL )
set(libsndfile_SndFile_sndfile_COMPILE_OPTIONS_C_MINSIZEREL "")
set(libsndfile_SndFile_sndfile_COMPILE_OPTIONS_CXX_MINSIZEREL "")
set(libsndfile_SndFile_sndfile_LIBS_MINSIZEREL sndfile)
set(libsndfile_SndFile_sndfile_SYSTEM_LIBS_MINSIZEREL )
set(libsndfile_SndFile_sndfile_FRAMEWORK_DIRS_MINSIZEREL )
set(libsndfile_SndFile_sndfile_FRAMEWORKS_MINSIZEREL )
set(libsndfile_SndFile_sndfile_DEPENDENCIES_MINSIZEREL Ogg::ogg Vorbis::vorbis Vorbis::vorbisenc flac::flac Opus::opus)
set(libsndfile_SndFile_sndfile_SHARED_LINK_FLAGS_MINSIZEREL )
set(libsndfile_SndFile_sndfile_EXE_LINK_FLAGS_MINSIZEREL )
# COMPOUND VARIABLES
set(libsndfile_SndFile_sndfile_LINKER_FLAGS_MINSIZEREL
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libsndfile_SndFile_sndfile_SHARED_LINK_FLAGS_MINSIZEREL}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libsndfile_SndFile_sndfile_SHARED_LINK_FLAGS_MINSIZEREL}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libsndfile_SndFile_sndfile_EXE_LINK_FLAGS_MINSIZEREL}>
)
set(libsndfile_SndFile_sndfile_COMPILE_OPTIONS_MINSIZEREL
    "$<$<COMPILE_LANGUAGE:CXX>:${libsndfile_SndFile_sndfile_COMPILE_OPTIONS_CXX_MINSIZEREL}>"
    "$<$<COMPILE_LANGUAGE:C>:${libsndfile_SndFile_sndfile_COMPILE_OPTIONS_C_MINSIZEREL}>")