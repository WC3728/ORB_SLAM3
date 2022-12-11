### realsense2
```shell
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
sudo add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo $(lsb_release -cs) main" -u
sudo apt-get install librealsense2-dkms
sudo apt-get install librealsense2-utils

sudo apt-get install librealsense2-dev
sudo apt-get install librealsense2-dbg


realsense-viewer
# 看一下内核的版本
modinfo uvcvideo | grep "version:"
# 出现带有realsense的字样
```


1. Examples/Monocular/CPP_NAME.cc 文件编译成功后生成的 CPP_NAME 文件在 Examples/Monocular-Intertial/CPP_NAME
2. 在Examples/Monocular-Intertial 下新建 CREMA_CONFIG.yaml 相机配置文件,
3. 在主目录/CMakeLists.txt 最后新增
    - 添加自己定义的摄像头
    MESSAGE("add_executable mono_video.....")
    add_executable(mono_video
    Examples/Monocular/mono_video.cc)
    target_link_libraries(mono_video ${PROJECT_NAME})

4. 编译
    - cd build 
    - cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_STANDARD=14
    - make -j2

5. 运行
    - cd Examples/Monocular-Intertial
    - ./CPP_NAME


* 初始化地图的时候比较慢, 在白色空间内的地形识别能力比较差
* 对场景要求比较高。
* 容易丢失地图空间。
* 相机规格对识别能力也是有影响的。
* 不够稳定。


echo "MESSAGE(\"add_executable mono_video.....\")
add_executable(mono_video
Examples/Monocular/mono_video.cc)
target_link_libraries(mono_video ${PROJECT_NAME})" >> CMakeLists.txt