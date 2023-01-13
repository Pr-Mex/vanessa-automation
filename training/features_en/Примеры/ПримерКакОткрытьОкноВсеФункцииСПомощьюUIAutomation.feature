# language: en

Feature: Example of opening the "All Functions" window using UI Automation.

Scenario: Example of opening the "All Functions" window using UI Automation.

	And I read current Test Client profile data
	And I click form item "$PIDTestClient$" "Service and settings" "" UI Automation
	And Delay 1
	And I click form item "$PIDTestClient$" "Functions for a technical specialist..." "" UI Automation
