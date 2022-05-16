# mkdir -p build
# cd build

cmake -DCMAKE_INSTALL_PREFIX=install_arm_linux \
  -DCMAKE_BUILD_TYPE=Release \
#  `cat ./opencv4_cmake_options.txt` \
  -DBUILD_opencv_world=OFF ..
