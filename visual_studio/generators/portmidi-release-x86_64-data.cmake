########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(portmidi_COMPONENT_NAMES "")
set(portmidi_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(portmidi_PACKAGE_FOLDER_RELEASE "C:/Users/giaco/.conan/data/portmidi/r234/_/_/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0")
set(portmidi_BUILD_MODULES_PATHS_RELEASE )


set(portmidi_INCLUDE_DIRS_RELEASE "${portmidi_PACKAGE_FOLDER_RELEASE}/include")
set(portmidi_RES_DIRS_RELEASE "${portmidi_PACKAGE_FOLDER_RELEASE}/res")
set(portmidi_DEFINITIONS_RELEASE )
set(portmidi_SHARED_LINK_FLAGS_RELEASE )
set(portmidi_EXE_LINK_FLAGS_RELEASE )
set(portmidi_OBJECTS_RELEASE )
set(portmidi_COMPILE_DEFINITIONS_RELEASE )
set(portmidi_COMPILE_OPTIONS_C_RELEASE )
set(portmidi_COMPILE_OPTIONS_CXX_RELEASE )
set(portmidi_LIB_DIRS_RELEASE "${portmidi_PACKAGE_FOLDER_RELEASE}/lib")
set(portmidi_LIBS_RELEASE portmidi)
set(portmidi_SYSTEM_LIBS_RELEASE )
set(portmidi_FRAMEWORK_DIRS_RELEASE "${portmidi_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(portmidi_FRAMEWORKS_RELEASE )
set(portmidi_BUILD_DIRS_RELEASE "${portmidi_PACKAGE_FOLDER_RELEASE}/")

# COMPOUND VARIABLES
set(portmidi_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${portmidi_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${portmidi_COMPILE_OPTIONS_C_RELEASE}>")
set(portmidi_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${portmidi_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${portmidi_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${portmidi_EXE_LINK_FLAGS_RELEASE}>")


set(portmidi_COMPONENTS_RELEASE )