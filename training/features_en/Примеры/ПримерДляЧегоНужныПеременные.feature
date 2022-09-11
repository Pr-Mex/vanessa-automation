# language: en

Feature: Demo of working with variables

Scenario: First script

* Creating and using a local variable. It can only be used in this script.
		And I save "Daisy LLC" line to the variable "CounterpartyName"
		And I input "$ClientName$" text in the field named "Client"

* Creating a global variable. It can be used in this and other scripts.
		And I delete "CounterpartyNameGlobal" variable
		And I save "Daisy LLC" line to the variable "$$AccountNameGlobally$$"
	
	
Scenario: Second script

	And I input "$$AccountNameGlobally$$" text in the field named "Client"
