@echo off
set showhelp=false
IF /I "%1" EQU "--help" (set showhelp=true)
IF /I "%1" EQU "" (set showhelp=true)
IF [%1]==[] (set showhelp=true)

IF "%showhelp%" == "true" (
	echo Usage:    gfix ^<COMMIT^>
	echo Executes: git commit --fixup ^<COMMIT^>
	echo:
	echo Use git rebase --autosquach
	EXIT /B 0
)

git commit -a --fixup %1