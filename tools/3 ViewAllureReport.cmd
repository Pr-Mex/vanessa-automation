@echo allure.bat must be in the PATH
cd .\ServiceBases\allurereport
call allure generate --clean .\*
call allure open .\allure-report
