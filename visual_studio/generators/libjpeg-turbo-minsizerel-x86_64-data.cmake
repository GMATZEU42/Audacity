########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND libjpeg-turbo_COMPONENT_NAMES libjpeg-turbo::jpeg libjpeg-turbo::turbojpeg)
list(REMOVE_DUPLICATES libjpeg-turbo_COMPONENT_NAMES)
set(libjpeg-turbo_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(libjpeg-turbo_PACKAGE_FOLDER_MINSIZEREL "C:/Users/giaco/.conan/data/libjpeg-turbo/2.0.5/_/_/package/a4d7b7afca088fef1bf9c91917f432786418abe9")
set(libjpeg-turbo_BUILD_MODULES_PATHS_MINSIZEREL )


set(libjpeg-turbo_INCLUDE_DIRS_MINSIZEREL "${libjpeg-turbo_PACKAGE_FOLDER_MINSIZEREL}/include")
set(libjpeg-turbo_RES_DIRS_MINSIZEREL )
set(libjpeg-turbo_DEFINITIONS_MINSIZEREL )
set(libjpeg-turbo_SHARED_LINK_FLAGS_MINSIZEREL )
set(libjpeg-turbo_EXE_LINK_FLAGS_MINSIZEREL )
set(libjpeg-turbo_OBJECTS_MINSIZEREL )
set(libjpeg-turbo_COMPILE_DEFINITIONS_MINSIZEREL )
set(libjpeg-turbo_COMPILE_OPTIONS_C_MINSIZEREL )
set(libjpeg-turbo_COMPILE_OPTIONS_CXX_MINSIZEREL )
set(libjpeg-turbo_LIB_DIRS_MINSIZEREL "${libjpeg-turbo_PACKAGE_FOLDER_MINSIZEREL}/lib")
set(libjpeg-turbo_LIBS_MINSIZEREL turbojpeg jpeg)
set(libjpeg-turbo_SYSTEM_LIBS_MINSIZEREL )
set(libjpeg-turbo_FRAMEWORK_DIRS_MINSIZEREL )
set(libjpeg-turbo_FRAMEWORKS_MINSIZEREL )
set(libjpeg-turbo_BUILD_DIRS_MINSIZEREL )

# COMPOUND VARIABLES
set(libjpeg-turbo_COMPILE_OPTIONS_MINSIZEREL
    "$<$<COMPILE_LANGUAGE:CXX>:${libjpeg-turbo_COMPILE_OPTIONS_CXX_MINSIZEREL}>"
    "$<$<COMPILE_LANGUAGE:C>:${libjpeg-turbo_COMPILE_OPTIONS_C_MINSIZEREL}>")
set(libjpeg-turbo_LINKER_FLAGS_MINSIZEREL
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libjpeg-turbo_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libjpeg-turbo_SHARED_LINK_FLAGS_MINSIZEREL}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libjpeg-turbo_EXE_LINK_FLAGS_MINSIZEREL}>")


set(libjpeg-turbo_COMPONENTS_MINSIZEREL libjpeg-turbo::jpeg libjpeg-turbo::turbojpeg)
########### COMPONENT libjpeg-turbo::turbojpeg VARIABLES ############################################

set(libjpeg-turbo_libjpeg-turbo_turbojpeg_INCLUDE_DIRS_MINSIZEREL "${libjpeg-turbo_PACKAGE_FOLDER_MINSIZEREL}/include")
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_LIB_DIRS_MINSIZEREL "${libjpeg-turbo_PACKAGE_FOLDER_MINSIZEREL}/lib")
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_RES_DIRS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_DEFINITIONS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_OBJECTS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_DEFINITIONS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_C_MINSIZEREL "")
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_CXX_MINSIZEREL "")
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_LIBS_MINSIZEREL turbojpeg)
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_SYSTEM_LIBS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORK_DIRS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_FRAMEWORKS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_DEPENDENCIES_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_SHARED_LINK_FLAGS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_EXE_LINK_FLAGS_MINSIZEREL )
# COMPOUND VARIABLES
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_LINKER_FLAGS_MINSIZEREL
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_SHARED_LINK_FLAGS_MINSIZEREL}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_SHARED_LINK_FLAGS_MINSIZEREL}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_EXE_LINK_FLAGS_MINSIZEREL}>
)
set(libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_MINSIZEREL
    "$<$<COMPILE_LANGUAGE:CXX>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_CXX_MINSIZEREL}>"
    "$<$<COMPILE_LANGUAGE:C>:${libjpeg-turbo_libjpeg-turbo_turbojpeg_COMPILE_OPTIONS_C_MINSIZEREL}>")
########### COMPONENT libjpeg-turbo::jpeg VARIABLES ############################################

set(libjpeg-turbo_libjpeg-turbo_jpeg_INCLUDE_DIRS_MINSIZEREL "${libjpeg-turbo_PACKAGE_FOLDER_MINSIZEREL}/include")
set(libjpeg-turbo_libjpeg-turbo_jpeg_LIB_DIRS_MINSIZEREL "${libjpeg-turbo_PACKAGE_FOLDER_MINSIZEREL}/lib")
set(libjpeg-turbo_libjpeg-turbo_jpeg_RES_DIRS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_jpeg_DEFINITIONS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_jpeg_OBJECTS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_jpeg_COMPILE_DEFINITIONS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_jpeg_COMPILE_OPTIONS_C_MINSIZEREL "")
set(libjpeg-turbo_libjpeg-turbo_jpeg_COMPILE_OPTIONS_CXX_MINSIZEREL "")
set(libjpeg-turbo_libjpeg-turbo_jpeg_LIBS_MINSIZEREL jpeg)
set(libjpeg-turbo_libjpeg-turbo_jpeg_SYSTEM_LIBS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_jpeg_FRAMEWORK_DIRS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_jpeg_FRAMEWORKS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_jpeg_DEPENDENCIES_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_jpeg_SHARED_LINK_FLAGS_MINSIZEREL )
set(libjpeg-turbo_libjpeg-turbo_jpeg_EXE_LINK_FLAGS_MINSIZEREL )
# COMPOUND VARIABLES
set(libjpeg-turbo_libjpeg-turbo_jpeg_LINKER_FLAGS_MINSIZEREL
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libjpeg-turbo_libjpeg-turbo_jpeg_SHARED_LINK_FLAGS_MINSIZEREL}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libjpeg-turbo_libjpeg-turbo_jpeg_SHARED_LINK_FLAGS_MINSIZEREL}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libjpeg-turbo_libjpeg-turbo_jpeg_EXE_LINK_FLAGS_MINSIZEREL}>
)
set(libjpeg-turbo_libjpeg-turbo_jpeg_COMPILE_OPTIONS_MINSIZEREL
    "$<$<COMPILE_LANGUAGE:CXX>:${libjpeg-turbo_libjpeg-turbo_jpeg_COMPILE_OPTIONS_CXX_MINSIZEREL}>"
    "$<$<COMPILE_LANGUAGE:C>:${libjpeg-turbo_libjpeg-turbo_jpeg_COMPILE_OPTIONS_C_MINSIZEREL}>")