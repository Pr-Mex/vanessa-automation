# language: en

Feature: Demo of a quick jump to error line

Scenario: Demo of a quick jump to error line 1
	And Delay 0.1
	Then I raise "Test exception 1" exception


Scenario: Demo of a quick jump to error line 2
	And Delay 0.1
	Then I raise "Test exception 2" exception

	
Scenario: Demo of a quick jump to error line 3
	And Delay 0.1
	Then I raise "Test exception 3" exception
	
