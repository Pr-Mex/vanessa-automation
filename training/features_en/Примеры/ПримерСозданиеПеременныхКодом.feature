# language: ru

Feature: Демонстрация как создавать переменные кодом

Scenario: Демонстрация как создавать переменные кодом

* Creating a local variable
			And I execute 1C:Enterprise script
			"""bsl
				Контекст.Вставить("LocalVariable", "ЗначениеЛокальнойПеременной");
			"""
			And I display "LocalVariable" variable value
		
* Creating a global variable
			And I execute 1C:Enterprise script
			"""bsl
				КонтекстСохраняемый.Вставить("ГлобальнаяПеременная", "ЗначениеГлобальнойПеременной");
			"""
			And I display "$$GlobalVariable$$" variable value
			
			
