# opencv跨平台编译
```shell
unzip opencv-4.5.5.zip
cd opencv-4.5.5
```

## x86编译opencv，同时编译支持视频流处理模块库
```shell
cp -rf x86_build opencv-4.5.5 && cd opencv-4.5.5/x86_build
sh build_cmd.sh
make -j9
make install -j9
```

## arm64-linux编译opencv，不支持视频流处理模块库
```shell
# download aarch64-linux-gnu toolchains 
wget -c https://developer.arm.com/-/media/Files/downloads/gnu-a/8.3-2019.03/binrel/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu.tar.xz?revision=2e88a73f-d233-4f96-b1f4-d8b36e9bb0b9&hash=CE010AFE6B59B7CCD4C0DD39A5331CF7BF2F36F5
cp -rf cross_platform_arm64_build opencv-4.5.5 && cd opencv-4.5.5/cross_platform_arm64_build
sh build_cmd.sh
make -j9
make install -j9
```




## 参考链接
* 1 [opencv编译选项](https://docs.opencv.org/4.x/db/d05/tutorial_config_reference.html)
* 2 [opencv移动端编译](https://github.com/nihui/opencv-mobile)
* 3 [opencv官网编译教程](https://docs.opencv.org/4.x/d2/de6/tutorial_py_setup_in_ubuntu.html)
