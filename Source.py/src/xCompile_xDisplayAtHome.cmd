set cAppRoot=%~dp0
rem ���� xGetxDid
del /f/s/q %cAppRoot%build
rd /s/q %cAppRoot%build
del /f/s/q %cAppRoot%dist
rd /s/q %cAppRoot%dist
del /f/s/q %cAppRoot%xDisplayAtHome.pyc

cd %cAppRoot%
s:\Development\Python\Python.x86.v2.7.10\python.exe  %cAppRoot%xCompile_xDisplayAtHome.py py2exe
copy /y %cAppRoot%dist\xDisplayAtHome.exe %cAppRoot%

del /f/s/q %cAppRoot%build
rd /s/q %cAppRoot%build
del /f/s/q %cAppRoot%dist
rd /s/q %cAppRoot%dist

s:\Applications\Tools\TOOL_��̹���\�ӿǽ��\UPX_WIN.EXE -9 %cAppRoot%xDisplayAtHome.exe
s:\Development\Python\Python.x86.v2.7.10\python.exe  s:\Development\Python\Python.x86.v2.7.10\Lib\compileall.py %cAppRoot%xDisplayAtHome.py