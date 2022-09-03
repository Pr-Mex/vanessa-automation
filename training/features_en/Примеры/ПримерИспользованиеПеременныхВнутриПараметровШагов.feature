# language: ru

Feature: Демонстрация как использовать переменные внутри параметров шагов

Scenario: Демонстрация как использовать переменные внутри параметров шагов

* The entire parameter value is replaced by the variable value
		And I save "Daisy LLC" line to the variable "CounterpartyName"
		And I input "$ClientName$" text in the field named "Counterparty"

* Part of the parameter value is replaced by the variable value
		And I save "LLC" line to the variable "VariableLLC"
		And I save "Daisy" line to the variable "VariableDaisy"
		And I input "$Variable1$ $Variable2$" text in the field named "Counterparty"
		

