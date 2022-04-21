@echo off
pushd "%~dp0"

cd build
powershell Compress-7Zip "Release" -ArchiveFileName "xmrig-windows.zip" -Format Zip

:exit
popd
@echo on