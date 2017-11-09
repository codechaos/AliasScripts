@echo off
IF "%1" == "" (
	git rebase -i --autosquash HEAD~5
) else (
	git rebase -i --autosquash HEAD~%1
)