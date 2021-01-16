# This script was generated with the help of 'Sophia Script Wrapper.exe'
# copy all the files from 'Wrapper' directory here and then run the GUI
# there's an option to run only selected options and then generate a 
# script that's similar to this!

Clear-Host
$Host.UI.RawUI.WindowTitle = 'Windows 10 Sophia Script v5.3.1 | Copyright farag & oz—zo, 2015 to 2021 | Happy New Year!'
Remove-Module -Name Sophia -Force -ErrorAction Ignore
Import-Module -Name $PSScriptRoot\Sophia.psd1 -PassThru -Force
Import-LocalizedData -BindingVariable Global:Localization -FileName Sophia
Checkings
Logging
CreateRestorePoint

DiagTrackService -Disable
DiagnosticDataLevel -Minimal
ErrorReporting -Disable
WindowsFeedback -Disable
ScheduledTasks -Disable
SigninInfo -Disable
LanguageListAccess -Disable
AdvertisingID -Disable
ShareAcrossDevices -Disable
WindowsWelcomeExperience -Hide
SettingsSuggestedContent -Hide
AppsSilentInstalling -Disable
TailoredExperiences -Disable
BingSearch -Disable

UninstallOneDrive

UninstallUWPApps

BackgroundUWPApps -Disable

AppSuggestions -Hide

PinControlPanel

PinCommandPrompt

Refresh
Errors