# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

if("$ENV{OE_TOOLCHAIN_PREFIX}" STREQUAL "")
    set(CMAKE_C_COMPILER   ${CMAKE_BINARY_DIR}/toolchains/aarch64/bin/aarch64-linux-gnu-gcc)
    set(CMAKE_CXX_COMPILER ${CMAKE_BINARY_DIR}/toolchains/aarch64/bin/aarch64-linux-gnu-g++)
else()
    set(CMAKE_C_COMPILER   $ENV{OE_TOOLCHAIN_PREFIX}gcc)
    set(CMAKE_CXX_COMPILER $ENV{OE_TOOLCHAIN_PREFIX}g++)
endif()

if("$ENV{OE_TA_TOOLCHAIN_PREFIX}" STREQUAL "")
    set(OE_TA_TOOLCHAIN_PREFIX /usr/bin/aarch64-linux-gnu-)
else()
    set(OE_TA_TOOLCHAIN_PREFIX $ENV{OE_TA_TOOLCHAIN_PREFIX})
endif()

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)