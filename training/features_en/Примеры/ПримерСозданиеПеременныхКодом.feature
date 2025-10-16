# language: en

Feature: Demo of creating variables by code

Scenario: Demo of creating variables by code

* Creating a local variable
			And I execute 1C:Enterprise script
			"""bsl
				Context.Insert("LocalVariable", "LocalVariableValue");
			"""
			And I display "LocalVariable" variable value
		
* Creating a global variable
			And I execute 1C:Enterprise script
			"""bsl
				ContextSaved.Insert("GlobalVariable", "GlobalVariableValue");
			"""
			And I display "$$GlobalVariable$$" variable value
			
			