# language: ru

Feature: Демонстрация какие бывают типы переменных

Scenario: Демонстрация какие бывают типы переменных

* String variables. Main type.
		And I save "\"MyString\"" in "VariableStringType" variable
		And I save "\"Page1\" + \"Page2\"" in "VariableTwoStringsAddition" variable
		And I save "String(1+1)" in "VariableAddNumbersAsString" variable
		And I save "Left(CurrentDate(), 10)" in "CurrentDateAsString" variable

* Numeric variables
		And I save "1+1" in "VariableNumberType" variable

* Date type variables
		And I save "CurrentDate()" in "VariableDateType" variable
	
	
	


