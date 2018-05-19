@echo off


@echo set the russian file support 
cd .\..\
git config --local core.quotepath false

@echo oscript.io must be in the path and need to be greater than 1.0.12.44
oscript .\tools\onescript\build-service-conf.os
