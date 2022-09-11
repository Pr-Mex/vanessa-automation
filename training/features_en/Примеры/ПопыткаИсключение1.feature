# language: en

Feature: Try/Except.

Scenario: Try/Except.

* The example of Try Except usage.

		Try
			And I click the button named "ButtonName1"
			And I click the button named "ButtonName2"
		Except
			And I close current window
			And I close current test client session
			
		// some actions

* Try/Except with error registration

		Try
			And I go to line in "TableName" table
				| 'ColumnName'      |
				| 'ColumnValue' |
		Except
			And I log the error "There is no required row in the table" by exception data
			
		// some actions