@echo off
IF "%1" == "" (
	git rebase -i HEAD~5
) else (
	git rebase -i HEAD~%1
)