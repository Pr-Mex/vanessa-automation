# language: ru

Feature: Примеры циклов.

Scenario: Примеры циклов.

* Steps that are created as loops

		And for each line of "TableName" table I do
			And Delay 1
			//какие-то действия

		And I repeat 10 times
			// какие-то действия

		And for 100 seconds I do
			// какие-то действия
			Then I continue the loop
			// какие-то действия

		And While "BuiltInLanguageCondition" 1C:Enterprise script is True I do
			// какие-то действия
			Then I interrupt the loop
			// какие-то действия

