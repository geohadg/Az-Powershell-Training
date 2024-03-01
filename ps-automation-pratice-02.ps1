$action = New-ScheduledTaskAction -Execute "powershell.exe" -argument "-file C:\Users\ggftt\OneDrive\Desktop\Azure Training\first-gitcl-demo\Az-Powershell-Training\ps-automation-practice.ps1"
$trigger = New-ScheduledTaskTrigger -Daily -at "8:38 PM"

Register-ScheduledTask -action $action -trigger $trigger -TaskName "test5"
