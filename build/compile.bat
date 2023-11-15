@echo off

set build_path=%~dp0
echo %build_path%
cd %build_path%/../target

set MSVC_PATH="D:\workspace\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.38.33130"
set WIN11_INCLUDE="D:\Windows Kits\10\Include\10.0.22621.0"
set WIN11_LIB="D:\Windows Kits\10\Lib\10.0.22621.0"

set JAVA_HOME=D:\workspace\Java\graalvm-17.0.8\bin

set CLASSPATH=%JAVA_HOME/lib/tools.jar%;%JAVA_HOME%/lib/dt.jar;.

set INCLUDE=%WIN11_INCLUDE%\ucrt;%WIN11_INCLUDE%\um;%WIN11_INCLUDE%\shared;%MSVC%\include
set LIB=%WIN11_LIB%\um\x64;%WIN11_LIB%\ucrt\x64;%MSVC%\lib\x64

set PATH=%MSVC_PATH%\bin\Hostx64\x64;%JAVA_HOME%;%PATH%
call "D:\workspace\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"


native-image -jar GraalvmTemplate*jar-with-dependencies.jar
