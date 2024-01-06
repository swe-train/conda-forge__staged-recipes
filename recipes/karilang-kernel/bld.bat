Echo "Building ..."
Echo %LIBRARY_PREFIX%
Echo %PREFIX%
Echo %SRC_DIR%

cd karilang-kernel

cmake -G "NMake Makefiles" -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% -DXEXTRA_JUPYTER_DATA_DIR=%PREFIX%\\share\\jupyter %SRC_DIR%\\karilang-kernel
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
