#language: en


@IgnoreOnCIMainBuild



Functionality: For test english feature

As <Role>
I want <functional description>
To <business effect>

Background:
	Given I launch TestClient opening script or connect the existing one


Scenario: Create record in spr1

	And In the command interface I select "Основная" "Справочник1"
	Then "Справочник1" window is opened
	And I click the button named "ФормаСоздать"
	Then "Справочник1 (create)" window is opened
	And I input "NewElementEN1" text in the field named "Наименование"
	And I click "Save and close" button
	And I save "1" in "variable" variable
	If the field named "Наименование" in "Список" table is set to 'NewElementEN1' Then
		And I save "2" in "variable" variable
	Then "variable" variable is equal to 2

	
Scenario: Close TestClient
	And I close TestClient session