@echo off

@echo sync and update precommit1c hook

git submodule update --init --recursive .\..\vendor\precommit1c 
rem cd .\..\vendor\precommit1c\

rem xcopy .\ibService .\..\..\.git\hooks\ibService\ /Y /E /F
rem xcopy .\pre-commit .\..\..\.git\hooks\ /Y /F
rem xcopy .\v8Reader .\..\..\.git\hooks\v8Reader\ /Y /F
rem xcopy .\pyv8unpack.py .\..\..\.git\hooks\ /Y /F


@echo set the russian file support 
cd .\..\
git config --local core.quotepath false

@echo prepare contibiution environ
@echo oscript.io must be in the path and need to be greater than 1.0.12.44
oscript .\tools\onescript\build-service-conf.os
