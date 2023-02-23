########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(portmidi_COMPONENT_NAMES "")
set(portmidi_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(portmidi_PACKAGE_FOLDER_DEBUG "C:/Users/giaco/.conan/data/portmidi/r234/_/_/package/bf9ec17af5844bd8d3cc139070000dc26fc5f076")
set(portmidi_BUILD_MODULES_PATHS_DEBUG )


set(portmidi_INCLUDE_DIRS_DEBUG "${portmidi_PACKAGE_FOLDER_DEBUG}/include")
set(portmidi_RES_DIRS_DEBUG "${portmidi_PACKAGE_FOLDER_DEBUG}/res")
set(portmidi_DEFINITIONS_DEBUG )
set(portmidi_SHARED_LINK_FLAGS_DEBUG )
set(portmidi_EXE_LINK_FLAGS_DEBUG )
set(portmidi_OBJECTS_DEBUG )
set(portmidi_COMPILE_DEFINITIONS_DEBUG )
set(portmidi_COMPILE_OPTIONS_C_DEBUG )
set(portmidi_COMPILE_OPTIONS_CXX_DEBUG )
set(portmidi_LIB_DIRS_DEBUG "${portmidi_PACKAGE_FOLDER_DEBUG}/lib")
set(portmidi_LIBS_DEBUG portmidi)
set(portmidi_SYSTEM_LIBS_DEBUG )
set(portmidi_FRAMEWORK_DIRS_DEBUG "${portmidi_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(portmidi_FRAMEWORKS_DEBUG )
set(portmidi_BUILD_DIRS_DEBUG "${portmidi_PACKAGE_FOLDER_DEBUG}/")

# COMPOUND VARIABLES
set(portmidi_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${portmidi_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${portmidi_COMPILE_OPTIONS_C_DEBUG}>")
set(portmidi_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${portmidi_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${portmidi_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${portmidi_EXE_LINK_FLAGS_DEBUG}>")


set(portmidi_COMPONENTS_DEBUG )