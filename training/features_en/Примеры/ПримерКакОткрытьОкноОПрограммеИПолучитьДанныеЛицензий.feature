# language: en

Feature: Example of opening the "About..." window and retrieving license data from there.

Scenario: Example of opening the "About..." window and retrieving license data from there.

	And I read current Test Client profile data
	And I click form item "$PIDTestClient$" "Service and settings" "" UI Automation
	And Delay 1
	And I click form item "$PIDTestClient$" "About..." "" UI Automation
	And Delay 1
	And I save form element presentation named "EditLicense" as "LicenseData"
	And I display "LicenseData" variable value
	And I click the button named "BtnOK"
