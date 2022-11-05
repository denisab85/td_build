# Generated using https://tdlib.github.io/td/build.html?language=Java

git clone https://github.com/Microsoft/vcpkg.git
Set-PSDebug -Trace 1
cd vcpkg
git checkout 0321a8422e786e4c35f3abbc1f03acbcfae35758
./bootstrap-vcpkg.bat
./vcpkg.exe install gperf:x86-windows openssl:x86-windows zlib:x86-windows
cd ..
Remove-Item build -Force -Recurse -ErrorAction SilentlyContinue
mkdir build
cd build
cmake -A Win32 -DCMAKE_INSTALL_PREFIX:PATH=../example/java/td -DTD_ENABLE_JNI=ON -DCMAKE_TOOLCHAIN_FILE:FILEPATH=../vcpkg/scripts/buildsystems/vcpkg.cmake ..
cmake --build . --target install --config Release
dir
cd ..
dir
cd example/java
Remove-Item build -Force -Recurse -ErrorAction SilentlyContinue
mkdir build
cd build
cmake -A Win32 -DCMAKE_INSTALL_PREFIX:PATH=../../../tdlib -DCMAKE_TOOLCHAIN_FILE:FILEPATH=../../../vcpkg/scripts/buildsystems/vcpkg.cmake -DTd_DIR:PATH=$(Resolve-Path ../td/lib/cmake/Td) ..
cmake --build . --target install --config Release
