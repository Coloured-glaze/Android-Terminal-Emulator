cmake_minimum_required(VERSION 3.10)

# 设置项目名称和版本
project(TerminalEmulator VERSION 1.0 LANGUAGES CXX)

# 指定 C++ 标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 设置源文件和头文件
set(SOURCE_FILES
        common.cpp
        fileCompat.cpp
        termExec.cpp
)

set(HEADER_FILES
        common.h
        fileCompat.h
        termExec.h
)

# 创建共享库
add_library(jackpal-termexec2 SHARED ${SOURCE_FILES} ${HEADER_FILES})

# 查找系统库（如 log）
find_library(LOG_LIB log)

# 链接库
target_link_libraries(jackpal-termexec2 ${LOG_LIB})

# 指定包含目录
target_include_directories(jackpal-termexec2 PRIVATE ${CMAKE_SOURCE_DIR})

# 可选：调试模式下输出信息
if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    message(STATUS "Debug build")
endif()
