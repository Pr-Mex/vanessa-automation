# language: en

Feature: Examples of changing Vanessa Automation settings during script execution.

Scenario: Examples of changing Vanessa Automation settings during script execution.

* Changes to Vanessa Automation settings of the Boolean type (checkboxes)
		And I remove Vanessa Automation settings checkbox "FlagName"
		And I set Vanessa Automation settings checkbox "FlagName"

* Changes to the string and numeric settings of Vanessa Automation
		And I set Vanessa Automation setting "SetupName" to "Value"
									
* Save setting value to variable
		And I save the value of the Vanessa Automation setting "SetupName" as "VariableName"

		
	