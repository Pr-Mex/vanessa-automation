# language: en


Feature: Working with subscripts. Transfer of tables.


Scenario: Working with subscripts. Transfer of tables.

	And I call a subscript and pass one table to it
		|'New simple Gherkin table'|

	And I call a subscript and pass several tables to it
		||

		|'Another Gherkin table 2'|
