@echo off
set showhelp=false
IF /I "%1" EQU "--help" (set showhelp=true)

IF "%showhelp%" == "true" (
    echo Performs a git pull on current branch only and without updating remote refs
	echo Executes: git pull origin $^(git rev-parse --abbrev-ref HEAD^)
	EXIT /B 0
)

FOR /F "tokens=* USEBACKQ" %%F IN (`git rev-parse --abbrev-ref HEAD`) DO (
  SET branch=%%F
)

echo git pull origin %branch%
git pull origin %branch%