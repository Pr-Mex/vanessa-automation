#encoding utf-8
#language: en

@IgnoreOnCIMainBuild
@tree
@ExportScenarios

Feature: СлужебнаяФичаEN5


Scenario: I call english subscenario "Name"
	And I input "Name" text in the field named "Наименование"
	And I move to the next attribute
	Then the form attribute named "Наименование" became equal to "Name"


