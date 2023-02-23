########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND libjpeg-turbo_COMPONENT_NAMES JPEG::JPEG libjpeg-turbo::turbojpeg)
list(REMOVE_DUPLICATES libjpeg-turbo_COMPONENT_NAMES)
set(libjpeg-turbo_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(libjpeg-turbo_PACKAGE_FOLDER_DEBUG "C:/Users/giaco/.conan/data/libjpeg-turbo/2.0.5/_/_/package/2bd7d31bb0f41ea05f1be29f942766f578e1ebc0")
set(libjpeg-turbo_BUILD_MODULES_PATHS_DEBUG )


set(libjpeg-turbo_INCLUDE_DIRS_DEBUG "${libjpeg-turbo_PACKAGE_FOLDER_DEBUG}/include")
set(libjpeg-turbo_RES_DIRS_DEBUG )
set(libjpeg-turbo_DEFINITIONS_DEBUG )
set(libjpeg-turbo_SHARED_LINK_FLAGS_DEBUG )
set(libjpeg-turbo_EXE_LINK_FLAGS_DEBUG )
set(libjpeg-turbo_OBJECTS_DEBUG )
set(libjpeg-turbo_COMPILE_DEFINITIONS_DEBUG )
set(libjpeg-turbo_COMPILE_OPTIONS_C_DEBUG )
set(libjpeg-turbo_COMPILE_OPTIONS_CXX_DEBUG )
set(libjpeg-turbo_LIB_DIRS_DEBUG "${libjpeg-turbo_PACKAGE_FOLDER_DEBUG}/lib")
set(libjpeg-turbo_LIBS_DEBUG turbojpeg jpeg)
set(libjpeg-turbo_SYSTEM_LIBS_DEBUG )
set(libjpeg-turbo_FRAMEWORK_DIRS_DEBUG )
set(libjpeg-turbo_FRAMEWORKS_DEBUG )
set(libjpeg-turbo_BUILD_DIRS_DEBUG )

# COMPOUND VARIABLES
set(libjpeg-turbo_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${libjpeg-turbo_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${libjpeg-turbo_COMPILE_OPTIONS_C_DEBUG}>")
set(libjpeg-turbo_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libjpeg-turbo_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libjpeg-turbo_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libjpeg-turbo_EXE_LINK_FLAGS_DEBUG}>")


set(libjpeg-turbo_COMPONENTS_DEBUG JPEG::JPEG libjpeg-turbo::turbojpeg)
########### COMPONENT libjpeg-turbo::turbojpeg VARIABLES ############################################

set(libjpeg-turbo_libjpeg-turbo_turbojpeg_INCLUDE_DIRS_DEBUG "${libjpeg-turbo_PACKAGE_FOLDER_DEBUG}/include")
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_LIB_DIRS_DEBUG "${libjpeg-turbo_PACKAGE_FOLDER_DEBUG}/lib")
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_RES_DIRS_DEBUG )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_DEFINITIONS_DEBUG )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_OBJECTS_DEBUG )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_DEFINITIONS_DEBUG )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_C_DEBUG "")
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_CXX_DEBUG "")
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_LIBS_DEBUG turbojpeg)
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_SYSTEM_LIBS_DEBUG )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORK_DIRS_DEBUG )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORKS_DEBUG )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPENDENCIES_DEBUG )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_SHARED_LINK_FLAGS_DEBUG )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_EXE_LINK_FLAGS_DEBUG}>
)
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT JPEG::JPEG VARIABLES ############################################

set(libjpeg-turbo_JPEG_JPEG_INCLUDE_DIRS_DEBUG "${libjpeg-turbo_PACKAGE_FOLDER_DEBUG}/include")
set(libjpeg-turbo_JPEG_JPEG_LIB_DIRS_DEBUG "${libjpeg-turbo_PACKAGE_FOLDER_DEBUG}/lib")
set(libjpeg-turbo_JPEG_JPEG_RES_DIRS_DEBUG )
set(libjpeg-turbo_JPEG_JPEG_DEFINITIONS_DEBUG )
set(libjpeg-turbo_JPEG_JPEG_OBJECTS_DEBUG )
set(libjpeg-turbo_JPEG_JPEG_COMPILE_DEFINITIONS_DEBUG )
set(libjpeg-turbo_JPEG_JPEG_COMPILE_OPTIONS_C_DEBUG "")
set(libjpeg-turbo_JPEG_JPEG_COMPILE_OPTIONS_CXX_DEBUG "")
set(libjpeg-turbo_JPEG_JPEG_LIBS_DEBUG jpeg)
set(libjpeg-turbo_JPEG_JPEG_SYSTEM_LIBS_DEBUG )
set(libjpeg-turbo_JPEG_JPEG_FRAMEWORK_DIRS_DEBUG )
set(libjpeg-turbo_JPEG_JPEG_FRAMEWORKS_DEBUG )
set(libjpeg-turbo_JPEG_JPEG_DEPENDENCIES_DEBUG )
set(libjpeg-turbo_JPEG_JPEG_SHARED_LINK_FLAGS_DEBUG )
set(libjpeg-turbo_JPEG_JPEG_EXE_LINK_FLAGS_DEBUG )
# COMPOUND VARIABLES
set(libjpeg-turbo_JPEG_JPEG_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libjpeg-turbo_JPEG_JPEG_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libjpeg-turbo_JPEG_JPEG_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libjpeg-turbo_JPEG_JPEG_EXE_LINK_FLAGS_DEBUG}>
)
set(libjpeg-turbo_JPEG_JPEG_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${libjpeg-turbo_JPEG_JPEG_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${libjpeg-turbo_JPEG_JPEG_COMPILE_OPTIONS_C_DEBUG}>")