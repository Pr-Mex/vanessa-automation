# language: ru

Feature: Try/исключение.

Scenario: Try/исключение.

* The example of Try Except usage.

		Try
			And I click the button named "ButtonName1"
			And I click the button named "ButtonName2"
		Except
			And I close current window
			And I close current test client session
			
		// какие-то действия

* Try/Except with error registration

		Try
			And I go to line in "TableName" table
				| 'ИмяКолонки'      |
				| 'ЗначениеКолонки' |
		Except
			And I log the error "There is no required row in the table" by exception data
			
		// какие-то действия
