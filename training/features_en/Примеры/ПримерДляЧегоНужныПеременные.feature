# language: ru

Feature: Демонстрация работы с переменными

Scenario: Первый сценарий

* Creating and using a local variable. It can only be used in this script.
		And I save "Daisy LLC" line to the variable "CounterpartyName"
		And I input "$ClientName$" text in the field named "Client"

* Creating a global variable. It can be used in this and other scripts.
		And I delete "CounterpartyNameGlobal" variable
		And I save "Daisy LLC" line to the variable "$$AccountNameGlobally$$"
	
	
Scenario: Второй сценарий

	And I input "$$AccountNameGlobally$$" text in the field named "Client"

