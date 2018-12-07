@echo off
rem This batch file was created by Thibaut Lauziere for LinuxLive USB Creator
rem More infos available at www.linuxliveusb.com
cls
echo -----------------------------------------------------------------
echo ----------- Welcome to LinuxLive Uninstaller --------------------
echo -----------------------------------------------------------------
echo.
echo.
echo.
echo --------------------- WARNING! ---------------------------------
echo.
echo This batch file will permanently remove LinuxLive from your key
echo.
echo -----------------------------------------------------------------
echo.
echo.
set /P userchoice="Are you sure you want to remove Linux Live from your key (Y/N) ?"
if /i NOT "%userchoice%"=="y" goto:eof
cls
echo -----------------------------------------------------------------
echo -----------        Removal of LinuxLive      --------------------
echo -----------------------------------------------------------------
echo.
echo Removing folder : boot
RMDIR /S /Q boot
echo Removing file : boot.catalog
ATTRIB -H -S boot.catalog
DEL /F /Q boot.catalog
echo Removing folder : 
RMDIR /S /Q 
echo Removing file : ldlinux.sys
ATTRIB -H -S ldlinux.sys
DEL /F /Q ldlinux.sys
echo Removing folder : syslinux
RMDIR /S /Q syslinux
echo Removing file : SmartClean.ini
ATTRIB -H -S SmartClean.ini
DEL /F /Q SmartClean.ini
cls
echo -----------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo --------- LinuxLive USB has been removed from your key  ----------
echo.
echo.
echo.
echo.
echo.
echo.
echo -----------------------------------------------------------------
pause
Removing uninstaller : Remove_LiLi.bat
ATTRIB -H -S Remove_LiLi.bat
DEL /F /Q Remove_LiLi.bat
:End