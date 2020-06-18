echo "cmake generate build"
cmake.exe CMakeLists.txt
if errorlevel 1 exit /b 1
echo "cmake compile"
cmake.exe --build . --config Release
if errorlevel 1 exit /b 1
echo "install"
if not exist "%PREFIX%\" mkdir "%PREFIX%"
COPY bin\swashes.exe %PREFIX%\
