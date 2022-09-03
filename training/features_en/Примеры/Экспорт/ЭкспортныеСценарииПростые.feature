# language: ru


@ExportScenarios


Feature: Подсценарии.


Scenario: Я вызываю подсценарий без параметров

	And Delay 1


Scenario: Я вызываю подсценарий с параметром "Param1"

	And I save "Param1" line to the variable "VariableName1"
	And I display "VariableName1" variable value
	
	And I save "[Param1] SecondPartString" line to the variable "VariableName2"
	And I display "VariableName2" variable value
	

