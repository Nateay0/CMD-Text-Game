@echo off
title [The Deal]
color 0A 
if "%1" neq "" ( goto %1)
:Menu
cls
echo 1. Start
echo 2. Credits
echo 3. Exit
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Credits
if %answer%==3 goto Exit
:Exit
cls
echo Thanks for playing!
pause
exit /b
:Credits
cls
echo Credits
echo.
echo Thank you for playing [The Deal]!
echo Made by Nateay :D
pause
goto Menu
:Start_1
cls
echo TRANSMISSION FROM: JAMES M. CATHBY  ------- TRANSMITTING TO: PABLO ESCOBAR
echo .
echo Pablo, it's James where my drugs at? We had a deal! 
echo I get you 2mil and you give me drugs!
echo Also don't forget your being chased by the CIA so watch your six. So if you get caught deal's off.
echo James OUT!
echo TRANSMISSION ENDED.....
echo .
echo Would you like to continue?
echo 1. Yes
echo 2. No
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_2
if %answer%==2 goto Credits
pause
:Start_2
cls
echo MESSAGE FROM JAMES: I just sent you the pickup spot location.
echo *You start driving to the location as fast as you can.*
echo *You get stopped by the police*
echo There are five of them, and they're all armed.
echo You can drive away or shoot them or talk to them.
set /p answer=Would you like to talk or drive or shoot?
if %answer%==talk goto Talk_1
if %answer%==drive goto Run_1
if %answer%==shoot goto Shoot_1
pause
:Shoot_1
cls
echo You pull out your gun and try to scare them.
set /p answer= Type 1 and press Enter and wait to continue.
if %answer%==1 goto Fight_1_Loop
pause
:Run_1
cls
echo You try to drive away.
set /p answer= Type 1 and press Enter and wait to continue.
if %answer%==1 goto Fight_1_Loop
pause
:Talk_1
cls
echo *You start talking to the cops*
echo You: What's wrong???
echo You: Did I go too fast?
set /p answer= Type 1 and press Enter and wait to continue.
if %answer%==1 goto Fight_1_Loop
pause
:Fight_1_Loop
set /a num=%random%
if %num% gtr 4 goto Fight_1_Loop
if %num% lss 1 goto Fight_1_Loop
if %num%==1 goto Lose_Fight_1
if %num%==2 goto Win_Fight_1
if %num%==3 goto Win_Fight_1
if %num%==4 goto Win_Fight_1
:Lose_Fight_1
cls
echo You got caught and they found out that you were Pablo and arrested you. The Deal is now off.
pause
goto Menu
:Win_Fight_1
cls
echo You escaped.
echo You got to the drop-off site and got the money.
echo You were victorious.
set /p answer=Would you like to exit? [y/n]
if %answer%=='y' goto 'Save'
if %answer%=='n' goto 'Start_2'
:Save
goto Credits