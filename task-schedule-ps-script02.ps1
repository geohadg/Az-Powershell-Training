$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument '-ExecutionPolicy Bypass C:\Users\geoha\Az-Powershell-Training\task-schedule-ps-script01.ps1 -RunType $true -Path C:\Users\geoha\Az-Powershell-Training\task-schedule-ps-script01.ps1'
$trigger = New-ScheduledTaskTrigger -Daily -at "8:38 PM"

Register-ScheduledTask -action $action -trigger $trigger -TaskName "test5"
