# language: ru

Feature: Как правильно проверить доступность кнопки, элемента или пункта меню.

Scenario: Как правильно проверить доступность кнопки, элемента или пункта меню.

* Availability/visibility check through a special step

		And a button named "ButtonName" exists
		When I Check the steps for Exception
				|'И я нажимаю на кнопку с именем "ButtonName"'|


* Availability/visibility check through Try Except

		And a button named "ButtonName" exists
		Try
			And I click the button named "ButtonName"
			Then I raise "The button was expected to be disabled." exception
		Except
			And Delay 0.1


		

