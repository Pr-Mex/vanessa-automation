# language: en

Feature: Demo of the peculiarities of passing variables to the steps that evaluate the expression.

Scenario: Demo of the peculiarities of passing variables to the steps that evaluate the expression.
* Creating variables
		And I save "Page1" line to the variable "MyVariable1"
		And I save "Page2" line to the variable "MyVariable2"

* Using a variable in an expression with $ characters
		And I save "\"$MyVariable1$\" + \"$MyVariable2$\"" in "VariableStringType" variable

* Using a variable in an expression with Context (or ContextStored for global variables)
		And I save "Context.MyVariable1 + Context.MyVariable2" in "VariableStringType" variable
	
* Using a variable in steps executing a code snippet in 1C built-in language
		And I execute 1C:Enterprise script
		"""bsl
			Message("ValueSumTwoVariables1=" + "$MyVariable1$" + "$MyVariable2$");
			Message("ValueSumTwoVariables2=" + Context.MyVariable1 + Context.MyVariable2);
		"""
		
