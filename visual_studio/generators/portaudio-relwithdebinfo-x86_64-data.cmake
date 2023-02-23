########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(portaudio_COMPONENT_NAMES "")
set(portaudio_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(portaudio_PACKAGE_FOLDER_RELWITHDEBINFO "C:/Users/giaco/.conan/data/portaudio/19.7.0/_/_/package/f8004b13ba3d25eb6354835cd3e9101dc2e51cac")
set(portaudio_BUILD_MODULES_PATHS_RELWITHDEBINFO )


set(portaudio_INCLUDE_DIRS_RELWITHDEBINFO "${portaudio_PACKAGE_FOLDER_RELWITHDEBINFO}/include")
set(portaudio_RES_DIRS_RELWITHDEBINFO "${portaudio_PACKAGE_FOLDER_RELWITHDEBINFO}/res")
set(portaudio_DEFINITIONS_RELWITHDEBINFO )
set(portaudio_SHARED_LINK_FLAGS_RELWITHDEBINFO )
set(portaudio_EXE_LINK_FLAGS_RELWITHDEBINFO )
set(portaudio_OBJECTS_RELWITHDEBINFO )
set(portaudio_COMPILE_DEFINITIONS_RELWITHDEBINFO )
set(portaudio_COMPILE_OPTIONS_C_RELWITHDEBINFO )
set(portaudio_COMPILE_OPTIONS_CXX_RELWITHDEBINFO )
set(portaudio_LIB_DIRS_RELWITHDEBINFO "${portaudio_PACKAGE_FOLDER_RELWITHDEBINFO}/lib")
set(portaudio_LIBS_RELWITHDEBINFO portaudio_x64)
set(portaudio_SYSTEM_LIBS_RELWITHDEBINFO )
set(portaudio_FRAMEWORK_DIRS_RELWITHDEBINFO "${portaudio_PACKAGE_FOLDER_RELWITHDEBINFO}/Frameworks")
set(portaudio_FRAMEWORKS_RELWITHDEBINFO )
set(portaudio_BUILD_DIRS_RELWITHDEBINFO "${portaudio_PACKAGE_FOLDER_RELWITHDEBINFO}/")

# COMPOUND VARIABLES
set(portaudio_COMPILE_OPTIONS_RELWITHDEBINFO
    "$<$<COMPILE_LANGUAGE:CXX>:${portaudio_COMPILE_OPTIONS_CXX_RELWITHDEBINFO}>"
    "$<$<COMPILE_LANGUAGE:C>:${portaudio_COMPILE_OPTIONS_C_RELWITHDEBINFO}>")
set(portaudio_LINKER_FLAGS_RELWITHDEBINFO
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${portaudio_SHARED_LINK_FLAGS_RELWITHDEBINFO}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${portaudio_SHARED_LINK_FLAGS_RELWITHDEBINFO}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${portaudio_EXE_LINK_FLAGS_RELWITHDEBINFO}>")


set(portaudio_COMPONENTS_RELWITHDEBINFO )