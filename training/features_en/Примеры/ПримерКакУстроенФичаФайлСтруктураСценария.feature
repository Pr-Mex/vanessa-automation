# language: en

Feature: Functionality name


Scenario Outline: Structure of script 1

	Given initial conditions <Parameter1>

	Then I do the <Parameter2> actions and other "RegularParameter" actions

	Then I get the result <Parameter3>

	Examples:
		| 'Parameter1' | 'Parameter2' | 'Parameter3' |
		| 'Value1' | 'Value2' | 'Value3' |
		| 'Value4' | 'Value5' | 'Value6' |


