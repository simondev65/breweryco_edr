$mypath = $MyInvocation.MyCommand.Path
$path= Split-Path $mypath -Parent
for ($num = 1 ; $num -le 9 ; $num++){    
  $a=30*($num-1)
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

  
`

 