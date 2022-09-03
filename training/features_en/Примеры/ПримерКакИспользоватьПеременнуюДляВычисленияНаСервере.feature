# language: ru

Feature: Демонстрация как использовать служебные переменные

Scenario: Демонстрация как использовать служебные переменные

* The first option
		And I save "C:\Temp\Untitled-2.xml" file content to the variable "VariableName1"
		And I save "StrReplace($VariableName1$, \"\"\"\", \"\"\"\"\"\")" in "VariableName1" variable
		And I save "StrReplace($VariableName1$, Chars.LF, Chars.LF + \"|\")" in "VariableName1" variable
		And I execute 1C:Enterprise script at server
		"""bsl
			Сообщить("$ИмяПеременной1$");
		"""


* The second option
		And I save "C:\Temp\Untitled-2.xml" file content to the variable "VariableName2"
		And I execute 1C:Enterprise script
		"""bsl
			Ванесса.Объект.ЗначениеНаСервере = Контекст.ИмяПеременной2;
		"""
		And I execute 1C:Enterprise script at server
		"""bsl
			Сообщить(Объект.ЗначениеНаСервере);
		"""
		And I execute 1C:Enterprise script
		"""bsl
			Контекст.ИмяПеременной2 = Ванесса.Объект.ЗначениеНаСервере;
		"""

