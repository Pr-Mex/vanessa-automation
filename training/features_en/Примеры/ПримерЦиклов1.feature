# language: en

Feature: Examples of loops.

Scenario: Examples of loops.

* Steps that are created as loops

		And for each line of "TableName" table I do
			And Delay 1
			// some actions

		And I repeat 10 times
			// some actions

		And for 100 seconds I do
			// some actions
			Then I continue the loop
			// some actions

		And While "BuiltInLanguageCondition" 1C:Enterprise script is True I do
			// some actions
			Then I interrupt the loop
			// some actions
