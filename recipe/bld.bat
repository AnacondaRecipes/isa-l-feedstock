REM vcpkg install getopt
REM if errorlevel 1 exit 1

REM set INCLUDE="%INCLUDE%;%CONDA_PREFIX%\Library\share\vcpkg\installed\x86-windows\include

nmake /f Makefile.nmake
if errorlevel 1 exit 1

REM nmake igzip.exe /f Makefile.nmake
REM if errorlevel 1 exit 1

REM copy igzip.exe "%LIBRARY_BIN%\igzip.exe"
REM if errorlevel 1 exit 1

copy include\isa-l.h %LIBRARY_INCLUDE%\isa-l.h
if errorlevel 1 exit 1

mkdir %LIBRARY_INCLUDE%\isa-l
if errorlevel 1 exit 1

copy include\* %LIBRARY_INCLUDE%\isa-l
if errorlevel 1 exit 1

copy isa-l.dll %LIBRARY_LIB%\isa-l.dll
if errorlevel 1 exit 1

copy isa-l.lib %LIBRARY_LIB%\isa-l.lib
if errorlevel 1 exit 1

copy isa-l_static.lib %LIBRARY_LIB%\isa-l_static.lib
if errorlevel 1 exit 1
