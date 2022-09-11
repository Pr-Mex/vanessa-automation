# language: en

Feature: Examples of step parameters

Scenario: Examples of step parameters

* Examples of steps with parameters of String type
	And a step with a String type parameter "Hello world!"
	And a step with a String type parameter 'Hello world!'
	
* Examples of steps with parameters of Number type
	And a step with a Number type parameter 0
	And a step with a Number type parameter 10
	And a step with a Number type parameter 0.1
	And a step with a Number type parameter -0.123
	
* Examples of steps with parameters of Date type
	And a step with a Date type parameter 08.04.81
	And a step with a Date type parameter 08.04.1981
