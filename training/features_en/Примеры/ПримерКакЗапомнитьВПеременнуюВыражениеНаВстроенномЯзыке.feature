# language: ru

Feature: Примеры, как запомнить в переменную выражение на встроенном языке 1С.

Scenario: Примеры, как запомнить в переменную выражение на встроенном языке 1С.

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
			ТекЗначение = Строка(ТекущаяДата());
			Контекст.Вставить("CurrentData2", ТекЗначение);
			КонтекстСохраняемый.Вставить("CurrentData2Global", ТекЗначение);
		"""
		And I display "CurrentData2" variable value
		And I display "CurrentData2Global" variable value
		
		
	
