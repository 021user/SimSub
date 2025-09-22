cmake_minimum_required(VERSION 3.20)
project(SimuSub LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# whisper/ggml (CPU)
set(GGML_CUDA OFF CACHE BOOL "" FORCE)
set(WHISPER_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(GGML_OPENMP ON CACHE BOOL "" FORCE)

add_subdirectory(third_party/whisper.cpp)

# --- Lib (ASR)
add_library(subrtx STATIC
        src/asr.cpp
)

target_include_directories(subrtx PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
target_include_directories(subrtx PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/third_party/whisper.cpp/include
        ${CMAKE_CURRENT_SOURCE_DIR}/third_party/whisper.cpp
)

if(MSVC)
    target_compile_options(subrtx PRIVATE /W4 /WX)
else()
    target_compile_options(subrtx PRIVATE -Wall -Wextra -Werror)
endif()

target_link_libraries(subrtx PRIVATE whisper)

# --- CLI
add_executable(subrtx_cli apps/main.cpp)
target_link_libraries(subrtx_cli PRIVATE subrtx)

# Copie les DLL runtime à côté de l’exe après link
if (MSVC)
    add_custom_command(TARGET subrtx_cli POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy_if_different
            $<TARGET_RUNTIME_DLLS:subrtx_cli> $<TARGET_FILE_DIR:subrtx_cli>
            COMMAND_EXPAND_LISTS
    )
endif()
