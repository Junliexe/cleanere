::idk

@echo off
title junlipatay
net session >nul 2>&1
    if %errorLevel% == 0 (
        goto admin
    ) else (
        goto NOADMIN
    )
:admin
echo.
@echo off & setlocal
color b
echo msgbox"love mo ko? -junli">%temp%\msg.vbs
call %temp%\msg.vbs
del %temp%\msg.vbs
echo.
goto next

:NOADMIN
echo.
@echo off & setlocals
color c
echo msgbox"launch as admin retard">%temp%\noadmin.vbs
call %temp%\noadmin.vbs
del %temp%\noadmin.vbs
exit

:next
cls
color b
set /p kvestion= launch check (y/n)
if /I "%kvestion%"=="y" goto yes
if /I "%kvestion%"=="n" exit
goto next


:yes
title cleaning cache
cd %systemroot%\Temp
del /f /s /q *.*
del /f /s /q %systemroot%\Temp\*.*
rmdir "%systemroot%\Temp" /s /q
if not exist "%systemroot%\Temp" mkdir "%systemroot%\Temp"
cd %systemroot%\CbsTemp
del /f /s /q *.*
del /f /s /q %systemroot%\CbsTemp\*.*
rmdir "%systemroot%\CbsTemp" /s /q
if not exist "%systemroot%\CbsTemp" mkdir "%systemroot%\CbsTemp"
cd %systemroot%\Prefetch
del /f /s /q *.*
del /f /s /q %systemroot%\Prefetch\*.*
rmdir "%systemroot%\Prefetch" /s /q
if not exist "%systemroot%\Prefetch" mkdir "%systemroot%\Prefetch"
cd %temp%
del /f /s /q *.*
del /f /s /q %temp%\*.*
rmdir "%temp%" /s /q
if not exist "%temp%" mkdir "%temp%"
cd %SystemDrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent Items
del /f /s /q *.*
del /f /s /q %SystemDrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent Items\*.*
rmdir "%SystemDrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent Items" /s /q
if not exist "%SystemDrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent Items" mkdir "%SystemDrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent Items"
cd %systemroot%\History
del /f /s /q *.*
del /f /s /q %systemroot%\History\*.*
rmdir "%systemroot%\History" /s /q
if not exist "%systemroot%\History" mkdir "%systemroot%\History"
cd %systemroot%\Tmp
del /f /s /q *.*
del /f /s /q %systemroot%\Tmp\*.*
rmdir "%systemroot%\Tmp" /s /q
if not exist "%systemroot%\Tmp" mkdir "%systemroot%\Tmp"
cd %systemroot%\Tempor~1
del /f /s /q *.*
del /f /s /q %systemroot%\Tempor~1\*.*
rmdir "%systemroot%\Tempor~1" /s /q
if not exist "%systemroot%\Tempor~1" mkdir "%systemroot%\Tempor~1"
cd %systemroot%\Cookies
del /f /s /q *.*
del /f /s /q %systemroot%\Cookies\*.*
rmdir "%systemroot%\Cookies" /s /q
if not exist "%systemroot%\Cookies" mkdir "%systemroot%\Cookies"
cd %systemroot%\Recent
del /f /s /q *.*
del /f /s /q %systemroot%\Recent\*.*
rmdir "%systemroot%\Recent" /s /q
if not exist "%systemroot%\Recent" mkdir "%systemroot%\Recent"
cd %systemroot%\spool\printers
del /f /s /q *.*
del /f /s /q %systemroot%\spool\printers\*.*
rmdir "%systemroot%\spool\printers" /s /q
if not exist "%systemroot%\spool\printers" mkdir "%systemroot%\spool\printers"
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\INetCache\*.htm
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\INetCache\*.dat
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\INetCache\*.json
del /f /q %systemdrive%\Windows\*.log
del /f /q %systemdrive%\Windows\Debug\*.log
del /f /q %systemdrive%\Windows\SoftwareDistribution\*.log
del /f /q %systemdrive%\Windows\Logs\*.log
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\WebCache\*.log
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\WebCache(.old)\*.log
del /f /q %userprofile%\AppData\Local\IconCache.db
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.db
if exist %SystemDrive%\RECYCLER rmdir /s /q %SystemDrive%\RECYCLER
if exist %SystemDrive%\$Recycle.Bin rmdir /s /q %SystemDrive%\$Recycle.Bin
title clearing registry keys
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Softvare\Microsoft\Windows\Shell\MuiCache" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Softvare\Microsoft\Windows\Shell\Bags" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Softvare\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Bags" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Bags" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Persisted" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\ShellNoRoam\MUIChache" /f
reg dekete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f
reg dekete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /f
reg dekete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy" /f
reg dekete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU" /f
reg dekete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f
:operation1
cls
echo.
echo This next step might cause errors
echo When uninstalling programs
set /p risky= Skip operation? (y/n)
if /I "%risky%"=="y" goto skip_risky
if /I "%risky%"=="n" goto risky
goto operation1

:risky
title clearing registry keys
reg dekete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall"
reg dekete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall"
goto skip_risky
:skip_risky
title clearing prefetch
@RD /s /Q "C:\Windows\Prefetch\"
@RD /s /Q "C:\Users\Default\AppData\Roaming\Microsoft\Recent\"
@RD /s /Q "%appdata%\Microsoft\Windows\Recent\"
goto eventlog
:eventlog
title clearing eventlog entries
for /F "tokens=1,2*" %%V in ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto end
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :clearing "%%G")
:clearing
echo clearing %1
wevtutil.exe cl %1
cls
title done cleaning asshole
echo.
echo.
echo cleaning done
timeout 3 > nul


:end
cls
exit

