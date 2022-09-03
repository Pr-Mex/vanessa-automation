# language: ru

Feature: Демонстрация быстрого перехода к строке с ошибкой

Scenario: Демонстрация быстрого перехода к строке с ошибкой 1
	And Delay 0.1
	Then I raise "Test exception 1" exception


Scenario: Демонстрация быстрого перехода к строке с ошибкой 2
	And Delay 0.1
	Then I raise "Test exception 2" exception

	
Scenario: Демонстрация быстрого перехода к строке с ошибкой 3
	And Delay 0.1
	Then I raise "Test exception 3" exception
	

