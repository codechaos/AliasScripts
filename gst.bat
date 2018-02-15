@echo off
set showhelp=false
IF /I "%1" EQU "--help" (set showhelp=true)
IF /I "%1" EQU "" (set showhelp=true)
IF [%1]==[] (set showhelp=true)

IF "%showhelp%" == "true" (
    echo The command compares a commit with it's predecessor
	echo Usage:    gst ^<COMMIT^>
	echo Executes: git difftool --dir-diff ^<COMMIT^>~1 ^<COMMIT^>
	EXIT /B 0
)

git difftool --dir-diff %1~1 %1