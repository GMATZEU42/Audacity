# Load the debug and release variables
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB DATA_FILES "${_DIR}/module-JPEG-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${libjpeg-turbo_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${JPEG_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET libjpeg-turbo::libjpeg-turbo)
    add_library(libjpeg-turbo::libjpeg-turbo INTERFACE IMPORTED)
    message(${JPEG_MESSAGE_MODE} "Conan: Target declared 'libjpeg-turbo::libjpeg-turbo'")
endif()
# Load the debug and release library finders
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/module-JPEG-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()