# Load the debug and release variables
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB DATA_FILES "${_DIR}/vst3sdk-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${vst3sdk_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${vst3sdk_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET vst3sdk::vst3sdk)
    add_library(vst3sdk::vst3sdk INTERFACE IMPORTED)
    message(${vst3sdk_MESSAGE_MODE} "Conan: Target declared 'vst3sdk::vst3sdk'")
endif()
# Load the debug and release library finders
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/vst3sdk-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()