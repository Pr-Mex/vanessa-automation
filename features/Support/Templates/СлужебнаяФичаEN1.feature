#language: en


@IgnoreOnCIMainBuild



Functionality: For test english feature

As <Role>
I want <functional description>
To <business effect>

Background:
	Given I connect to the TestClient or reconnect to existing


Scenario: Create record in spr1

	When in command interface group I select "Основная"
	And in the function panel I select "Справочник1"
	Then I see the window "Справочник1"
	And I click on the "Создать" button
	Then I see the window "Справочник1 (создание)"
	And I enter "111" in the field called "Наименование" 
	And I click on the "Записать и закрыть" button


Scenario: Close TestClient
	Given I close the session TESTCLIENT