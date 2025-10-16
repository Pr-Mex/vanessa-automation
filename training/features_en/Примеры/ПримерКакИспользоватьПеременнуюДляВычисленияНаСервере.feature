# language: en

Feature: Demo of service variables usage

Scenario: Demo of service variables usage

* The first option
		And I save "C:\Temp\Untitled-2.xml" file content to the variable "VariableName1"
		And I save "StrReplace($VariableName1$, \"\"\"\", \"\"\"\"\"\")" in "VariableName1" variable
		And I save "StrReplace($VariableName1$, Chars.LF, Chars.LF + \"|\")" in "VariableName1" variable
		And I execute 1C:Enterprise script at server
		"""bsl
			Message("$VariableName1$");
		"""


* The second option
		And I save "C:\Temp\Untitled-2.xml" file content to the variable "VariableName2"
		And I execute 1C:Enterprise script
		"""bsl
			Vanessa.Object.ValueOnServer = Context.VariableName2;
		"""
		And I execute 1C:Enterprise script at server
		"""bsl
			Message(Object.ValueOnServer);
		"""
		And I execute 1C:Enterprise script
		"""bsl
			Context.VariableName2 = Vanessa.Object.ValueOnServer;
		"""
