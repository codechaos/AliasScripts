@echo off

REM save git user.name as USERNAME
set USERNAME=%*
IF /I "%1" EQU "" (for /f "tokens=*" %%i in ('git config user.name') do set USERNAME=%%i)
IF [%1]==[] (for /f "tokens=*" %%i in ('git config user.name') do set USERNAME=%%i)


REM have to escape procent sign with procent sign!
git log --no-merges --pretty=format:"%%C(yellow)%%h %%Cblue%%>(10)%%ad %%Cgreen%%<(7)%%aN%%Cred%%d %%Creset%%s" --date=format:"%%d.%%m.%%Y %%H:%%M" --author="%USERNAME%" -n 20 