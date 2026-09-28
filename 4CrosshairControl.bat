@echo off
echo Batch File By @whofeature
taskkill F FI IMAGENAME eq SystemSettings.exe
@echo
net stop wuauserv
net stop UsoSvc
@echo
echo Do Not Connect To Any Windows Update Locations
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdate v DoNotConnectToWindowsUpdateInternetLocations t REG_DWORD d 1 f
@echo
echo Remove Access To Use All Windows Update Features
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdate v SetDisableUXWUAccess t REG_DWORD d 1 f
@echo
echo Disable Automatic Updates
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdateAU v NoAutoUpdate t REG_DWORD d 1 f
@echo
echo Do Not Include Drivers With Windows Update
reg add HKLMSOFTWAREPoliciesMicrosoftWindowsWindowsUpdate v ExcludeWUDriversInQualityUpdate t REG_DWORD d 1 f
@echo
gpupdate force
@echo
echo Deleting Windows Update Files
rd s q CWindowsSoftwareDistribution
md CWindowsSoftwareDistribution
@echo
net start wuauserv
net start UsoSvc
echo Windows Updates Are Successfully Disabled!
pause