# language: en


@ExportScenarios


Feature: Subscripts with tables.


Scenario: I call a subscript and pass one table to it

	And some step
	And the step accepting the table
		|'A simple Gherkin table'|
	And some step


Scenario: I call a subscript and pass several tables to it

	And the first step is taking the table
		|'A simple Gherkin table 1'|

	And the second step accepting the table
		|'A simple Gherkin table 2'|

	And the third step accepting the table
		|'A simple Gherkin table 3'|

	And the fourth step accepting the table
		|'A simple Gherkin table 4'|
