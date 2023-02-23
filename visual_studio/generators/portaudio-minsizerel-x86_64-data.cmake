########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(portaudio_COMPONENT_NAMES "")
set(portaudio_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(portaudio_PACKAGE_FOLDER_MINSIZEREL "C:/Users/giaco/.conan/data/portaudio/19.7.0/_/_/package/f8004b13ba3d25eb6354835cd3e9101dc2e51cac")
set(portaudio_BUILD_MODULES_PATHS_MINSIZEREL )


set(portaudio_INCLUDE_DIRS_MINSIZEREL "${portaudio_PACKAGE_FOLDER_MINSIZEREL}/include")
set(portaudio_RES_DIRS_MINSIZEREL "${portaudio_PACKAGE_FOLDER_MINSIZEREL}/res")
set(portaudio_DEFINITIONS_MINSIZEREL )
set(portaudio_SHARED_LINK_FLAGS_MINSIZEREL )
set(portaudio_EXE_LINK_FLAGS_MINSIZEREL )
set(portaudio_OBJECTS_MINSIZEREL )
set(portaudio_COMPILE_DEFINITIONS_MINSIZEREL )
set(portaudio_COMPILE_OPTIONS_C_MINSIZEREL )
set(portaudio_COMPILE_OPTIONS_CXX_MINSIZEREL )
set(portaudio_LIB_DIRS_MINSIZEREL "${portaudio_PACKAGE_FOLDER_MINSIZEREL}/lib")
set(portaudio_LIBS_MINSIZEREL portaudio_x64)
set(portaudio_SYSTEM_LIBS_MINSIZEREL )
set(portaudio_FRAMEWORK_DIRS_MINSIZEREL "${portaudio_PACKAGE_FOLDER_MINSIZEREL}/Frameworks")
set(portaudio_FRAMEWORKS_MINSIZEREL )
set(portaudio_BUILD_DIRS_MINSIZEREL "${portaudio_PACKAGE_FOLDER_MINSIZEREL}/")

# COMPOUND VARIABLES
set(portaudio_COMPILE_OPTIONS_MINSIZEREL
    "$<$<COMPILE_LANGUAGE:CXX>:${portaudio_COMPILE_OPTIONS_CXX_MINSIZEREL}>"
    "$<$<COMPILE_LANGUAGE:C>:${portaudio_COMPILE_OPTIONS_C_MINSIZEREL}>")
set(portaudio_LINKER_FLAGS_MINSIZEREL
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${portaudio_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${portaudio_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${portaudio_EXE_LINK_FLAGS_MINSIZEREL}>")


set(portaudio_COMPONENTS_MINSIZEREL )