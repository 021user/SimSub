cmake_minimum_required(VERSION 4.0)
project(SimuSub)

set(CMAKE_CXX_STANDARD 23)

add_executable(SimuSub main.cpp
        src/audio.cpp
        src/audio.h
        src/vad.cpp
        src/vad.h
        src/asr.cpp
        src/asr.h
        src/overlay.cpp
        src/overlay.h
        src/core.cpp
        src/core.h
        include/subrtx.cpp
        include/subrtx.h)
