echo "Configuring and building Thirdparty/DBoW2 ..."

cd Thirdparty/DBoW2
mkdir build
cd build
# cmake .. -DCMAKE_BUILD_TYPE=Release
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_STANDARD=14
make -j2

cd ../../g2o

echo "Configuring and building Thirdparty/g2o ..."

mkdir build
cd build
# cmake .. -DCMAKE_BUILD_TYPE=Release
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_STANDARD=14
make -j2

cd ../../../

echo "Uncompress vocabulary ..."

# cd Vocabulary
# tar -xf ORBvoc.txt.tar.gz
# cd ..

echo "Configuring and building ORB_SLAM3 ..."

mkdir build
cd build
# cmake .. -DCMAKE_BUILD_TYPE=Release
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_STANDARD=14
make -j2


# /usr/local/share/${LIB_NAME}
# cmake 会去找这个路径下的${LIB_NAME}Config.cmake 
# eg.1 set(OpenCV_DIR /usr/local/share/OpenCV)
# find_package(OpenCV 3.0)
# 同样 /usr/local/lib/cmake/${LIB_NAME} 下的 ${LIB_NAME}Config.cmake  也会查找。 
# set(Pangolin_DIR /usr/local/lib/cmake/Pangolin)
# find_package(Pangolin REQUIRED)
# MESSAGE("Pangolin VERSION:")

# 安装realsense2 
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
# sudo add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo $(lsb_release -cs) main" -u
