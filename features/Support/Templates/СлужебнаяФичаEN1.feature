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
	Then "Справочник1 (создание)" window is opened
	And I input "111" text in the field named "Наименование"
	And I click "Записать и закрыть" button

Scenario: Close TestClient
	And I close TestClient session