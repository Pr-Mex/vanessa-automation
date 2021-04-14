# language: en
# encoding: utf-8
#parent ua:
@UA24_Макеты_для_условий
#parent uf:
@UF9_Вспомогательные_фичи

@IgnoreOnCIMainBuild


Feature: ДляПроверкаРаботыУсловий29

Scenario: ДляПроверкаРаботыУсловий29
	If I save "0" in "Var" variable Then
		And I save "0" in "VarNew" variable
	Else	
		And I save "1" in "Var" variable

	And I display "Var" variable value