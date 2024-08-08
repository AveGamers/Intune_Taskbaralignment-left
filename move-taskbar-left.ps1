# PackageName: Taskbar-Left
# Description: This script will move the taskbar default to left aligned.
# Author: Jonas Techand
# Version: 1.0
# Date: 2024-08-08
# --------------------------------------------------------------------------------------------
# Changelog: Script created
# --------------------------------------------------------------------------------------------

$ScriptName = move-taskbar-left
Start-Transcript -Path $env:TEMP\Intune\$ScriptName.log -Append

$registryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"

$Name = "TaskbarAl" # Shift Start Menu Left

$value = "0"

New-ItemProperty -Path $registryPath -Name $Name -Value $value -PropertyType DWORD -Force -ErrorAction Ignore

Stop-Transcript