########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND libjpeg-turbo_COMPONENT_NAMES JPEG::JPEG libjpeg-turbo::turbojpeg)
list(REMOVE_DUPLICATES libjpeg-turbo_COMPONENT_NAMES)
set(libjpeg-turbo_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(libjpeg-turbo_PACKAGE_FOLDER_RELEASE "C:/Users/giaco/.conan/data/libjpeg-turbo/2.0.5/_/_/package/a4d7b7afca088fef1bf9c91917f432786418abe9")
set(libjpeg-turbo_BUILD_MODULES_PATHS_RELEASE )


set(libjpeg-turbo_INCLUDE_DIRS_RELEASE "${libjpeg-turbo_PACKAGE_FOLDER_RELEASE}/include")
set(libjpeg-turbo_RES_DIRS_RELEASE )
set(libjpeg-turbo_DEFINITIONS_RELEASE )
set(libjpeg-turbo_SHARED_LINK_FLAGS_RELEASE )
set(libjpeg-turbo_EXE_LINK_FLAGS_RELEASE )
set(libjpeg-turbo_OBJECTS_RELEASE )
set(libjpeg-turbo_COMPILE_DEFINITIONS_RELEASE )
set(libjpeg-turbo_COMPILE_OPTIONS_C_RELEASE )
set(libjpeg-turbo_COMPILE_OPTIONS_CXX_RELEASE )
set(libjpeg-turbo_LIB_DIRS_RELEASE "${libjpeg-turbo_PACKAGE_FOLDER_RELEASE}/lib")
set(libjpeg-turbo_LIBS_RELEASE turbojpeg jpeg)
set(libjpeg-turbo_SYSTEM_LIBS_RELEASE )
set(libjpeg-turbo_FRAMEWORK_DIRS_RELEASE )
set(libjpeg-turbo_FRAMEWORKS_RELEASE )
set(libjpeg-turbo_BUILD_DIRS_RELEASE )

# COMPOUND VARIABLES
set(libjpeg-turbo_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${libjpeg-turbo_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${libjpeg-turbo_COMPILE_OPTIONS_C_RELEASE}>")
set(libjpeg-turbo_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libjpeg-turbo_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libjpeg-turbo_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libjpeg-turbo_EXE_LINK_FLAGS_RELEASE}>")


set(libjpeg-turbo_COMPONENTS_RELEASE JPEG::JPEG libjpeg-turbo::turbojpeg)
########### COMPONENT libjpeg-turbo::turbojpeg VARIABLES ############################################

set(libjpeg-turbo_libjpeg-turbo_turbojpeg_INCLUDE_DIRS_RELEASE "${libjpeg-turbo_PACKAGE_FOLDER_RELEASE}/include")
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_LIB_DIRS_RELEASE "${libjpeg-turbo_PACKAGE_FOLDER_RELEASE}/lib")
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_RES_DIRS_RELEASE )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_DEFINITIONS_RELEASE )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_OBJECTS_RELEASE )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_DEFINITIONS_RELEASE )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_C_RELEASE "")
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_CXX_RELEASE "")
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_LIBS_RELEASE turbojpeg)
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_SYSTEM_LIBS_RELEASE )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORK_DIRS_RELEASE )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORKS_RELEASE )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPENDENCIES_RELEASE )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_SHARED_LINK_FLAGS_RELEASE )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_EXE_LINK_FLAGS_RELEASE )
# COMPOUND VARIABLES
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_EXE_LINK_FLAGS_RELEASE}>
)
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT JPEG::JPEG VARIABLES ############################################

set(libjpeg-turbo_JPEG_JPEG_INCLUDE_DIRS_RELEASE "${libjpeg-turbo_PACKAGE_FOLDER_RELEASE}/include")
set(libjpeg-turbo_JPEG_JPEG_LIB_DIRS_RELEASE "${libjpeg-turbo_PACKAGE_FOLDER_RELEASE}/lib")
set(libjpeg-turbo_JPEG_JPEG_RES_DIRS_RELEASE )
set(libjpeg-turbo_JPEG_JPEG_DEFINITIONS_RELEASE )
set(libjpeg-turbo_JPEG_JPEG_OBJECTS_RELEASE )
set(libjpeg-turbo_JPEG_JPEG_COMPILE_DEFINITIONS_RELEASE )
set(libjpeg-turbo_JPEG_JPEG_COMPILE_OPTIONS_C_RELEASE "")
set(libjpeg-turbo_JPEG_JPEG_COMPILE_OPTIONS_CXX_RELEASE "")
set(libjpeg-turbo_JPEG_JPEG_LIBS_RELEASE jpeg)
set(libjpeg-turbo_JPEG_JPEG_SYSTEM_LIBS_RELEASE )
set(libjpeg-turbo_JPEG_JPEG_FRAMEWORK_DIRS_RELEASE )
set(libjpeg-turbo_JPEG_JPEG_FRAMEWORKS_RELEASE )
set(libjpeg-turbo_JPEG_JPEG_DEPENDENCIES_RELEASE )
set(libjpeg-turbo_JPEG_JPEG_SHARED_LINK_FLAGS_RELEASE )
set(libjpeg-turbo_JPEG_JPEG_EXE_LINK_FLAGS_RELEASE )
# COMPOUND VARIABLES
set(libjpeg-turbo_JPEG_JPEG_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libjpeg-turbo_JPEG_JPEG_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libjpeg-turbo_JPEG_JPEG_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libjpeg-turbo_JPEG_JPEG_EXE_LINK_FLAGS_RELEASE}>
)
set(libjpeg-turbo_JPEG_JPEG_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${libjpeg-turbo_JPEG_JPEG_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${libjpeg-turbo_JPEG_JPEG_COMPILE_OPTIONS_C_RELEASE}>")