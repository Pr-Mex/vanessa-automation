@echo allure.bat must be in the PATH
call allure generate .\ServiceBases\allurereport
call allure report open
