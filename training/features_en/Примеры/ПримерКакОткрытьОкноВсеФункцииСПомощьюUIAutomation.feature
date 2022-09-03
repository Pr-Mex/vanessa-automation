# language: ru

Feature: Пример как открыть окно "Все функции" с помощью UI Automation.

Scenario: Пример как открыть окно "Все функции" с помощью UI Automation.

	And I read current Test Client profile data
	And I click form item %1 PID %2 Title%3 Type UI Automation
	And Delay 1
	And I click form item %1 PID %2 Title%3 Type UI Automation

