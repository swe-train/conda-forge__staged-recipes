copy %RECIPE_DIR%\CMakeLists.txt CMakeLists.txt

mkdir build
cd build
cmake ..
cmake --build . --config Release

mkdir %PREFIX%\Library\bin
dir
dir Release
copy Release\rcedit.exe %PREFIX%\Library\bin\rcedit.exe
