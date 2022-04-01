@echo off
echo "Welcome to Template Generate For MERN STACK"
set /p MYNAME="Enter Project Name : "
mkdir %MYNAME%
cd %MYNAME%
mkdir Frontend
mkdir Backend



setlocal EnableDelayedExpansion
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
set "getKeyMacro=powershell -noprofile "^
    while (-not (37..40+13).contains($x)) {^
        $x = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown').VirtualKeyCode^
    }^
    if ($x -eq 13) {^
    'enter'^
    }^
    ('left','up','right','down')[$x - 37]^
""

set "option1=0"
set "option2=0"
set "option3=0"
set "option4=0"
set "selected=1"
:select
cls
echo Select React Framework
echo use ^<right^> arrow to continue, ^<up^> and ^<down^> to select, and ^<enter^> to toggle
FOR /L %%G IN (1,1,4) DO (
set "display=[ ]"
if !option%%G! equ 1 set "display=[x]"
if %%G equ !selected! set "display=^>!display!
if %%G==1 echo  !display! CoreUI,Bootstrap,MaterialUI, 
if %%G==2 echo  !display! Tailwind CSS 
if %%G==3 echo  !display! CoreUI Bootstrap MaterialUI
if %%G==4 echo  !display! CoreUI Bootstrap MaterialUI
)
FOR /F "delims==" %%G IN ('%getKeyMacro%') DO set "key=%%G"
if "%key%"=="up" set /a "selected-=1"
if "%key%"=="down" set /a "selected+=1"
if %selected% lss 1 set "selected=1"
if %selected% gtr 4 set "selected=4"
if "%key%"=="enter" goto toggle
if "%key%"=="right" goto OK
goto select

:toggle
set /a "option%selected%+=1"
set /a "option%selected%=!option%selected%!%%2"
goto select

:OK
cd Backend && mkdir config && mkdir controller && mkdir bin && mkdir models && mkdir routes && mkdir services && npx npm init --y && cd Backend && npm i express mongoose 
FOR /L %%G IN (1,1,4) DO (
if !option%%G! equ 1 (
if %%G == 1 echo "The value of variable c is 15" 
echo %%G selected
)
)


PAUSE