# language: ru

Feature: Пример как открыть окно "О программе" и получить оттуда данные лицензий.

Scenario: Пример как открыть окно "О программе" и получить оттуда данные лицензий.

	And I read current Test Client profile data
	And I click form item %1 PID %2 Title%3 Type UI Automation
	And Delay 1
	And I click form item %1 PID %2 Title%3 Type UI Automation
	And Delay 1
	And I save form element presentation named "EditLicense" as "LicenseData"
	And I display "LicenseData" variable value
	And I click the button named "BtnOK"

