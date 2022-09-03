# language: ru

Feature: Пример как закрыть сеанс 1С в обычных формах с помощью UI Automation.

Scenario: Пример как закрыть сеанс 1С в обычных формах с помощью UI Automation.

	And I click Test Client element "File" "Button" UI Automation
	And Delay 0.1
	And I click Test Client element "Exit" "MenuItem" UI Automation

