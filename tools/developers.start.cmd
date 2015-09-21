@echo off

@echo sync and update precommit1c hook

cd .\..\vendor\precommit1c\

xcopy .\ibService .\..\..\.git\hooks\ibService\ /Y /E /F
xcopy .\pre-commit .\..\..\.git\hooks\ /Y /F
xcopy .\v8Reader .\..\..\.git\hooks\v8Reader\ /Y /F
xcopy .\pyv8unpack.py .\..\..\.git\hooks\ /Y /F

cd .\..\..\
git config --local core.quotepath false
