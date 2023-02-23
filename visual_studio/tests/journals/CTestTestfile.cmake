# CMake generated Testfile for 
# Source directory: C:/Workspace/audacity/tests/journals
# Build directory: C:/Workspace/audacity/visual_studio/tests/journals
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(journal_sanity "powershell" "-ExecutionPolicy" "Bypass" "-File" "C:/Workspace/audacity/tests/journals/test_runner.ps1" "C:/Workspace/audacity/visual_studio/Debug/Audacity.exe" "--timeout" "180" "--journal" "C:/Workspace/audacity/tests/journals/journal_sanity.txt")
  set_tests_properties(journal_sanity PROPERTIES  LABELS "journal_tests" TIMEOUT "180" _BACKTRACE_TRIPLES "C:/Workspace/audacity/cmake-proxies/cmake-modules/AudacityTesting.cmake;122;add_test;C:/Workspace/audacity/tests/journals/CMakeLists.txt;1;add_journal_test;C:/Workspace/audacity/tests/journals/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(journal_sanity "powershell" "-ExecutionPolicy" "Bypass" "-File" "C:/Workspace/audacity/tests/journals/test_runner.ps1" "C:/Workspace/audacity/visual_studio/Release/Audacity.exe" "--timeout" "180" "--journal" "C:/Workspace/audacity/tests/journals/journal_sanity.txt")
  set_tests_properties(journal_sanity PROPERTIES  LABELS "journal_tests" TIMEOUT "180" _BACKTRACE_TRIPLES "C:/Workspace/audacity/cmake-proxies/cmake-modules/AudacityTesting.cmake;122;add_test;C:/Workspace/audacity/tests/journals/CMakeLists.txt;1;add_journal_test;C:/Workspace/audacity/tests/journals/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(journal_sanity "powershell" "-ExecutionPolicy" "Bypass" "-File" "C:/Workspace/audacity/tests/journals/test_runner.ps1" "C:/Workspace/audacity/visual_studio/MinSizeRel/Audacity.exe" "--timeout" "180" "--journal" "C:/Workspace/audacity/tests/journals/journal_sanity.txt")
  set_tests_properties(journal_sanity PROPERTIES  LABELS "journal_tests" TIMEOUT "180" _BACKTRACE_TRIPLES "C:/Workspace/audacity/cmake-proxies/cmake-modules/AudacityTesting.cmake;122;add_test;C:/Workspace/audacity/tests/journals/CMakeLists.txt;1;add_journal_test;C:/Workspace/audacity/tests/journals/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(journal_sanity "powershell" "-ExecutionPolicy" "Bypass" "-File" "C:/Workspace/audacity/tests/journals/test_runner.ps1" "C:/Workspace/audacity/visual_studio/RelWithDebInfo/Audacity.exe" "--timeout" "180" "--journal" "C:/Workspace/audacity/tests/journals/journal_sanity.txt")
  set_tests_properties(journal_sanity PROPERTIES  LABELS "journal_tests" TIMEOUT "180" _BACKTRACE_TRIPLES "C:/Workspace/audacity/cmake-proxies/cmake-modules/AudacityTesting.cmake;122;add_test;C:/Workspace/audacity/tests/journals/CMakeLists.txt;1;add_journal_test;C:/Workspace/audacity/tests/journals/CMakeLists.txt;0;")
else()
  add_test(journal_sanity NOT_AVAILABLE)
endif()
