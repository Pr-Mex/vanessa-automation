# language: ru

Feature: Секция Переменные

Переменные:

	Перем1 = "VariableStringTypeInQuotes"
	Перем2 = 'VariableStringTypeInApostrophes'
	Перем3 = 
	"""
	ЧастьСтроки1
	ЧастьСтроки2
	ЧастьСтроки3
	"""
	Перем4 = "{String(1+1)}"
	Перем5 = "{!String(1+1)}"
	Перем6 = "Value={!String(1+1)}."
	Перем7 = "PartLeft{Variable6}PartRight" 

Scenario: Секция Переменные
	And I display "Var1" variable value
	And I save "Part3{Variable2}Part4" line to the variable "NewVariable1"
	And I display "NewVariable1" variable value
	And I display "Var3" variable value
	And I display "Var4" variable value
	And I display "Var5" variable value
	And I display "Var6" variable value
	And I display "Var7" variable value
	

