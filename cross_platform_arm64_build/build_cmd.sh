#!/bin/bash

set -e

# for rk1808 aarch64
RK1808_TOOL_CHAIN=/home/amanda/project/ai-platform/rknn/EngineDesign/20220321/HyEdgeInferenceEngine/toolchains/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu 
GCC_COMPILER=${RK1808_TOOL_CHAIN}/bin/aarch64-linux-gnu

cmake -DCMAKE_INSTALL_PREFIX=install_arm_linux \
  -DCMAKE_C_COMPILER=${GCC_COMPILER}-gcc       \
  -DCMAKE_CXX_COMPILER=${GCC_COMPILER}-g++     \
  -DCMAKE_BUILD_TYPE=Release \
  `cat ./opencv4_cmake_options.txt` \
  -DBUILD_opencv_world=OFF ..
