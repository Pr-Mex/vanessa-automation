#encoding utf-8
#language: en

@IgnoreOnCIMainBuild
@tree

Feature: СлужебнаяФичаEN4

Background:
	Given I launch TestClient opening script or connect the existing one

Scenario: СлужебнаяФичаEN4
	And In the command interface I select "Основная" "Справочник1"
	Then "Справочник1" window is opened
	And I click the button named "ФормаСоздать"
	Then "Справочник1 (create)" window is opened
	And I input "111" text in the field named "Наименование"
	And I move to the next attribute
	Then the form attribute named "Наименование" became equal to '111'
	And I call english subscenario "222"
	And I close "Справочник1 (create)*" window
	Then "1C:Enterprise" window is opened
	And I click "No" button

