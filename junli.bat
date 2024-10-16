@echo off
setlocal enabledelayedexpansion

:menu
cls
color 2
title Cleaner
echo.


echo		   __     __  __     __   __        __         __    
echo		  /\ \   /\ \/\ \   /\ "-.\ \      /\ \       /\ \   
echo		 _\_\ \  \ \ \_\ \  \ \ \-.  \     \ \ \____  \ \ \  
echo		/\_____\  \ \_____\  \ \_\\"\_\     \ \_____\  \ \_\ 
echo		\/_____/   \/_____/   \/_/ \/_/      \/_____/   \/_/ 
echo.   
echo.
echo.
echo   1] Temp Cleaner
echo.
echo   2] Cache Cleaner
echo.   
echo   3] Exit
echo.
echo.

set /p op=Choose: 
if %op% equ 1 goto TempClean
if %op% equ 2 goto CacheClean
if %op% equ 3 goto Exit

:TempClean
cls
color 2
cd /D C:\
echo Cleaning temporary files...
del /a /s /q /f *.log
del /a /s /q /f c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /a /s /q /f C:\WINDOWS\Prefetch
del /a /s /q /f %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
cls 
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF !adminTest! EQU Access goto noAdmin
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
echo Event Logs have been cleared! ^<press any key^>
goto theEnd

:do_clear
echo clearing %1
wevtutil.exe cl %1
goto :eof

:noAdmin
echo You must run this script as an Administrator!
echo ^<press any key^>
cls
pause
goto menu

:CacheClean
cls
:main 
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache-priv"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\cache"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache"
echo.
echo.
echo You have cleared your cache successfully.
echo.
echo.
echo.
pause
goto menu

:Exit
exit