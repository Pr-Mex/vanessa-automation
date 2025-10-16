# language: en

Feature: How to check the availability of a button, item or menu item correctly.

Scenario: How to check the availability of a button, item or menu item correctly.

* Availability/visibility check through a special step

		And a button named "ButtonName" exists
		When I Check the steps for Exception
				|'And I click the button named "ButtonName"'|


* Availability/visibility check through Try Except

		And a button named "ButtonName" exists
		Try
			And I click the button named "ButtonName"
			Then I raise "The button was expected to be disabled." exception
		Except
			And Delay 0.1


		
