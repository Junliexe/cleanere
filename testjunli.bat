title ` junli hates u
@shift /0
echo off
:: Main Menu
:Menu
chcp 65001 >nul 2>&1
cls
set c=[33m
set t=[0m
set w=[97m
set y=[0m
set u=[4m
set q=[0m
echo.
echo.
echo.
echo		  /\ \   /\ \/\ \   /\ "-.\ \      /\ \       /\ \   
echo		 _\_\ \  \ \ \_\ \  \ \ \-.  \     \ \ \____  \ \ \  
echo		/\_____\  \ \_____\  \ \_\\"\_\     \ \_____\  \ \_\ 
echo		\/_____/   \/_____/   \/_/ \/_/      \/_____/   \/_/ 
echo. 
echo %w%════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════%y%
echo.
echo.
echo.
echo                                      %w%[%y% %c%%u%1%q%%t% %w%]%y% CLEAN TRACES              %w%[%y% %c%%u%2%q% %t%%w%]%y% EXIT
echo. 

set choice=
set /p choice=
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto clean traces
if '%choice%'=='2' goto exit


:clean
cls

:: Disable Echo Shitz
Local Settings\Software\Microsoft\Windows\Shell\BagMRU
powershell -Command "& {Get-AppxPackage -AllUsers xbox | Remove-AppxPackage}"
sc stop XblAuthManager
sc stop XblGameSave
sc stop XboxNetApiSvc
sc stop XboxGipSvc
sc delete XblAuthManager
sc delete XblGameSave
sc delete XboxNetApiSvc
sc delete XboxGipSvc
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Services\xbgm" /f
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTask" /disable
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTaskLogon" /disable
cls
set hostspath=%windir%\System32\drivers\etc\hosts
echo 127.0.0.1 xboxlive.com >> %hostspath%
echo 127.0.0.1 user.auth.xboxlive.com >> %hostspath%
echo 127.0.0.1 presence-heartbeat.xboxlive.com >> %hostspath%
cls
taskkill /F /IM "explorer.exe & start explorer.exe" 
taskkill /F /IM "EpicGamesLauncher.exe"
taskkill /F /IM "Launcher.exe"
taskkill /F /IM "SocialClubHelper.exe"
taskkill /F /IM "RockstarService.exe"
taskkill /F /IM "LauncherPatcher.exe"
taskkill /F /IM "chrome.exe"
timeout /t 1 /nobreak > NUL

:: DELETING REGISTRY 
ECHO.
ECHO Deleting registry... 
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Softvare\Microsoft\Windows\Shell\MuiCache" /f
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Softvare\Microsoft\Windows\Shell\Bags" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\ShellNoRoam\MUIChache" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Persisted" /f 
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Bags" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall" /f 
REG DELETE "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall" /f 
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /va /f
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Bags" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /va /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\FirstFolder" /va /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /va /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy" /va /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f 
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f 
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /va /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" /va /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications"
REG DELETE "HKEY_USERS\%usersid%\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps" /f
REG DELETE"HKEY_USERS\%usersid%\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps" /f 
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam\UserSettings\%usersid%" /va /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\UserSettings\%usersid%" /va /f
REG DELETE "HKEY_USERS\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /va /f
REG DELETE  "HKEY_USERS\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /va /f
REG DELETE "HKEY_USERS\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2" /f
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Services\xbgm" /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f 
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f 
REG DELETE "Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\S-1-5-21-3266240669-1207989580-1634096268-1001" /f 
REG DELETE "Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\S-1-5-21-3266240669-1207989580-1634096268-1005" /f 
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Clients\StartMenuInternet" /f 
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f 
REG DELETE "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall" /f 
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f 
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Tracing\" /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\STORAGE\Volume" /f 
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\MountedDevices" /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\USBSTOR" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Search\VolumeInfoCache" /f 
REG DELETE "Computer\HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f 
REG DELETE "Computer\HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f 
REG DELETE "Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /f 
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /f 
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f 
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Persisted" /f	
REG DELETE "Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\S-1-5-21-3266240669-1207989580-1634096268-1001" /f 
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f 
REG DELETE "Computer\HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f 
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f 
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f
REG DELETE "Computer\HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f
REG DELETE "Computer\HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f  
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Wordpad\Recent File List" /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\WinRAR\ArcHistory" /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\Package\181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\Package\181\93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\PackageAndPackageRelativeApplicationId\181^App" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\PackageAndPackageRelativeApplicationId\181^App\93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\3^93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\3^93\ac" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\4^93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\4^93\ad" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a84" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181\1a84" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\Package\181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\Package\181\93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\PackageAndPackageRelativeApplicationId\181^App" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\PackageAndPackageRelativeApplicationId\181^App\93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\3^93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\3^93\ac" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\4^93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\4^93\ad" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\182" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a84" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181\1a84" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Package: 0x00000181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Index: 0x00000000" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Flags: 0x00000000" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\PackageRelativeApplicationId: "App"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\ApplicationUserModelId: "Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Executable: "GameBar.exe"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Entrypoint: "GameBar.App"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\StartPage: (NULL!)" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\_IndexKeys:  50 61 63 6B 61 67 65 5C 31 38 31 5C 39 33 00 50 61 63 6B 61 67 65 41 6E 64 50 61 63 6B 61 67 65 52 65 6C 61 74 69 76 65 41 70 70 6C 69 63 61 74 69 6F 6E 49 64 5C 31 38 31 5E 41 70 70 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\Application: 0x00000093" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\User: 0x00000003" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\ApplicationUserModelId: "Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\_IndexKeys:  55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 5C 33 5E 39 33 00 55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 55 73 65 72 4D 6F 64 65 6C 49 64 5C 33 5E 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 21 41 70 70 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\Application: 0x00000093" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\User: 0x00000004" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\ApplicationUserModelId: "Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\_IndexKeys:  55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 5C 34 5E 39 33 00 55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 55 73 65 72 4D 6F 64 65 6C 49 64 5C 34 5E 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 21 41 70 70 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageFullName: "Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageFamily: 0x0000004E" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageType: 0x00000008" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\Flags: 0x00000000" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageOrigin: 0x00000003" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\Volume: 0x00000001" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\InstalledLocation: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\_IndexKeys:  50 61 63 6B 61 67 65 46 61 6D 69 6C 79 5C 34 65 5C 31 38 30 00 50 61 63 6B 61 67 65 46 75 6C 6C 4E 61 6D 65 5C 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 31 2E 34 31 2E 32 34 30 30 31 2E 30 5F 6E 65 75 74 72 61 6C 5F 7E 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageFullName: "Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageFamily: 0x0000004E" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageType: 0x00000001" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\Flags: 0x00000000" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageOrigin: 0x00000003" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\Volume: 0x00000001" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\InstalledLocation: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\_IndexKeys:  50 61 63 6B 61 67 65 46 61 6D 69 6C 79 5C 34 65 5C 31 38 31 00 50 61 63 6B 61 67 65 46 75 6C 6C 4E 61 6D 65 5C 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 31 2E 34 31 2E 32 34 30 30 31 2E 30 5F 78 36 34 5F 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageFullName: "Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageFamily: 0x0000004E" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageType: 0x00000004" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\Flags: 0x00000000" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageOrigin: 0x00000003" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\Volume: 0x00000001" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\InstalledLocation: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\_IndexKeys:  50 61 63 6B 61 67 65 46 61 6D 69 6C 79 5C 34 65 5C 31 38 32 00 50 61 63 6B 61 67 65 46 75 6C 6C 4E 61 6D 65 5C 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 31 2E 34 31 2E 32 34 30 30 31 2E 30 5F 6E 65 75 74 72 61 6C 5F 73 70 6C 69 74 2E 73 63 61 6C 65 2D 31 30 30 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80\Package: 0x00000180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80\User: 0x00000003" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80\_IndexKeys:  55 73 65 72 5C 33 5C 31 61 38 30 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 33 5E 31 38 30 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81\Package: 0x00000181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81\User: 0x00000003" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81\_IndexKeys:  55 73 65 72 5C 33 5C 31 61 38 31 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 33 5E 31 38 31 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82\Package: 0x00000182" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82\User: 0x00000003" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82\_IndexKeys:  55 73 65 72 5C 33 5C 31 61 38 32 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 33 5E 31 38 32 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83\Package: 0x00000180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83\User: 0x00000004" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83\_IndexKeys:  55 73 65 72 5C 34 5C 31 61 38 33 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 34 5E 31 38 30 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84\Package: 0x00000181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84\User: 0x00000004" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84\_IndexKeys:  55 73 65 72 5C 34 5C 31 61 38 34 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 34 5E 31 38 31 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a84" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181\1a84" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\Type: 0x00000010" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\Start: 0x00000003" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\ErrorControl: 0x00000001" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\ImagePath: ""C:\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.exe""" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\DisplayName: "EasyAntiCheat"" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\WOW64: 0x0000014C" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\ObjectName: "LocalSystem"" /f
REG DELETE "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher" /f
REG DELETE "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
REG DELETE "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
REG DELETE "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f
REG DELETE "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher" /f
REG DELETE "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
REG DELETE "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
REG DELETE "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\0" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000205B6" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000403D6" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000405DE" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000060286" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000009042E" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000A03B4" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000A0430" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000B0532" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000B05D6" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000C0430" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000C0586" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000E03D2" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000E0406" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000100430" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001103EE" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000011041E" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000012047E" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001303EE" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001304F2" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000014041E" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001703E6" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000170440" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001704FC" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\StreamMRU" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5CS-1-5-21-2532382528-581214834-2534474248-1001-MergedResources-2.pri" /f
cls
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTask" /disable >NUL 2>NUL
cls
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTaskLogon" /disable >NUL 2>NUL
cls
del C:\Windows\Prefetch
cls
del C:\windows\temp
cls
del /s /q C:\Users\%USERNAME%\AppData\Local\FiveM.app\logs
cls
del /s /q C:\Users\adminCaii\AppData\Local\Google\Chrome\User Data\Default\History 
cls 
del /s /q C:\Users\%USERNAME%\Recent
cls
del /s /q C:\Users\%USERNAME%\AppData\Local\FiveM.app\crashes
cls
del /q C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default
cls 
del /s /q C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data
cls
timeout /t 1 /nobreak > NUL


:: CLEARING RECYCLE BIN TOL ALL DRIVES
ECHO Clearing recycle bin to all drives...
rd /q /s %systemdrive%\$Recycle.Bin
rd /q /s A:\$Recycle.Bin
rd /q /s B:\$Recycle.Bin
rd /q /s C:\$Recycle.Bin
rd /q /s D:\$Recycle.Bin
rd /q /s E:\$Recycle.Bin
rd /q /s F:\$Recycle.Bin
rd /q /s G:\$Recycle.Bin
rd /q /s H:\$Recycle.Bin
rd /q /s I:\$Recycle.Bin
rd /q /s J:\$Recycle.Bin
rd /q /s K:\$Recycle.Bin
rd /q /s L:\$Recycle.Bin
rd /q /s M:\$Recycle.Bin
rd /q /s N:\$Recycle.Bin
rd /q /s O:\$Recycle.Bin
rd /q /s P:\$Recycle.Bin
rd /q /s Q:\$Recycle.Bin
rd /q /s R:\$Recycle.Bin
rd /q /s S:\$Recycle.Bin
rd /q /s T:\$Recycle.Bin
rd /q /s U:\$Recycle.Bin
rd /q /s V:\$Recycle.Bin
rd /q /s W:\$Recycle.Bin
rd /q /s X:\$Recycle.Bin
rd /q /s Y:\$Recycle.Bin
rd /q /s Z:\$Recycle.Bin
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\prefetch
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
deltree /y c:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default
deltree /y c:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default
timeout /t 1 /nobreak > NUL

:: CLEARING CACHE AND HISTORY TO ANY BROWSER 
@echo off
cd/
@echo
del *.log /a /s /q /f
@echo off

set ChromeDir=C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data

del /q /s /f "%ChromeDir%"
rd /s /q "%ChromeDir%"

@echo off

set DataDir=C:\Users\%USERNAME%\AppData\Local\Microsoft\Intern~1

del /q /s /f "%DataDir%"
rd /s /q "%DataDir%"

set History=C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\History

del /q /s /f "%History%"
rd /s /q "%History%"

set IETemp=C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Tempor~1

del /q /s /f "%IETemp%"
rd /s /q "%IETemp%"

set Cookies=C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Cookies

del /q /s /f "%Cookies%"
rd /s /q "%Cookies%"

C:\bin\regdelete.exe HKEY_CURRENT_USER "Software\Microsoft\Internet Explorer\TypedURLs"

@echo off

set FlashCookies=C:\Users\%USERNAME%\AppData\Roaming\Macromedia\Flashp~1

del /q /s /f "%FlashCookies%"
rd /s /q "%FlashCookies%"

:: DELETING LOGS AND SHITZ
@echo off


timeout /t 1 /nobreak > NUL
openfiles > NUL 2>&1
if %errorlevel%==0 (
    echo Running..
) else (
    echo You must run me as an Administrator. Exiting..
    echo.
    echo Right-click on me and select ^'Run as Administrator^' and try again.
    echo.
    pause > NUL
    
)

echo.

rem Delete Temporary Files
del /s /f /q %WinDir%\Temp\*.*
del /s /f /q %WinDir%\Prefetch\*.*
del /s /f /q %Temp%\*.*
del /s /f /q %AppData%\Temp\*.*
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.*

rem Delete Used Drivers Files (Not needed because already installed)
del /s /f /q %SYSTEMDRIVE%\AMD\*.*
del /s /f /q %SYSTEMDRIVE%\NVIDIA\*.*
del /s /f /q %SYSTEMDRIVE%\INTEL\*.*

rem Delete Temporary Folders
rd /s /q %WinDir%\Temp
rd /s /q %WinDir%\Prefetch
rd /s /q %Temp%
rd /s /q %AppData%\Temp
rd /s /q %HomePath%\AppData\LocalLow\Temp

rem Delete Used Drivers Folders (Not needed because already installed)
rd /s /q %SYSTEMDRIVE%\AMD
rd /s /q %SYSTEMDRIVE%\NVIDIA
rd /s /q %SYSTEMDRIVE%\INTEL

rem Recreate Empty Temporary Folders
md %WinDir%\Temp
md %WinDir%\Prefetch
md %Temp%
md %AppData%\Temp
md %HomePath%\AppData\LocalLow\Temp

@echo off

echo Cleaning system junk files, please wait…
REM displays a line of text

del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q “%userprofile%\Local Settings\Temporary Internet Files\*.*”
del /f /s /q “%userprofile%\Local Settings\Temp\*.*”
del /f /s /q “%userprofile%\recent\*.*”
del /s /f /q %windir%\Logs\CBS\CbsPersist*.log >nul 2>nul
del /s /f /q %windir%\Logs\MoSetup\*.log >nul 2>nul
del /s /f /q %windir%\Panther\*.log >nul 2>nul
del /s /f /q %windir%\logs\*.log >nul 2>nul
del /s /f /q %localappdata%\Microsoft\Windows\WebCache\*.log >nul 2>nul
rd /s /f /q %localappdata%\Microsoft\Windows\INetCache\*.log >nul 2>nul
del "%ProgramData%\Microsoft\Windows Defender\Network Inspection System\Support\*.log" /F /Q /S >nul 2>nul
del "%ProgramData%\Microsoft\Windows Defender\Scans\History\CacheManager" /F /Q /S >nul 2>nul
del "%ProgramData%\Microsoft\Windows Defender\Scans\History\ReportLatency\Latency" /F /Q /S >nul 2>nul
del "%ProgramData%\Microsoft\Windows Defender\Scans\History\Service\*.log" /F /Q /S >nul 2>nul
del "%ProgramData%\Microsoft\Windows Defender\Scans\MetaStore" /F /Q /S >nul 2>nul
del "%ProgramData%\Microsoft\Windows Defender\Support" /F /Q /S >nul 2>nul
del "%ProgramData%\Microsoft\Windows Defender\Scans\History\Results\Quick" /F /Q /S >nul 2>nul
del "%ProgramData%\Microsoft\Windows Defender\Scans\History\Results\Resource" /F /Q /S >nul 2>nul
del /Q "%userprofile%\AppData\Local\Microsoft\Edge\User Data\Default\Code Cache\js\*"
del /Q "%userprofile%\AppData\Local\Microsoft\Edge\User Data\Default\Code Cache\wasm\*"
del /Q "%userprofile%\AppData\Local\Microsoft\Edge\User Data\ShaderCache\GPUCache\*"
del /Q "%userprofile%\AppData\Local\Microsoft\Edge\User Data\Default\Cache\*"
del /Q "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Code Cache\js\*"
del /Q "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Code Cache\wasm\*"
del /Q "%userprofile%\AppData\Local\Google\Chrome\User DataS\haderCache\GPUCache\*"
del /Q "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Cache\*"
del /Q %userprofile%\AppData\Local\Microsoft\Windows\INetCache\IE\*
del /Q %userprofile%\AppData\Local\Microsoft\Windows\WebCache\*
timeout /t 1 /nobreak > NUL

:: Deleting Network Cache 
@echo off
ipconfig /release >nul 2>nul
ipconfig /renew >nul 2>nul
ipconfig /flushdns >nul 2>nul
netsh int ip reset >nul 2>nul
netsh winsock reset >nul 2>nul
netsh interface ipv4 reset >nul 2>nul
netsh interface ipv6 reset >nul 2>nul
timeout /t 1 /nobreak > NUL

:: Deleting Any Traces 

rem IE
taskkill /F /IM iexplore.exe
start "" "C:\Windows\System32\rundll32.exe" InetCpl.cpl,ClearMyTracksByProcess  255

:: Parse the Local AppData sub path
call :Expand xAppData "%%LocalAppData:%UserProfile%=%%"

set "xFirefox=\mozilla\firefox\profiles"
set "xChrome=\google\chrome\user data"
set "xOpera1=\Local\Opera\Opera"
set "xOpera2=\Roaming\Opera\Opera"

:: Start at the User directory
pushd "%UserProfile%\.."

taskkill /F /IM firefox.exe
taskkill /F /IM chrome.exe
taskkill /F /IM opera.exe

:: Loop through the Users
    for /D %%D in (*) do if exist "%%~fD%xAppData%" (
    rem Check for Firefox
    if exist "%%~fD%xAppData%%xFirefox%" (
        rd /s /q "%%~fD%xAppData%%xFirefox%"
    )

   rem Check for Chrome
   if exist "%%~fD%xAppData%%xChrome%" (
        rd /s /q "%%~fD%xAppData%%xChrome%"
    )

    rem Check for Opera
    if exist "%%~fD%xAppData%%xOpera1%" (
        rd /s /q "%%~fD%xAppData%%xOpera1%"
    )
    if exist "%%~fD%xAppData%%xOpera2%" (
        rd /s /q "%%~fD%xAppData%%xOpera2%"
    )
)

::::::::::::::::::::::::::::::
:Expand <Variable> <Value>
if not "%~1"=="" set "%~1=%~2"

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

@echo
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto -noadmin
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
echo All Event Logs have been cleared!

:do_clear
echo clearing %1
wevtutil.exe cl %1
timeout /t 1 /nobreak > NUL
:end
cls
Exit
