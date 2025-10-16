# language: en


@ExportScenarios


Feature: Subscripts.


Scenario: I call a subsript without parameters

	And Delay 1


Scenario: I call the sub script with the parameter "Param1"

	And I save "Param1" line to the variable "VariableName1"
	And I display "VariableName1" variable value
	
	And I save "[Param1] SecondPartString" line to the variable "VariableName2"
	And I display "VariableName2" variable value
	
