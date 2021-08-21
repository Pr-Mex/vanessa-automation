# language: en
# encoding: utf-8
#parent ua:
@UA29_Макеты_для_проверки_обработки_ошибок
#parent uf:
@UF9_Вспомогательные_фичи

@IgnoreOnCIMainBuild


Feature: ФичаДляПроверкиШагаПроверяющегоИсключение3

Scenario: ФичаДляПроверкиШагаПроверяющегоИсключение3_1
	When I Check the steps for Exception
		| 'And I input "15" text in the field named "Quantity" of "TabProducts" table' |
	And I store the error text into the variable "VariableName1"
	And 1C:Enterprise language expression "1=1" is true
	And I save "1" in "InitialCount" variable
	When I Check the steps for Exception
		| 'And 1C:Enterprise language expression "1=1" is true' |
		





