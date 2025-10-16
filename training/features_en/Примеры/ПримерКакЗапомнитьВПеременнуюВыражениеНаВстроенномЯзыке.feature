# language: en

Feature: Examples of storing the built-in 1C language expression in a variable.

Scenario: Examples of storing the built-in 1C language expression in a variable.

* A special step that evaluates 1C built-in language expression and places it in a variable (local)
		And I save "String(CurrentDate())" in "CurrentData" variable
		And I display "CurrentData" variable value
		
* A special step that evaluates 1C built-in language expression and places it in a variable (global)
		And I delete "CurrentDataGlobal" variable
		And I save "String(CurrentDate())" in "$$TekDateGlobally$$" variable
		And I display "CurrentDataGlobal" variable value
		
* Through direct execution of 1C code
		And I execute 1C:Enterprise script
		"""bsl
			CurrentValue = String(CurrentDate());
			Context.Insert("CurrentData2", CurrentValue);
			ContextSaved.Insert("CurrentData2Global", CurrentValue);
		"""
		And I display "CurrentData2" variable value
		And I display "CurrentData2Global" variable value
		
		
	