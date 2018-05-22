@echo off
set showhelp=false
IF /I "%1" EQU "--help" (set showhelp=true)

IF "%showhelp%" == "true" (
    echo The command compares the working directory with HEAD
	echo Usage:    gwc
	echo Executes: git difftool --dir-diff
	EXIT /B 0
)

git difftool --dir-diff