########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(portaudio_COMPONENT_NAMES "")
set(portaudio_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(portaudio_PACKAGE_FOLDER_RELEASE "C:/Users/giaco/.conan/data/portaudio/19.7.0/_/_/package/f8004b13ba3d25eb6354835cd3e9101dc2e51cac")
set(portaudio_BUILD_MODULES_PATHS_RELEASE )


set(portaudio_INCLUDE_DIRS_RELEASE "${portaudio_PACKAGE_FOLDER_RELEASE}/include")
set(portaudio_RES_DIRS_RELEASE "${portaudio_PACKAGE_FOLDER_RELEASE}/res")
set(portaudio_DEFINITIONS_RELEASE )
set(portaudio_SHARED_LINK_FLAGS_RELEASE )
set(portaudio_EXE_LINK_FLAGS_RELEASE )
set(portaudio_OBJECTS_RELEASE )
set(portaudio_COMPILE_DEFINITIONS_RELEASE )
set(portaudio_COMPILE_OPTIONS_C_RELEASE )
set(portaudio_COMPILE_OPTIONS_CXX_RELEASE )
set(portaudio_LIB_DIRS_RELEASE "${portaudio_PACKAGE_FOLDER_RELEASE}/lib")
set(portaudio_LIBS_RELEASE portaudio_x64)
set(portaudio_SYSTEM_LIBS_RELEASE )
set(portaudio_FRAMEWORK_DIRS_RELEASE "${portaudio_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(portaudio_FRAMEWORKS_RELEASE )
set(portaudio_BUILD_DIRS_RELEASE "${portaudio_PACKAGE_FOLDER_RELEASE}/")

# COMPOUND VARIABLES
set(portaudio_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${portaudio_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${portaudio_COMPILE_OPTIONS_C_RELEASE}>")
set(portaudio_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${portaudio_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${portaudio_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${portaudio_EXE_LINK_FLAGS_RELEASE}>")


set(portaudio_COMPONENTS_RELEASE )