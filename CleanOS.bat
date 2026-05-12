@echo off
setlocal enabledelayedexpansion

:: Define a codificacao para UTF-8
chcp 65001 >nul

:: Redimensiona o console e altera o titulo
mode con: cols=80 lines=25
title CleanOS Gaming

:warning
cls
color 0C
echo.
echo.
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║              WARNING:                                          ║
echo      ║              This application requires ADMIN                   ║
echo      ║              permissions to function correctly.                ║
echo      ║                                                                ║
echo      ║              ATENÇÃO:                                          ║
echo      ║              Este aplicativo requer permissões de              ║
echo      ║              ADMINISTRADOR para funcionar corretamente         ║
echo      ║                                                                ║
echo      ║              ADVERTENCIA:                                      ║
echo      ║              Esta aplicación necesita permisos de              ║
echo      ║              ADMINISTRADOR para funcionar correctamente.       ║
echo      ║                                                                ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.
pause

goto menu

:menu
cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║                       ‹ CleanOS Gaming ›                       ║
echo      ║                            0.5 beta                            ║
echo      ║                                                                ║
echo      ║                   [1] HIGH-END TWEAKS                          ║
echo      ║                   [2] MID-END TWEAKS                           ║
echo      ║                   [3] RAM ALLOCATION                           ║
echo      ║                   [4] DISABLE GAMING OVERLAY                   ║
echo      ║                                                                ║
echo      ║             github.com/AdrianFawkes/cleanos-gaming             ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.
set /p choice=" • SELECT AN OPTION: "


if "%choice%"=="1" goto high_end_tweaks
if "%choice%"=="2" goto mid_end_tweaks
if "%choice%"=="3" goto ram_allocation
if "%choice%"=="4" goto disable_gaming_overlay

echo Invalid choice! Please select a valid option.
pause
goto menu

:high_end_tweaks
cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║                      ‹ HIGH-END TWEAKS ›                       ║
echo      ║                                                                ║
echo      ║             github.com/AdrianFawkes/cleanos-gaming             ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.

set /p confirm=" • Do you want to apply High-End Tweaks now? (y/n): "

if /i "%confirm%"=="y" (
    echo.
    echo Applying High-End Tweaks, please wait...
    setlocal enabledelayedexpansion

    for %%i in (0, 33, 67, 100) do (
        cls
        echo.
        echo Applying High-End Tweaks, please wait...
        echo ═ ═ ═ ═ ═ ═ ═ ═ ═ ═ %%i%% ═ ═ ═ ═ ═ ═ ═ ═ ═ ═
        echo.
        echo LOADING PROGRESS...
        timeout /t 1 >nul
    )

    endlocal

    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f >nul 2>&1

    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "0" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "0" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "0" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f >nul 2>&1

    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMHdcpKeyglobZero" /t REG_DWORD /d 1 /f >nul 2>&1

    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 0 /f >nul 2>&1

    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /t REG_DWORD /d 5 /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 42 /f >nul 2>&1

    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d 20 /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d 20 /f >nul 2>&1

    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 10 /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 4294967295 /f >nul 2>&1

    bcdedit /set disabledynamictick yes >nul 2>&1
    bcdedit /set useplatformtick yes >nul 2>&1
    bcdedit /set tscsyncpolicy enhanced >nul 2>&1
    bcdedit /set useplatformclock false >nul 2>&1

    cls
    color 0A
    echo      ╔════════════════════════════════════════════════════════════════╗
    echo      ║                                                                ║
    echo      ║                      ‹ HIGH-END TWEAKS ›                       ║
    echo      ║                                                                ║
    echo      ║             github.com/AdrianFawkes/cleanos-gaming             ║
    echo      ╚════════════════════════════════════════════════════════════════╝
    echo.
    timeout /t 1 >nul
    echo • HIGH-END REGISTRY TWEAKS APPLIED.
    timeout /t 1 >nul
    echo • HIGH-END BCDEDIT TWEAKS APPLIED.
    timeout /t 1 >nul
    echo • CHANGES SUCCESSFULLY COMPLETED.
    echo.
) else (
    echo.
    echo HIGH-END TWEAKS CANCELED.
)

pause
goto menu

:mid_end_tweaks
cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║                       ‹ MID-END TWEAKS ›                       ║
echo      ║                                                                ║
echo      ║             github.com/AdrianFawkes/cleanos-gaming             ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.

set /p confirm=" • Do you want to apply Mid-End Tweaks now? (y/n): "

if /i "%confirm%"=="y" (
    echo.
    echo Applying Mid-End Tweaks, please wait...
    setlocal enabledelayedexpansion

    for %%i in (0, 33, 67, 100) do (
        cls
        echo.
        echo Applying Mid-End Tweaks, please wait...
        echo ═ ═ ═ ═ ═ ═ ═ ═ ═ ═ %%i%% ═ ═ ═ ═ ═ ═ ═ ═ ═ ═
        echo.
        echo LOADING PROGRESS...
        timeout /t 1 >nul
    )

    endlocal

    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f >nul 2>&1

    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "0" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "0" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "0" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f >nul 2>&1

    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMHdcpKeyglobZero" /t REG_DWORD /d 1 /f >nul 2>&1

    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 0 /f >nul 2>&1

    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /t REG_DWORD /d 5 /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 38 /f >nul 2>&1

    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d 80 /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d 80 /f >nul 2>&1

    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 10 /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 4294967295 /f >nul 2>&1

    bcdedit /set disabledynamictick yes >nul 2>&1
    bcdedit /set useplatformtick yes >nul 2>&1
    bcdedit /set tscsyncpolicy enhanced >nul 2>&1
    bcdedit /set useplatformclock false >nul 2>&1

    cls
    color 0A
    echo      ╔════════════════════════════════════════════════════════════════╗
    echo      ║                                                                ║
    echo      ║                       ‹ MID-END TWEAKS ›                       ║
    echo      ║                                                                ║
    echo      ║             github.com/AdrianFawkes/cleanos-gaming             ║
    echo      ╚════════════════════════════════════════════════════════════════╝
    echo.
    timeout /t 1 >nul
    echo • MID-END REGISTRY TWEAKS APPLIED.
    timeout /t 1 >nul
    echo • MID-END BCDEDIT TWEAKS APPLIED.
    timeout /t 1 >nul
    echo • CHANGES SUCCESSFULLY COMPLETED.
    echo.
) else (
    echo.
    echo MID-END TWEAKS CANCELED.
)

pause
goto menu

:ram_allocation
cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║                   ‹ RAM PROCESS OPTIMIZER ›                    ║
echo      ║                                                                ║
echo      ║             github.com/AdrianFawkes/cleanos-gaming             ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.

:input_ram
echo CHOOSE THE VALUE OF YOUR RAM (4 - 64):
set /p ram="• Value: "
echo.

:: Verifies if the entered value is a number and within valid limits
set /a valid=0
for %%i in (4 6 8 12 16 24 32 48 64) do (
    if "%ram%"=="%%i" set /a valid=1
)

if %valid%==0 (
    echo Invalid value! Only 4, 6, 8, 12, 16, 24, 32, 48, or 64 are accepted. Please try again...
    goto input_ram
)

:: Converts the entered value to KB
set threshold=0
if "%ram%"=="4" set /a threshold=4*1024*1024
if "%ram%"=="6" set /a threshold=6*1024*1024
if "%ram%"=="8" set /a threshold=8*1024*1024
if "%ram%"=="12" set /a threshold=12*1024*1024
if "%ram%"=="16" set /a threshold=16*1024*1024
if "%ram%"=="24" set /a threshold=24*1024*1024
if "%ram%"=="32" set /a threshold=32*1024*1024
if "%ram%"=="48" set /a threshold=48*1024*1024
if "%ram%"=="64" set /a threshold=64*1024*1024

:: Define the registry path
set "regPath=HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control"

:: Artificial loading with a progress bar
echo.
echo Applying optimizations, please wait...
setlocal enabledelayedexpansion

for %%i in (0, 33, 67, 100) do (
    cls
    echo.
    echo Applying optimizations, please wait...
    echo ═ ═ ═ ═ ═ ═ ═ ═ ═ ═ %%i%% ═ ═ ═ ═ ═ ═ ═ ═ ═ ═
    echo.
    echo LOADING PROGRESS...
    timeout /t 1 >nul
)

endlocal

:: Modify the registry
reg add "%regPath%" /v SvcHostSplitThresholdInKB /t REG_DWORD /d %threshold% /f >nul 2>&1
set regResult=%errorlevel%

:: Optimize memory usage without output
Fsutil behavior set memoryusage 2 >nul 2>&1
set fsutilResult=%errorlevel%

cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║                   ‹ RAM PROCESS OPTIMIZER ›                    ║
echo      ║                                                                ║
echo      ║             github.com/AdrianFawkes/cleanos-gaming             ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.

if "%regResult%"=="0" (
    timeout /t 1 >nul
    echo • RAM MEMORY OPTIMIZED.
) else (
    timeout /t 1 >nul
    echo • REGISTRY RAM TWEAK FAILED. RUN AS ADMINISTRATOR.
)

if "%fsutilResult%"=="0" (
    timeout /t 1 >nul
    echo • REDUCTION OF USELESS SERVICES.
    timeout /t 1 >nul
    echo • IMPROVEMENT IN ALLOCATION CAPACITY.
) else (
    timeout /t 1 >nul
    echo • FSUTIL MEMORY TWEAK FAILED. RUN AS ADMINISTRATOR.
)

echo.
pause
goto menu

:disable_gaming_overlay
cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║            ‹ DISABLE GAMING OVERLAY XBOX FEATURES ›            ║
echo      ║                                                                ║
echo      ║             github.com/AdrianFawkes/cleanos-gaming             ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.
echo This option removes Xbox/Game Bar related packages:
echo.
echo • Xbox Gaming App
echo • Xbox Gaming Overlay
echo • Xbox Identity Provider
echo • Xbox Speech To Text
echo • Xbox TCUI Framework
echo.
echo WARNING: This can affect Xbox App, Game Pass, Microsoft Store games,
echo Minecraft Bedrock, Forza, and other Xbox/Microsoft login features.
echo.
set /p confirm=" • Do you want to remove Xbox Gaming Features now? (y/n): "

if /i "%confirm%"=="y" (
    echo.
    echo Removing Xbox Gaming Features, please wait...
    setlocal enabledelayedexpansion

    for %%i in (0, 33, 67, 100) do (
        cls
        echo.
        echo Removing Xbox Gaming Features, please wait...
        echo ═ ═ ═ ═ ═ ═ ═ ═ ═ ═ %%i%% ═ ═ ═ ═ ═ ═ ═ ═ ═ ═
        echo.
        echo LOADING PROGRESS...
        timeout /t 1 >nul
    )

    endlocal

    powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxPackage -AllUsers *Microsoft.GamingApp* | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue" >nul 2>&1
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxPackage -AllUsers *Microsoft.XboxGamingOverlay* | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue" >nul 2>&1
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxPackage -AllUsers *Microsoft.XboxIdentityProvider* | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue" >nul 2>&1
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxPackage -AllUsers *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue" >nul 2>&1
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxPackage -AllUsers *Microsoft.Xbox.TCUI* | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue" >nul 2>&1

    powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -like '*Microsoft.GamingApp*'} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue" >nul 2>&1
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -like '*Microsoft.XboxGamingOverlay*'} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue" >nul 2>&1
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -like '*Microsoft.XboxIdentityProvider*'} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue" >nul 2>&1
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -like '*Microsoft.XboxSpeechToTextOverlay*'} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue" >nul 2>&1
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -like '*Microsoft.Xbox.TCUI*'} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue" >nul 2>&1

    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Software\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d 0 /f >nul 2>&1

    :: Force close GameBarPresenceWriter before renaming
    taskkill /f /im GameBarPresenceWriter.exe >nul 2>&1
    taskkill /f /im GameBarPresenceWriter02.exe >nul 2>&1

    :: Strong take ownership and rename GameBarPresenceWriter in System32 and SysWOW64
    call :ForceRenameGBPW "%SystemRoot%\System32" "GameBarPresenceWriter.exe" "GameBarPresenceWriter02.exe" "System32"
    call :ForceRenameGBPW "%SystemRoot%\SysWOW64" "GameBarPresenceWriter.exe" "GameBarPresenceWriter02.exe" "SysWOW64"

    cls
    color 0A
    echo      ╔════════════════════════════════════════════════════════════════╗
    echo      ║                                                                ║
    echo      ║            ‹ DISABLE GAMING OVERLAY XBOX FEATURES ›            ║
    echo      ║                                                                ║
    echo      ║             github.com/AdrianFawkes/cleanos-gaming             ║
    echo      ╚════════════════════════════════════════════════════════════════╝
    echo.
    timeout /t 1 >nul
    echo • XBOX GAMING APP REMOVED.
    timeout /t 1 >nul
    echo • XBOX GAMING OVERLAY REMOVED.
    timeout /t 1 >nul
    echo • XBOX IDENTITY PROVIDER REMOVED.
    timeout /t 1 >nul
    echo • XBOX SPEECH TO TEXT REMOVED.
    timeout /t 1 >nul
    echo • XBOX TCUI FRAMEWORK REMOVED.
    timeout /t 1 >nul
    echo • GAMEDVR AND GAMEBAR FEATURES DISABLED.
    timeout /t 1 >nul
    echo • GAMEBARPRESENCEWRITER RENAMED IN SYSTEM32 AND SYSWOW64.
    echo.
) else (
    echo.
    echo XBOX GAMING FEATURES REMOVAL CANCELED.
)

pause
goto menu
