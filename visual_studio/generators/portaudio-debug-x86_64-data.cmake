########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(portaudio_COMPONENT_NAMES "")
set(portaudio_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(portaudio_PACKAGE_FOLDER_DEBUG "C:/Users/giaco/.conan/data/portaudio/19.7.0/_/_/package/9bf5a005c0dddcd2e0ae3def03324e272eaeae9a")
set(portaudio_BUILD_MODULES_PATHS_DEBUG )


set(portaudio_INCLUDE_DIRS_DEBUG "${portaudio_PACKAGE_FOLDER_DEBUG}/include")
set(portaudio_RES_DIRS_DEBUG "${portaudio_PACKAGE_FOLDER_DEBUG}/res")
set(portaudio_DEFINITIONS_DEBUG )
set(portaudio_SHARED_LINK_FLAGS_DEBUG )
set(portaudio_EXE_LINK_FLAGS_DEBUG )
set(portaudio_OBJECTS_DEBUG )
set(portaudio_COMPILE_DEFINITIONS_DEBUG )
set(portaudio_COMPILE_OPTIONS_C_DEBUG )
set(portaudio_COMPILE_OPTIONS_CXX_DEBUG )
set(portaudio_LIB_DIRS_DEBUG "${portaudio_PACKAGE_FOLDER_DEBUG}/lib")
set(portaudio_LIBS_DEBUG portaudio_x64)
set(portaudio_SYSTEM_LIBS_DEBUG )
set(portaudio_FRAMEWORK_DIRS_DEBUG "${portaudio_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(portaudio_FRAMEWORKS_DEBUG )
set(portaudio_BUILD_DIRS_DEBUG "${portaudio_PACKAGE_FOLDER_DEBUG}/")

# COMPOUND VARIABLES
set(portaudio_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${portaudio_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${portaudio_COMPILE_OPTIONS_C_DEBUG}>")
set(portaudio_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${portaudio_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${portaudio_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${portaudio_EXE_LINK_FLAGS_DEBUG}>")


set(portaudio_COMPONENTS_DEBUG )