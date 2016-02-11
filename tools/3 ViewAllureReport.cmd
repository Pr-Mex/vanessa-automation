@echo allure.bat must be in the PATH
call allure generate .\..\Distr\allurereport
call allure report open
