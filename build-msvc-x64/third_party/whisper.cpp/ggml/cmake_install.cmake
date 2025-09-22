# Install script for directory: C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/SimuSub")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/espid/CLionProjects/SimuSub/build-msvc-x64/third_party/whisper.cpp/ggml/src/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/espid/CLionProjects/SimuSub/build-msvc-x64/third_party/whisper.cpp/ggml/src/ggml.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/espid/CLionProjects/SimuSub/build-msvc-x64/bin/ggml.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml/include/ggml.h"
    "C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml/include/ggml-cpu.h"
    "C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml/include/ggml-alloc.h"
    "C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml/include/ggml-backend.h"
    "C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml/include/ggml-blas.h"
    "C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml/include/ggml-cann.h"
    "C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml/include/ggml-cpp.h"
    "C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml/include/ggml-cuda.h"
    "C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml/include/ggml-opt.h"
    "C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml/include/ggml-metal.h"
    "C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml/include/ggml-rpc.h"
    "C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml/include/ggml-sycl.h"
    "C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml/include/ggml-vulkan.h"
    "C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml/include/ggml-webgpu.h"
    "C:/Users/espid/CLionProjects/SimuSub/third_party/whisper.cpp/ggml/include/gguf.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/espid/CLionProjects/SimuSub/build-msvc-x64/third_party/whisper.cpp/ggml/src/ggml-base.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/espid/CLionProjects/SimuSub/build-msvc-x64/bin/ggml-base.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ggml" TYPE FILE FILES
    "C:/Users/espid/CLionProjects/SimuSub/build-msvc-x64/third_party/whisper.cpp/ggml/ggml-config.cmake"
    "C:/Users/espid/CLionProjects/SimuSub/build-msvc-x64/third_party/whisper.cpp/ggml/ggml-version.cmake"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/Users/espid/CLionProjects/SimuSub/build-msvc-x64/third_party/whisper.cpp/ggml/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
