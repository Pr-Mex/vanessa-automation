# language: en

Feature: Demo of viewing variable value

Scenario: Demo of viewing variable value
* Output of the variable to the user message window
		And I save "Page1" line to the variable "MyVariable"
		And I display "MyVariable" variable value

* String variables. Main type.
		And I save "\"MyString\"" in "VariableStringType" variable
		And I save "\"Page 1\" + \"Page 2\"" in "VariableTwoStringsAddition" variable
		And I save "String(1+1)" in "VariableAddNumbersAsString" variable
		And I save "Left(CurrentDate(), 10)" in "CurrentDateAsString" variable

* Numeric variables
		And I save "1+1" in "VariableNumberType" variable

* Date type variables
		And I save "CurrentDate()" in "VariableDateType" variable
	
	
	

