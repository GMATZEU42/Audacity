# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_AUDACITY_BUILD_DIR "C:/Workspace/audacity/visual_studio")
set(CPACK_AUDACITY_SOURCE_DIR "C:/Workspace/audacity")
set(CPACK_BUILD_SOURCE_DIRS "C:/Workspace/audacity;C:/Workspace/audacity/visual_studio")
set(CPACK_CMAKE_GENERATOR "Visual Studio 17 2022")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "C:/Program Files/CMake/share/cmake-3.25/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "Audacity built using CMake")
set(CPACK_GENERATOR "ZIP")
set(CPACK_INSTALL_CMAKE_PROJECTS "C:/Workspace/audacity/visual_studio;Audacity;ALL;/")
set(CPACK_INSTALL_PREFIX "C:/Program Files (x86)/Audacity")
set(CPACK_MODULE_PATH "C:/Users/giaco/.conan/data/catch2/2.13.8/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib/cmake/Catch2;C:/Users/giaco/.conan/data/catch2/2.13.8/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib/cmake/Catch2;C:/Users/giaco/.conan/data/catch2/2.13.8/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib/cmake/Catch2;C:/Users/giaco/.conan/data/catch2/2.13.8/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib/cmake/Catch2;C:/Users/giaco/.conan/data/vst3sdk/3.7.3/_/_/package/5a61a86bb3e07ce4262c80e1510f9c05e9b6d48b/;C:/Users/giaco/.conan/data/vst3sdk/3.7.3/_/_/package/5a61a86bb3e07ce4262c80e1510f9c05e9b6d48b/;C:/Users/giaco/.conan/data/vst3sdk/3.7.3/_/_/package/5a61a86bb3e07ce4262c80e1510f9c05e9b6d48b/;C:/Users/giaco/.conan/data/vst3sdk/3.7.3/_/_/package/164640aad040835ac89882393a96d89200694f04/;C:/Users/giaco/.conan/data/portmidi/r234/_/_/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0/;C:/Users/giaco/.conan/data/portmidi/r234/_/_/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0/;C:/Users/giaco/.conan/data/portmidi/r234/_/_/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0/;C:/Users/giaco/.conan/data/portmidi/r234/_/_/package/bf9ec17af5844bd8d3cc139070000dc26fc5f076/;C:/Users/giaco/.conan/data/portaudio/19.7.0/_/_/package/f8004b13ba3d25eb6354835cd3e9101dc2e51cac/;C:/Users/giaco/.conan/data/portaudio/19.7.0/_/_/package/f8004b13ba3d25eb6354835cd3e9101dc2e51cac/;C:/Users/giaco/.conan/data/portaudio/19.7.0/_/_/package/f8004b13ba3d25eb6354835cd3e9101dc2e51cac/;C:/Users/giaco/.conan/data/portaudio/19.7.0/_/_/package/9bf5a005c0dddcd2e0ae3def03324e272eaeae9a/;C:/Users/giaco/.conan/data/wavpack/5.4.0/_/_/package/f8ede90eeb7dcf521c8653ba9e84fa208c917189/;C:/Users/giaco/.conan/data/wavpack/5.4.0/_/_/package/f8ede90eeb7dcf521c8653ba9e84fa208c917189/;C:/Users/giaco/.conan/data/wavpack/5.4.0/_/_/package/f8ede90eeb7dcf521c8653ba9e84fa208c917189/;C:/Users/giaco/.conan/data/wavpack/5.4.0/_/_/package/149c3cbffe15feb8948c72bae420304d464a1e75/;C:/Users/giaco/.conan/data/libid3tag/0.15.2b/audacity/stable/package/cff0a049e1746c21cbf4a615b7f8af9699b5e4e2/;C:/Users/giaco/.conan/data/libid3tag/0.15.2b/audacity/stable/package/cff0a049e1746c21cbf4a615b7f8af9699b5e4e2/;C:/Users/giaco/.conan/data/libid3tag/0.15.2b/audacity/stable/package/cff0a049e1746c21cbf4a615b7f8af9699b5e4e2/;C:/Users/giaco/.conan/data/libid3tag/0.15.2b/audacity/stable/package/177e4dcd8901cd0ef1fcec3151e2b8388cf14a47/;C:/Users/giaco/.conan/data/libmp3lame/3.100/_/_/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0/;C:/Users/giaco/.conan/data/libmp3lame/3.100/_/_/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0/;C:/Users/giaco/.conan/data/libmp3lame/3.100/_/_/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0/;C:/Users/giaco/.conan/data/libmp3lame/3.100/_/_/package/bf9ec17af5844bd8d3cc139070000dc26fc5f076/;C:/Users/giaco/.conan/data/wxwidgets/3.1.3.4-audacity/_/_/package/fa2df25618b85785b64ca20d59cd65194f8e6bc7/;C:/Users/giaco/.conan/data/wxwidgets/3.1.3.4-audacity/_/_/package/fa2df25618b85785b64ca20d59cd65194f8e6bc7/;C:/Users/giaco/.conan/data/wxwidgets/3.1.3.4-audacity/_/_/package/fa2df25618b85785b64ca20d59cd65194f8e6bc7/;C:/Users/giaco/.conan/data/wxwidgets/3.1.3.4-audacity/_/_/package/7b6179636cd96e2eaf6628a5948c95243b67b127/;C:/Users/giaco/.conan/data/libpng/1.6.37/_/_/package/c6d8367cbf7c047a38c0929c00d8d160cb8378db/;C:/Users/giaco/.conan/data/libpng/1.6.37/_/_/package/c6d8367cbf7c047a38c0929c00d8d160cb8378db/;C:/Users/giaco/.conan/data/libpng/1.6.37/_/_/package/c6d8367cbf7c047a38c0929c00d8d160cb8378db/;C:/Users/giaco/.conan/data/libpng/1.6.37/_/_/package/2026793585d04329599fcef815fc80b19828f099/;C:/Users/giaco/.conan/data/expat/2.2.9/audacity/stable/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0/;C:/Users/giaco/.conan/data/expat/2.2.9/audacity/stable/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0/;C:/Users/giaco/.conan/data/expat/2.2.9/audacity/stable/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0/;C:/Users/giaco/.conan/data/expat/2.2.9/audacity/stable/package/bf9ec17af5844bd8d3cc139070000dc26fc5f076/;C:/Users/giaco/.conan/data/zlib/1.2.11/_/_/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0/;C:/Users/giaco/.conan/data/zlib/1.2.11/_/_/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0/;C:/Users/giaco/.conan/data/zlib/1.2.11/_/_/package/ad5261bf6074807e7189c351b0f79b113bf2f6c0/;C:/Users/giaco/.conan/data/zlib/1.2.11/_/_/package/bf9ec17af5844bd8d3cc139070000dc26fc5f076/;C:/Workspace/audacity/cmake-proxies/cmake-modules")
set(CPACK_NSIS_DISPLAY_NAME "Audacity 3.3.0-alpha-20230223+62ce1f2")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES64")
set(CPACK_NSIS_PACKAGE_NAME "Audacity 3.3.0-alpha-20230223+62ce1f2")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OUTPUT_CONFIG_FILE "C:/Workspace/audacity/visual_studio/CPackConfig.cmake")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "C:/Program Files/CMake/share/cmake-3.25/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Audacity built using CMake")
set(CPACK_PACKAGE_DIRECTORY "C:/Workspace/audacity/visual_studio/package")
set(CPACK_PACKAGE_FILE_NAME "audacity-win-3.3.0-alpha-20230223+62ce1f2")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://audacityteam.org")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "Audacity 3.3.0-alpha-20230223+62ce1f2")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "Audacity 3.3.0-alpha-20230223+62ce1f2")
set(CPACK_PACKAGE_NAME "Audacity")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Audacity")
set(CPACK_PACKAGE_VERSION "3.3.0-alpha-20230223+62ce1f2")
set(CPACK_PACKAGE_VERSION_MAJOR "3")
set(CPACK_PACKAGE_VERSION_MINOR "3")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_RESOURCE_FILE_LICENSE "C:/Program Files/CMake/share/cmake-3.25/Templates/CPack.GenericLicense.txt")
set(CPACK_RESOURCE_FILE_README "C:/Program Files/CMake/share/cmake-3.25/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "C:/Program Files/CMake/share/cmake-3.25/Templates/CPack.GenericWelcome.txt")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_7Z "ON")
set(CPACK_SOURCE_GENERATOR "7Z;ZIP")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "C:/Workspace/audacity/visual_studio/CPackSourceConfig.cmake")
set(CPACK_SOURCE_ZIP "ON")
set(CPACK_SYSTEM_NAME "win64")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "win64")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "C:/Workspace/audacity/visual_studio/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()