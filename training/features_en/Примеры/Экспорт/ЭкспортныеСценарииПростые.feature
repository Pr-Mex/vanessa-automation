# language: en


@ExportScenarios


Feature: Subscripts.


Scenario: I'm calling a subscript without parameters

	And Delay 1


Scenario: I call the subscript with a parameter "Param1"

	And I save "Param1" line to the variable "VariableName1"
	And I display "VariableName1" variable value
	
	And I save "[Param1] SecondPartString" line to the variable "VariableName2"
	And I display "VariableName2" variable value
	
