@echo off

IF NOT EXIST %1 (
	touch %1
)
"C:\Program Files (x86)\Notepad++\notepad++.exe" %1