# language: en
# encoding: utf-8

@IgnoreOnCIMainBuild


Feature: ДляПроверкаРаботыУсловий29

Scenario: ДляПроверкаРаботыУсловий29
	If I save "0" in "Var" variable Then
		And I save "0" in "VarNew" variable
	Else	
		And I save "1" in "Var" variable

	And I display "Var" variable value