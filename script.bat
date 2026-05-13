@echo off
setlocal enabledelayedexpansion

:: Define a codificacao para UTF-8
chcp 65001 >nul

:: Redimensiona o console e altera o titulo
mode con: cols=120 lines=32
title AimSync

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
echo      ╔══════════════════════════════════════════════════════════════════════════════════════════════════╗
echo      ║                                                                                                  ║
echo      ║                     █████╗ ██╗███╗   ███╗███████╗██╗   ██╗███╗   ██╗ ██████╗                     ║
echo      ║                    ██╔══██╗██║████╗ ████║██╔════╝╚██╗ ██╔╝████╗  ██║██╔════╝                     ║
echo      ║                    ███████║██║██╔████╔██║███████╗ ╚████╔╝ ██╔██╗ ██║██║                          ║
echo      ║                    ██╔══██║██║██║╚██╔╝██║╚════██║  ╚██╔╝  ██║╚██╗██║██║                          ║
echo      ║                    ██║  ██║██║██║ ╚═╝ ██║███████║   ██║   ██║ ╚████║╚██████╗                     ║
echo      ║                    ╚═╝  ╚═╝╚═╝╚═╝     ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═══╝ ╚═════╝                     ║
echo      ║                                                                                                  ║
echo      ║                                           1.02 Stable                                            ║
echo      ║                                                                                                  ║
echo      ║                    [1] LATENCY PRESET                        [5] TOOLBOX                         ║
echo      ║                    [2] STABILITY PRESET                      [6] POWER PLAN                      ║
echo      ║                    [3] RAM ALLOCATION                        [7] TIMER RESOLUTION                ║
echo      ║                    [4] DISABLE GAMING OVERLAY                [8] ROUTE OPTIMIZER                 ║
echo      ║                                                                                                  ║
echo      ║                                 script created by Adrian Fawkes                                  ║
echo      ╚══════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p choice=" • SELECT AN OPTION: "







if "%choice%"=="1" goto high_end_tweaks
if "%choice%"=="2" goto mid_end_tweaks
if "%choice%"=="3" goto ram_allocation
if "%choice%"=="4" goto disable_gaming_overlay
if "%choice%"=="5" goto toolbox
if "%choice%"=="6" goto powerplan
if "%choice%"=="7" goto timer_resolution
if "%choice%"=="8" goto route_optimizer

echo Invalid choice! Please select a valid option.
pause
goto menu

:high_end_tweaks
cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║                      ‹ LATENCY PRESET ›                       ║
echo      ║                                                                ║
echo      ║                script created by Adrian Fawkes                 ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.

set /p confirm=" • Do you want to apply Latency Preset now? (y/n): "

if /i "%confirm%"=="y" (
    echo.
    echo Applying Latency Preset, please wait...
    setlocal enabledelayedexpansion

    for %%i in (0, 33, 67, 100) do (
        cls
        echo.
        echo Applying Latency Preset, please wait...
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

    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatDelay" /t REG_SZ /d "130" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatRate" /t REG_SZ /d "25" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "BounceTime" /t REG_SZ /d "0" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d "0" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "1" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Delay" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_DWORD /d 1000 /f >nul 2>&1
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

    bcdedit /deletevalue useplatformclock >nul 2>&1

    cls
    color 0A
    echo      ╔════════════════════════════════════════════════════════════════╗
    echo      ║                                                                ║
    echo      ║                      ‹ LATENCY PRESET ›                       ║
    echo      ║                                                                ║
    echo      ║                script created by Adrian Fawkes                 ║
    echo      ╚════════════════════════════════════════════════════════════════╝
    echo.
    timeout /t 1 >nul
    echo • LATENCY PRESET REGISTRY TWEAKS APPLIED.
    timeout /t 1 >nul
    echo • HPET FORCED TIMER REMOVED.
    timeout /t 1 >nul
    echo • CHANGES SUCCESSFULLY COMPLETED.
    echo.
) else (
    echo.
    echo LATENCY PRESET CANCELED.
)

pause
goto menu

:mid_end_tweaks
cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║                       ‹ STABILITY PRESET ›                       ║
echo      ║                                                                ║
echo      ║                script created by Adrian Fawkes                 ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.

set /p confirm=" • Do you want to apply Stability Preset now? (y/n): "

if /i "%confirm%"=="y" (
    echo.
    echo Applying Stability Preset, please wait...
    setlocal enabledelayedexpansion

    for %%i in (0, 33, 67, 100) do (
        cls
        echo.
        echo Applying Stability Preset, please wait...
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

    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatDelay" /t REG_SZ /d "130" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatRate" /t REG_SZ /d "25" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "BounceTime" /t REG_SZ /d "0" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d "0" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "1" /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Delay" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_DWORD /d 1000 /f >nul 2>&1
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

    bcdedit /deletevalue useplatformclock >nul 2>&1

    cls
    color 0A
    echo      ╔════════════════════════════════════════════════════════════════╗
    echo      ║                                                                ║
    echo      ║                       ‹ STABILITY PRESET ›                       ║
    echo      ║                                                                ║
    echo      ║                script created by Adrian Fawkes                 ║
    echo      ╚════════════════════════════════════════════════════════════════╝
    echo.
    timeout /t 1 >nul
    echo • STABILITY PRESET REGISTRY TWEAKS APPLIED.
    timeout /t 1 >nul
    echo • HPET FORCED TIMER REMOVED.
    timeout /t 1 >nul
    echo • CHANGES SUCCESSFULLY COMPLETED.
    echo.
) else (
    echo.
    echo STABILITY PRESET CANCELED.
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
echo      ║                script created by Adrian Fawkes                 ║
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
echo      ║                script created by Adrian Fawkes                 ║
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
echo      ║                script created by Adrian Fawkes                 ║
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
    echo      ║                script created by Adrian Fawkes                 ║
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


:toolbox
cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║                       ‹ CLEANOS TOOLBOX ›                      ║
echo      ║                                                                ║
echo      ║                script created by Adrian Fawkes                 ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.
echo Checking CleanOS Toolbox files...
echo.

set "TOOLBOX_DIR=%USERPROFILE%\Desktop\AimSync Toolbox"
set "TEMP_DIR=%TEMP%\AimSync_Toolbox"
set "ZIP_FILE=%TEMP%\AimSync_Toolbox\utilities.zip"
set "ZIP_URL=https://cdn.discordapp.com/attachments/1445290839067856926/1503640446650290287/utilities.zip?ex=6a0415ca&is=6a02c44a&hm=688ca978467b4bccb2c63056e732762b74d689cc8c65001704c159529d169ca5&"

if exist "%TOOLBOX_DIR%\utilities\Custom Resolution Utility\CRU.exe" if exist "%TOOLBOX_DIR%\utilities\Dism++\Dism++x64.exe" goto toolbox_menu

goto toolbox_apply

:toolbox_apply
if exist "%TEMP_DIR%" rmdir /s /q "%TEMP_DIR%" >nul 2>&1
mkdir "%TEMP_DIR%" >nul 2>&1
mkdir "%TOOLBOX_DIR%" >nul 2>&1

cls
color 0A
echo.
echo Downloading Toolbox using PowerShell...
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command "$ErrorActionPreference='Stop'; [Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12; $url=[Environment]::GetEnvironmentVariable('ZIP_URL'); $zip=[Environment]::GetEnvironmentVariable('ZIP_FILE'); $dest=[Environment]::GetEnvironmentVariable('TOOLBOX_DIR'); Invoke-WebRequest -Uri $url -OutFile $zip -UseBasicParsing -Headers @{'User-Agent'='Mozilla/5.0'}; if (-not (Test-Path $zip)) { throw 'ZIP file was not created.' }; Expand-Archive -Path $zip -DestinationPath $dest -Force"

set psResult=%errorlevel%

if not "%psResult%"=="0" (
    echo.
    echo • TOOLBOX DOWNLOAD OR EXTRACTION FAILED.
    echo • Error code: %psResult%
    echo.
    echo If the error says 403, 404 or Forbidden, the Discord link expired or blocked PowerShell.
    echo.
    pause
    goto menu
)

if exist "%ZIP_FILE%" del /f /q "%ZIP_FILE%" >nul 2>&1
if exist "%TEMP_DIR%" rmdir /s /q "%TEMP_DIR%" >nul 2>&1

goto toolbox_menu

:toolbox_menu
cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║                       ‹ CLEANOS TOOLBOX ›                      ║
echo      ║                                                                ║
echo      ║                script created by Adrian Fawkes                 ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.
echo • TOOLBOX IS READY TO USE.
echo.
echo Location:
echo %TOOLBOX_DIR%
echo.
echo      [1] Custom Resolution Utility
echo      [2] Dism++
echo      [3] Driver Store Explorer
echo      [4] hidusbf
echo      [5] Msi Mode
echo      [6] Process Lasso
echo.
echo      [7] Open Toolbox Folder
echo      [0] Back to Main Menu
echo.
set /p toolchoice=" • SELECT A TOOL: "

if "%toolchoice%"=="1" goto manual_cru
if "%toolchoice%"=="2" goto manual_dism
if "%toolchoice%"=="3" goto manual_driverstore
if "%toolchoice%"=="4" goto manual_hidusbf
if "%toolchoice%"=="5" goto manual_msimode
if "%toolchoice%"=="6" goto manual_processlasso
if "%toolchoice%"=="7" explorer "%TOOLBOX_DIR%" & goto toolbox_menu
if "%toolchoice%"=="0" goto menu

echo Invalid choice! Please select a valid option.
pause
goto toolbox_menu

:manual_cru
set "TOOL_NAME=Custom Resolution Utility"
set "TOOL_EXE=%TOOLBOX_DIR%\utilities\Custom Resolution Utility\CRU.exe"
set "MANUAL_FILE=%TOOLBOX_DIR%\Manual - Custom Resolution Utility.txt"
> "%MANUAL_FILE%" echo Custom Resolution Utility - Quick Manual
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Purpose:
>> "%MANUAL_FILE%" echo - Used to manage custom resolutions, refresh rates and monitor EDID-related settings.
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Basic use:
>> "%MANUAL_FILE%" echo 1. Open CRU as administrator.
>> "%MANUAL_FILE%" echo 2. Select your active monitor at the top.
>> "%MANUAL_FILE%" echo 3. Add or edit resolutions/refresh rates carefully.
>> "%MANUAL_FILE%" echo 4. Run restart64.exe to restart the graphics driver.
>> "%MANUAL_FILE%" echo 5. Test the resolution in Windows display settings.
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Warning:
>> "%MANUAL_FILE%" echo - Wrong values can cause black screen or display issues.
>> "%MANUAL_FILE%" echo - Use Reset-All if something goes wrong.
goto manual_open

:manual_dism
set "TOOL_NAME=Dism++"
set "TOOL_EXE=%TOOLBOX_DIR%\utilities\Dism++\Dism++x64.exe"
set "MANUAL_FILE=%TOOLBOX_DIR%\Manual - Dism++.txt"
> "%MANUAL_FILE%" echo Dism++ - Quick Manual
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Purpose:
>> "%MANUAL_FILE%" echo - Used for Windows cleanup, component cleanup and system maintenance.
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Basic use:
>> "%MANUAL_FILE%" echo 1. Open Dism++ as administrator.
>> "%MANUAL_FILE%" echo 2. Go to Cleanup.
>> "%MANUAL_FILE%" echo 3. Select safe cleanup options first.
>> "%MANUAL_FILE%" echo 4. Avoid removing components you do not understand.
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Warning:
>> "%MANUAL_FILE%" echo - Aggressive cleanup can remove rollback files or Windows components.
>> "%MANUAL_FILE%" echo - Create a restore point before deep cleanup.
goto manual_open

:manual_driverstore
set "TOOL_NAME=Driver Store Explorer"
set "TOOL_EXE=%TOOLBOX_DIR%\utilities\Driver Store Explorer\Rapr.exe"
set "MANUAL_FILE=%TOOLBOX_DIR%\Manual - Driver Store Explorer.txt"
> "%MANUAL_FILE%" echo Driver Store Explorer - Quick Manual
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Purpose:
>> "%MANUAL_FILE%" echo - Used to view and remove old driver packages from Windows Driver Store.
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Basic use:
>> "%MANUAL_FILE%" echo 1. Open as administrator.
>> "%MANUAL_FILE%" echo 2. Click Enumerate.
>> "%MANUAL_FILE%" echo 3. Use Select Old Drivers carefully.
>> "%MANUAL_FILE%" echo 4. Delete only old/unused drivers.
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Warning:
>> "%MANUAL_FILE%" echo - Do not remove active GPU, chipset, network or input drivers.
>> "%MANUAL_FILE%" echo - Removing the wrong driver can break devices.
goto manual_open

:manual_hidusbf
set "TOOL_NAME=hidusbf"
set "TOOL_EXE=%TOOLBOX_DIR%\utilities\hidusbf\DRIVER\Setup.exe"
set "MANUAL_FILE=%TOOLBOX_DIR%\Manual - hidusbf.txt"
> "%MANUAL_FILE%" echo hidusbf - Quick Manual
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Purpose:
>> "%MANUAL_FILE%" echo - Used to change USB polling rate for supported input devices.
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Basic use:
>> "%MANUAL_FILE%" echo 1. Open setup.exe as administrator.
>> "%MANUAL_FILE%" echo 2. Select the target USB device carefully.
>> "%MANUAL_FILE%" echo 3. Choose the polling rate.
>> "%MANUAL_FILE%" echo 4. Click Install Service or Restart if needed.
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Warning:
>> "%MANUAL_FILE%" echo - Selecting the wrong device can cause input issues.
>> "%MANUAL_FILE%" echo - Some mice/keyboards may not benefit from higher polling rates.
goto manual_open

:manual_msimode
set "TOOL_NAME=Msi Mode"
set "TOOL_EXE=%TOOLBOX_DIR%\utilities\Msi Mode\MSI mode v3.exe"
set "MANUAL_FILE=%TOOLBOX_DIR%\Manual - Msi Mode.txt"
> "%MANUAL_FILE%" echo MSI Mode Utility - Quick Manual
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Purpose:
>> "%MANUAL_FILE%" echo - Used to enable MSI/MSI-X interrupt mode for supported devices.
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Basic use:
>> "%MANUAL_FILE%" echo 1. Open as administrator.
>> "%MANUAL_FILE%" echo 2. Check supported devices like GPU, network or audio.
>> "%MANUAL_FILE%" echo 3. Enable MSI mode only for devices known to work well.
>> "%MANUAL_FILE%" echo 4. Reboot after applying.
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Warning:
>> "%MANUAL_FILE%" echo - Wrong changes can cause device instability.
>> "%MANUAL_FILE%" echo - Avoid changing everything at once.
goto manual_open

:manual_processlasso
set "TOOL_NAME=Process Lasso"
set "TOOL_EXE=%TOOLBOX_DIR%\utilities\Process Lasso\processlassosetup64.exe"
set "MANUAL_FILE=%TOOLBOX_DIR%\Manual - Process Lasso.txt"
> "%MANUAL_FILE%" echo Process Lasso - Quick Manual
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Purpose:
>> "%MANUAL_FILE%" echo - Used to manage process priority, CPU affinity and responsiveness behavior.
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Basic use:
>> "%MANUAL_FILE%" echo 1. Install or open Process Lasso.
>> "%MANUAL_FILE%" echo 2. Find your game process.
>> "%MANUAL_FILE%" echo 3. Avoid setting every process to high priority.
>> "%MANUAL_FILE%" echo 4. Use Performance Mode or Bitsum Highest Performance carefully.
>> "%MANUAL_FILE%" echo.
>> "%MANUAL_FILE%" echo Warning:
>> "%MANUAL_FILE%" echo - Bad priority/affinity settings can cause stutter or instability.
>> "%MANUAL_FILE%" echo - Test changes one by one.
goto manual_open

:manual_open
cls
color 0A
echo.
echo • Manual generated for: %TOOL_NAME%
echo.
echo Manual location:
echo %MANUAL_FILE%
echo.
start notepad "%MANUAL_FILE%"
echo.
echo Program path:
echo %TOOL_EXE%
echo.
if exist "%TOOL_EXE%" (
    echo • Opening %TOOL_NAME%...
    start "" "%TOOL_EXE%"
) else (
    echo.
    echo • EXECUTABLE NOT FOUND.
    echo • Check if the Toolbox was extracted correctly.
    echo.
    pause
)
timeout /t 1 >nul
goto toolbox_menu


:powerplan
cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║                        ‹ POWER PLAN ›                          ║
echo      ║                                                                ║
echo      ║                script created by Adrian Fawkes                 ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.
echo Downloading and applying CleanOS Ultimate Power Plan...
echo.

goto powerplan_apply

:powerplan_apply
set "POWER_DIR=%ProgramData%\AimSync\Power"
set "POWER_FILE=%ProgramData%\AimSync\Power\CleanOS_Ultimate.pow"
set "POWER_URL=https://cdn.discordapp.com/attachments/1445290839067856926/1503647604339376209/CleanOS_Ultimate.pow?ex=6a041c75&is=6a02caf5&hm=a33afb74e378b36c55c1c341721a116a79cd8ecd7529a053781702467de7c286&"
set "POWER_GUID=77777777-7777-7777-7777-777777777777"

if not exist "%POWER_DIR%" mkdir "%POWER_DIR%" >nul 2>&1
if exist "%POWER_FILE%" del /f /q "%POWER_FILE%" >nul 2>&1

cls
color 0A
echo.
echo Downloading CleanOS Ultimate Power Plan...
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command "$ErrorActionPreference='Stop'; [Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12; $url=[Environment]::GetEnvironmentVariable('POWER_URL'); $out=[Environment]::GetEnvironmentVariable('POWER_FILE'); Invoke-WebRequest -Uri $url -OutFile $out -UseBasicParsing -Headers @{'User-Agent'='Mozilla/5.0'}"

set psResult=%errorlevel%

if not "%psResult%"=="0" (
    echo.
    echo • POWER PLAN DOWNLOAD FAILED.
    echo • Error code: %psResult%
    echo.
    echo If the error says 403, 404 or Forbidden, the Discord link expired or blocked PowerShell.
    echo.
    pause
    goto menu
)

if not exist "%POWER_FILE%" (
    echo.
    echo • POWER PLAN FILE NOT FOUND AFTER DOWNLOAD.
    echo.
    pause
    goto menu
)

echo.
echo Importing power plan...
echo.

powercfg -delete %POWER_GUID% >nul 2>&1
powercfg -import "%POWER_FILE%" %POWER_GUID% >nul 2>&1
set importResult=%errorlevel%

if not "%importResult%"=="0" (
    echo.
    echo • POWER PLAN IMPORT FAILED.
    echo • Run this script as Administrator.
    echo.
    pause
    goto menu
)

powercfg -setactive %POWER_GUID% >nul 2>&1
set activeResult=%errorlevel%

if not "%activeResult%"=="0" (
    echo.
    echo • POWER PLAN ACTIVATION FAILED.
    echo • Run this script as Administrator.
    echo.
    pause
    goto menu
)

cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║                        ‹ POWER PLAN ›                          ║
echo      ║                                                                ║
echo      ║                script created by Adrian Fawkes                 ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.
timeout /t 1 >nul
echo • CLEANOS ULTIMATE POWER PLAN DOWNLOADED.
timeout /t 1 >nul
echo • POWER PLAN IMPORTED SUCCESSFULLY.
timeout /t 1 >nul
echo • POWER PLAN SET AS ACTIVE.
echo.
echo Location:
echo %POWER_FILE%
echo.
pause
goto menu


:timer_resolution
cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║                    ‹ TIMER RESOLUTION ›                        ║
echo      ║                                                                ║
echo      ║                script created by Adrian Fawkes                 ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.
echo Applying Timer Resolution startup holder...
echo.

goto timer_resolution_apply

:timer_resolution_apply
set "TR_DIR=%ProgramData%\AimSync\TimerResolution"
set "TR_PS1=%ProgramData%\AimSync\TimerResolution\CleanOS_TimerResolution.ps1"
set "TR_VBS=%ProgramData%\AimSync\TimerResolution\Start_TimerResolution_Hidden.vbs"
set "TR_TASK=AimSync Timer Resolution"

if not exist "%TR_DIR%" mkdir "%TR_DIR%" >nul 2>&1

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d 1 /f >nul 2>&1

> "%TR_PS1%" echo $code = @'
>> "%TR_PS1%" echo using System;
>> "%TR_PS1%" echo using System.Runtime.InteropServices;
>> "%TR_PS1%" echo public static class WinTimer {
>> "%TR_PS1%" echo     [DllImport("ntdll.dll", SetLastError=true)]
>> "%TR_PS1%" echo     public static extern int NtSetTimerResolution(uint DesiredResolution, bool SetResolution, out uint CurrentResolution);
>> "%TR_PS1%" echo }
>> "%TR_PS1%" echo '@
>> "%TR_PS1%" echo Add-Type $code -ErrorAction SilentlyContinue
>> "%TR_PS1%" echo $current = 0
>> "%TR_PS1%" echo [WinTimer]::NtSetTimerResolution(5000, $true, [ref]$current) ^| Out-Null
>> "%TR_PS1%" echo while ($true) { Start-Sleep -Seconds 3600 }

> "%TR_VBS%" echo Set WshShell = CreateObject("WScript.Shell")
>> "%TR_VBS%" echo WshShell.Run "powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File ""%TR_PS1%""", 0, False

schtasks /Create /TN "%TR_TASK%" /TR "wscript.exe \"%TR_VBS%\"" /SC ONLOGON /RL HIGHEST /F >nul 2>&1

taskkill /f /im powershell.exe /fi "WINDOWTITLE eq CleanOS_TimerResolution" >nul 2>&1
wscript.exe "%TR_VBS%" >nul 2>&1

cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║                    ‹ TIMER RESOLUTION ›                        ║
echo      ║                                                                ║
echo      ║                script created by Adrian Fawkes                 ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.
timeout /t 1 >nul
echo • GLOBAL TIMER RESOLUTION REGISTRY APPLIED.
timeout /t 1 >nul
echo • SILENT STARTUP HOLDER CREATED.
timeout /t 1 >nul
echo • TIMER RESOLUTION SET TO 0.5MS.
echo.
echo Location:
echo %TR_DIR%
echo.
pause
goto menu


:route_optimizer
cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║                      ‹ ROUTE OPTIMIZER ›                       ║
echo      ║                                                                ║
echo      ║                script created by Adrian Fawkes                 ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.
echo This option applies DSCP 46 QoS policies for popular online games.
echo.
echo NOTE: DSCP depends on your router, network and ISP.
echo It may improve traffic priority, but it does not guarantee lower ping.
echo.
set /p confirm=" • Do you want to apply Route Optimizer now? (y/n): "

if /i "%confirm%"=="y" goto route_optimizer_apply

echo.
echo ROUTE OPTIMIZER CANCELED.
pause
goto menu

:route_optimizer_apply
cls
color 0A
echo.
echo Applying Route Optimizer, please wait...
setlocal enabledelayedexpansion

for %%i in (0, 33, 67, 100) do (
    cls
    echo.
    echo Applying Route Optimizer, please wait...
    echo ═ ═ ═ ═ ═ ═ ═ ═ ═ ═ %%i%% ═ ═ ═ ═ ═ ═ ═ ═ ═ ═
    echo.
    echo LOADING PROGRESS...
    timeout /t 1 >nul
)

endlocal

set "QOS_PS=%TEMP%\AimSync_RouteOptimizer.ps1"

> "%QOS_PS%" echo $ErrorActionPreference = 'SilentlyContinue'
>> "%QOS_PS%" echo $apps = @(
>> "%QOS_PS%" echo 'VALORANT-Win64-Shipping.exe',
>> "%QOS_PS%" echo 'cs2.exe',
>> "%QOS_PS%" echo 'FortniteClient-Win64-Shipping.exe',
>> "%QOS_PS%" echo 'r5apex.exe',
>> "%QOS_PS%" echo 'Overwatch.exe',
>> "%QOS_PS%" echo 'Overwatch Launcher.exe',
>> "%QOS_PS%" echo 'cod.exe',
>> "%QOS_PS%" echo 'ModernWarfare.exe',
>> "%QOS_PS%" echo 'BlackOpsColdWar.exe',
>> "%QOS_PS%" echo 'League of Legends.exe',
>> "%QOS_PS%" echo 'LeagueClientUx.exe',
>> "%QOS_PS%" echo 'LeagueClientUxRender.exe',
>> "%QOS_PS%" echo 'Dota2.exe',
>> "%QOS_PS%" echo 'RocketLeague.exe',
>> "%QOS_PS%" echo 'RainbowSix.exe',
>> "%QOS_PS%" echo 'RainbowSix_Vulkan.exe',
>> "%QOS_PS%" echo 'TslGame.exe',
>> "%QOS_PS%" echo 'EscapeFromTarkov.exe',
>> "%QOS_PS%" echo 'RustClient.exe',
>> "%QOS_PS%" echo 'DayZ_x64.exe',
>> "%QOS_PS%" echo 'DeadByDaylight-Win64-Shipping.exe',
>> "%QOS_PS%" echo 'RobloxPlayerBeta.exe',
>> "%QOS_PS%" echo 'FiveM.exe',
>> "%QOS_PS%" echo 'FiveM_GTAProcess.exe',
>> "%QOS_PS%" echo 'GTA5.exe',
>> "%QOS_PS%" echo 'Minecraft.Windows.exe',
>> "%QOS_PS%" echo 'javaw.exe',
>> "%QOS_PS%" echo 'Albion-Online.exe',
>> "%QOS_PS%" echo 'Warframe.x64.exe',
>> "%QOS_PS%" echo 'destiny2.exe',
>> "%QOS_PS%" echo 'TheFinals.exe',
>> "%QOS_PS%" echo 'Discovery.exe',
>> "%QOS_PS%" echo 'MarvelRivals.exe',
>> "%QOS_PS%" echo 'Paladins.exe',
>> "%QOS_PS%" echo 'Smite.exe',
>> "%QOS_PS%" echo 'ffxiv_dx11.exe',
>> "%QOS_PS%" echo 'Wow.exe',
>> "%QOS_PS%" echo 'WowClassic.exe',
>> "%QOS_PS%" echo 'Gw2-64.exe',
>> "%QOS_PS%" echo 'PathOfExile_x64.exe',
>> "%QOS_PS%" echo 'PathOfExileSteam.exe',
>> "%QOS_PS%" echo 'Brawlhalla.exe',
>> "%QOS_PS%" echo 'MultiVersus-Win64-Shipping.exe',
>> "%QOS_PS%" echo 'TekkenGame-Win64-Shipping.exe',
>> "%QOS_PS%" echo 'StreetFighter6.exe',
>> "%QOS_PS%" echo 'MK12.exe',
>> "%QOS_PS%" echo 'FC24.exe',
>> "%QOS_PS%" echo 'FC25.exe',
>> "%QOS_PS%" echo 'eFootball.exe'
>> "%QOS_PS%" echo )
>> "%QOS_PS%" echo foreach ($app in $apps) {
>> "%QOS_PS%" echo     $safe = ($app -replace '[^a-zA-Z0-9]', '_')
>> "%QOS_PS%" echo     $name = "CleanOS DSCP 46 - $safe"
>> "%QOS_PS%" echo     Remove-NetQosPolicy -Name $name -Confirm:$false -ErrorAction SilentlyContinue ^| Out-Null
>> "%QOS_PS%" echo     New-NetQosPolicy -Name $name -AppPathNameMatchCondition $app -DSCPAction 46 -PolicyStore ActiveStore -ErrorAction SilentlyContinue ^| Out-Null
>> "%QOS_PS%" echo     New-NetQosPolicy -Name $name -AppPathNameMatchCondition $app -DSCPAction 46 -PolicyStore PersistentStore -ErrorAction SilentlyContinue ^| Out-Null
>> "%QOS_PS%" echo }
>> "%QOS_PS%" echo gpupdate /force ^| Out-Null
>> "%QOS_PS%" echo exit 0

powershell -NoProfile -ExecutionPolicy Bypass -File "%QOS_PS%" >nul 2>&1
set qosResult=%errorlevel%

if exist "%QOS_PS%" del /f /q "%QOS_PS%" >nul 2>&1

cls
color 0A
echo      ╔════════════════════════════════════════════════════════════════╗
echo      ║                                                                ║
echo      ║                      ‹ ROUTE OPTIMIZER ›                       ║
echo      ║                                                                ║
echo      ║                script created by Adrian Fawkes                 ║
echo      ╚════════════════════════════════════════════════════════════════╝
echo.
timeout /t 1 >nul
echo • DSCP 46 QOS POLICIES APPLIED.
timeout /t 1 >nul
echo • POPULAR ONLINE GAME EXECUTABLES ADDED.
timeout /t 1 >nul
echo • ROUTE OPTIMIZER COMPLETED.
echo.
echo You can check policies with:
echo Get-NetQosPolicy
echo.
pause
goto menu