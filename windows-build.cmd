@echo off
pushd "%~dp0"

curl.exe -O https://codeload.github.com/xmrig/xmrig-deps/zip/refs/heads/master
tar -xf master
mkdir c:\xmrig-deps
xcopy /E /I .\xmrig-deps-master\gcc c:\xmrig-deps\gcc
xcopy /E /I .\xmrig-deps-master\msvc2019 c:\xmrig-deps\msvc2019

mkdir build && cd build
cmake .. -G "Visual Studio 16 2019" -A x64 -DXMRIG_DEPS=c:\xmrig-deps\msvc2019\x64
cmake --build . --config Release

:exit
popd
@echo on