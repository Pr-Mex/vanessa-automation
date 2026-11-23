# language: en
# encoding: utf-8

@IgnoreOnCIMainBuild


Feature: ДляПроверкаРаботыУсловий30

Scenario: ДляПроверкаРаботыУсловий30
	
	And I save "0" in "Var" variable
	If I raise "ExceptionText" exception Then
		And I save "2" in "Var" variable
	ElseIf I raise "ExceptionText" exception Then
		And I save "3" in "Var" variable
	Else	
		And I save "1" in "Var" variable

	And I display "Var" variable value