@echo off
IF "%1" == "" (
	git rebase -i --autosquash HEAD~1
) else (
	git rebase -i --autosquash %1
)