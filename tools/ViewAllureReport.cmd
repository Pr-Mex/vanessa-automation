@echo allure.bat must be in the path
call allure generate .\..\Distr\allurereport
call allure report open
