#Requires -RunAsAdministrator
#Requires -Version 5.1

[CmdletBinding()]
param
(
	[Parameter(Mandatory = $false)]
	[string[]]
	$Functions
)

Clear-Host

$Host.UI.RawUI.WindowTitle = "Windows 10 Sophia Script v5.7"

Remove-Module -Name Sophia -Force -ErrorAction Ignore
Import-Module -Name $PSScriptRoot\Sophia.psd1 -PassThru -Force

Import-LocalizedData -BindingVariable Global:Localization -FileName Sophia

if ($Functions)
{
	Invoke-Command -ScriptBlock {Checkings}

	foreach ($Function in $Functions)
	{
		Invoke-Expression -Command $Function
	}

	Invoke-Command -ScriptBlock {Refresh; Errors}

	exit
}

# Please, do not touch this function
Checkings

# Create a restore point
# CreateRestorePoint

<#
#>
AdvertisingID -Disable
AppsSilentInstalling -Disable
AppSuggestions -Hide
BackgroundUWPApps -Disable
BingSearch -Disable
DiagnosticDataLevel -Minimal
DiagTrackService -Disable
ErrorReporting -Disable
LanguageListAccess -Disable
ScheduledTasks -Disable
SettingsSuggestedContent -Hide
ShareAcrossDevices -Disable
SigninInfo -Disable
TailoredExperiences -Disable
WindowsFeedback -Disable
WindowsWelcomeExperience -Hide
TaskbarSearch -Hide
TaskManagerWindow -Expanded

<#
	Errors output
	Please, do not touch this function
#>
Errors