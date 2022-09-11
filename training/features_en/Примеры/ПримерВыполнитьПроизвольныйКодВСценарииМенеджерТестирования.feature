# language: en

Feature: Examples of arbitrary code execution in a script

Scenario: Examples of arbitrary code execution in a script. On TEST MANAGER side.

* The code is executed at client
		And I execute 1C:Enterprise script
		"""bsl
			Message("Hello world.")
		"""
		
* The code is executed at server with the context of Vanessa Automation
		And I execute 1C:Enterprise script at server
		"""bsl
			Message("Hello world.")
		"""		
	
* The code is executed at server without the context of Vanessa Automation
		And I execute 1C:Enterprise script at server no context
		"""bsl
			Message("Hello world.")
		"""		
	
