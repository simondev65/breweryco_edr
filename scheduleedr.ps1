$mypath = $MyInvocation.MyCommand.Path
$path= Split-Path $mypath -Parent
#first script to run now (in 1 hour) : conti
  $date=(Get-date).AddHours(1) 
  
  write-output $date
  
  $action = New-ScheduledTaskAction -Execute "$path\edr0.ps1" 

  $trigger =  New-ScheduledTaskTrigger -Once -At $date
  $principal = New-ScheduledTaskPrincipal -UserID "$env:USERDOMAIN\$env:USERNAME" -LogonType S4U -RunLevel Highest 
  Write-Output $action  $trigger $principal
  
  Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "edrattack0" -Description "edr0.ps1"  -Force
 
  write-host "the first attack will run in 1 hour, now creating the 9 attacks, scheduled one per month over next 9 months"

#scripts to run in the next 9 months, 1 per month

for ($num = 1 ; $num -le 9 ; $num++){    
  $a=30*($num)
  write-output $num
  write-output $a
  $date=(Get-date).AddDays($a)
  $date=($date).AddHours(1) 
  write-output $date
  
  $action = New-ScheduledTaskAction -Execute "$path\edr$num.bat" 

  $trigger =  New-ScheduledTaskTrigger -Once -At $date
  $principal = New-ScheduledTaskPrincipal -UserID "$env:USERDOMAIN\$env:USERNAME" -LogonType S4U -RunLevel Highest 
  Write-Output $action  $trigger $principal
  
  Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "edrattack$num" -Description "edr$num.bat"  -Force
  } 

  
write-host "the 10 schedule task have been created, now it is mandatory to modify them to run without being logged on : to do so you MUST go into task scheduler->library, for each of the 10 schedul tasks click properties->run wheter the user is logged on or not"

Read-Host -Prompt "Press Enter to exit"
break

 