########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(portmidi_COMPONENT_NAMES "")
set(portmidi_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(portmidi_PACKAGE_FOLDER_MINSIZEREL "C:/Users/giaco/.conan/data/portmidi/r234/_/_/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0")
set(portmidi_BUILD_MODULES_PATHS_MINSIZEREL )


set(portmidi_INCLUDE_DIRS_MINSIZEREL "${portmidi_PACKAGE_FOLDER_MINSIZEREL}/include")
set(portmidi_RES_DIRS_MINSIZEREL "${portmidi_PACKAGE_FOLDER_MINSIZEREL}/res")
set(portmidi_DEFINITIONS_MINSIZEREL )
set(portmidi_SHARED_LINK_FLAGS_MINSIZEREL )
set(portmidi_EXE_LINK_FLAGS_MINSIZEREL )
set(portmidi_OBJECTS_MINSIZEREL )
set(portmidi_COMPILE_DEFINITIONS_MINSIZEREL )
set(portmidi_COMPILE_OPTIONS_C_MINSIZEREL )
set(portmidi_COMPILE_OPTIONS_CXX_MINSIZEREL )
set(portmidi_LIB_DIRS_MINSIZEREL "${portmidi_PACKAGE_FOLDER_MINSIZEREL}/lib")
set(portmidi_LIBS_MINSIZEREL portmidi)
set(portmidi_SYSTEM_LIBS_MINSIZEREL )
set(portmidi_FRAMEWORK_DIRS_MINSIZEREL "${portmidi_PACKAGE_FOLDER_MINSIZEREL}/Frameworks")
set(portmidi_FRAMEWORKS_MINSIZEREL )
set(portmidi_BUILD_DIRS_MINSIZEREL "${portmidi_PACKAGE_FOLDER_MINSIZEREL}/")

# COMPOUND VARIABLES
set(portmidi_COMPILE_OPTIONS_MINSIZEREL
    "$<$<COMPILE_LANGUAGE:CXX>:${portmidi_COMPILE_OPTIONS_CXX_MINSIZEREL}>"
    "$<$<COMPILE_LANGUAGE:C>:${portmidi_COMPILE_OPTIONS_C_MINSIZEREL}>")
set(portmidi_LINKER_FLAGS_MINSIZEREL
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${portmidi_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${portmidi_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${portmidi_EXE_LINK_FLAGS_MINSIZEREL}>")


set(portmidi_COMPONENTS_MINSIZEREL )