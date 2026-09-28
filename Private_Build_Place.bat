::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFAldXxyMAE+1EbsQ5+n//Na17EQeW4I=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdFu5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFAldXxyMAE+/Fb4I5/jHzcaojWBdYrNxfZfeug==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------
@echo off
title RISXN PRIVATE BUILD PLACE
::Disable UAC
Reg.exe ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f > nul

:: Enable ANSI Escape Sequences
Reg.exe add "HKCU\CONSOLE" /v "VirtualTerminalLevel" /t REG_DWORD /d "1" /f  > nul

::Enable Delayed Expansion
setlocal EnableDelayedExpansion > nul
cls 

::Enable Restore points 
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f  >nul 2>&1
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "DisableConfig" /f >nul 2>&1
Reg.exe add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f  >nul 2>&1
powershell -ExecutionPolicy Unrestricted -NoProfile Enable-ComputerRestore -Drive 'C:\'>nul 2>&1
cls 

:: Creating Restore Point
echo Creating Restore Point


cls
set w=[97m
set p=[95m
set b=[96m

chcp 65001 >nul 2>&1
cls

goto menu 


:Menu
cls
echo.
echo.
echo.
echo.                                                                                                                                     
echo.       %f%%w%                      ██████╗ ██╗███████╗██╗  ██╗███╗   ██╗    ██████╗ ██████╗ ██╗██╗   ██╗    ██████╗ ██╗   ██╗██╗██╗     ██████╗ 
echo.       %f%%w%                      ██╔══██╗██║██╔════╝╚██╗██╔╝████╗  ██║    ██╔══██╗██╔══██╗██║██║   ██║    ██╔══██╗██║   ██║██║██║     ██╔══██╗
echo.       %f%%w%                      ██████╔╝██║███████╗ ╚███╔╝ ██╔██╗ ██║    ██████╔╝██████╔╝██║██║   ██║    ██████╔╝██║   ██║██║██║     ██║  ██║
echo.       %f%%w%                      ██╔══██╗██║╚════██║ ██╔██╗ ██║╚██╗██║    ██╔═══╝ ██╔══██╗██║╚██╗ ██╔╝    ██╔══██╗██║   ██║██║██║     ██║  ██║
echo.       %f%%w%                      ██║  ██║██║███████║██╔╝ ██╗██║ ╚████║    ██║     ██║  ██║██║ ╚████╔╝     ██████╔╝╚██████╔╝██║███████╗██████╔╝
echo.       %f%%w%                      ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝    ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝      ╚═════╝  ╚═════╝ ╚═╝╚══════╝╚═════╝ 
echo.       %f%%w% ------------------------------------------------------------------------------------------------------------------------------------------------------------------
echo.       %f%%w%
echo.       %f%%w%
echo.       %f%%w%                                                                                                                  %f%
echo.       %f%%w%                                                                                                                  %f%
echo.       %f%%f%
echo.       %f%%w%                                                                                                                  %f%
echo.       %f%%w%                      %f%[1]%w% Activate Private Build Place Pack                  %f%[2]%w% Disable Private Build Place Pack                               %f%        
echo.       %f%%w%                                                                                                                  %f%
echo.       %f%%w%                                                                                                                  %f%
echo.       %f%%w%                                                       %f%[3]%w% Discord                                                     %f%    
echo.       %f%%w%                                                                                                                  %f%


set /p input=:
if /i %input% == 1 goto a
if /i %input% == 2 goto b
if /i %input% == 3 start https://discord.gg/Risxn

) ELSE (
echo Invalid Input & goto menu
:MisspellRedirect
cls
echo WRONG SELECTION
timeout 2 
goto RedirectMenu

:RedirectMenu
cls
goto :menu

:a 
cls 
echo. IF YOU GET AN ERROR IT IS FINE I HAVE IT SET UP FOR UP TO 5 DRIVES AND IF YOU DON'T HAVE 5 IT GIVES ERROR (IGNORE)
echo.
echo [-] Restore Point
echo.

Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f  > nul
cls
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "DisableConfig" /f > nul
cls
Reg.exe  add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f  > nul
cls
powershell -ExecutionPolicy Unrestricted -NoProfile Enable-ComputerRestore -Drive 'C:\', 'D:\', 'E:\', 'F:\', 'G:\'  > nul
cls
powershell -ExecutionPolicy Unrestricted -NoProfile Checkpoint-Computer -Description 'Risxn Restore Point'  > nul

taskkill F FI IMAGENAME eq SystemSettings.exe
@echo
net stop wuauserv
net stop UsoSvc
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdate v DoNotConnectToWindowsUpdateInternetLocations t REG_DWORD d 1 f
@echo
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdate v SetDisableUXWUAccess t REG_DWORD d 1 f
@echo
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdateAU v NoAutoUpdate t REG_DWORD d 1 f
@echo
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdate v ExcludeWUDriversInQualityUpdate t REG_DWORD d 1 f
@echo
gpupdate force
@echo
rd s q CWindowsSoftwareDistribution
md CWindowsSoftwareDistribution
:success
cls
@echo off
echo.
echo  
set /p choice=Choose Strength (ONLY STRENGTH RIGHT NOW IS 1): 
if %choice% == 1 goto optimize



:optimize
@echo off
color 3
echo ::::::::::::::::::::::::::::::::::
echo :                                :
echo :                                :
echo :  Risxn's Private Build Place   :
echo :                                :
echo :                                :
echo :                                :
echo ::::::::::::::::::::::::::::::::::
echo loading
timeout 2 >nul
cls
pause
@echo off
netsh int tcp set global autotuninglevel=normal
netsh interface 6to4 set state disabled
netsh int tcp set global timestamps=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global chimney=disabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global rsc=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set security mpp=disabled
netsh int tcp set security profiles=disabled
netsh int ip set global icmpredirects=disabled
netsh int tcp set security mpp=disabled profiles=disabled
netsh int tcp set supplemental internet congestionprovider=ctcp
netsh interface teredo set state disabled
netsh winsock set autotuning on
netsh int isatap set state disable
netsh int ip set global taskoffload=disabled
netsh int ip set global neighborcachelimit=4096
forfiles -p "C:\Users\justin\AppData\Local\Temp" -s -m *.* /C "cmd /c del @path"
forfiles -p "C:\Windows\Temp" -s -m *.* /C "cmd /c del @path"
powercfg -setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 1
powercfg -setactive scheme_current
powershell "ForEach($v in (Get-Command -Name \"Set-ProcessMitigation\").Parameters[\"Disable\"].Attributes.ValidValues){Set-ProcessMitigation -System -Disable $v.ToString() -ErrorAction SilentlyContinue}"
powershell "Remove-Item -Path \"HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\*\" -Recurse -ErrorAction SilentlyContinue"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverride /t REG_DWORD /d 3 /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverrideMask /t REG_DWORD /d 3 /f
timeout 2 >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
echo Enabling TRIM !
fsutil behavior set DisableDeleteNotify 1
echo Clearing Cache Please Wait
color b
/s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
REM ; Hide Onedrive From Explorer
Reg.exe add "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
Reg.exe add "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
Reg.exe add "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
REM ; Turn Off Pc Charging Slowly Over Usb Notification Windows
Reg.exe add "HKCU\Software\Microsoft\Shell\USB" /v "NotifyOnWeakCharger" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DelayedAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DelayedAckTicks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "CongestionAlgorithm" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MultihopSets" /t REG_DWORD /d "15" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "FastCopyReceiveThreshold" /t REG_DWORD /d "16384" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "FastSendDatagramThreshold" /t REG_DWORD /d "16384" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultReceiveWindow" /t REG_DWORD /d "16384" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultSendWindow" /t REG_DWORD /d "16384" /f
net stop UsoSvc
@echo
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdate v DoNotConnectToWindowsUpdateInternetLocations t REG_DWORD d 1 f
@echo
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdate v SetDisableUXWUAccess t REG_DWORD d 1 f
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdateAU v NoAutoUpdate t REG_DWORD d 1 f
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdate v ExcludeWUDriversInQualityUpdate t REG_DWORD d 1 f
@echo
gpupdate force
rd s q CWindowsSoftwareDistribution
md CWindowsSoftwareDistribution
@echo
net start wuauserv
net start UsoSvc
echo Windows Updates Are Successfully Disabled!
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastCopyReceiveThreshold" /t REG_DWORD /d "16384" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastSendDatagramThreshold" /t REG_DWORD /d "16384" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DynamicSendBufferDisable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "IgnorePushBitOnReceives" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "NonBlockingSendSpecialBuffering" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "Domain" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "SearchList" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "UseDomainNameDevolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "DeadGWDetectDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "DontAddDefaultGatewayDefault" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "EnableIPAutoConfigurationLimits" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "EnableDca" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "200" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "EnableTCPA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "MaxForwardBufferMemory" /t REG_DWORD /d "600" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "NumForwardPackets" /t REG_DWORD /d "37" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "MaxNumForwardPackets" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "65534" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "80" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "1" /f
pause
echo.
echo.
echo.
echo.                                              %f% -----------------------------------
echo.                                              %f%  %w%  Success Restart your PC!  %f%
echo.                                              %f% -----------------------------------
pause > nul
cls
goto :menu

:b 
cls 
rstrui.exe
 echo.
echo.
echo.
echo.                                              %f% -----------------------------------
echo.                                              %f%  %w%  Success Restart your PC!  %f%
echo.                                              %f% -----------------------------------
pause > nul
cls
goto :menu