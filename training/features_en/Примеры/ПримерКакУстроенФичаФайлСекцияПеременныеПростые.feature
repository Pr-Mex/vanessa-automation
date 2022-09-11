# language: en

Feature: Variables section

Variables:

	Var1 = "VariableStringTypeInQuotes"
	Var2 = 'VariableStringTypeInApostrophes'
	Var3 = 
	"""
	PartString1
	PartString2
	PartString3
	"""
	Var4 = "{String(1+1)}"
	Var5 = "{!String(1+1)}"
	Var6 = "Value={!String(1+1)}."
	Var7 = "PartLeft{Variable6}PartRight" 

Scenario: Variables section
	And I display "Var1" variable value
	And I save "Part3{Variable2}Part4" line to the variable "NewVariable1"
	And I display "NewVariable1" variable value
	And I display "Var3" variable value
	And I display "Var4" variable value
	And I display "Var5" variable value
	And I display "Var6" variable value
	And I display "Var7" variable value
	
