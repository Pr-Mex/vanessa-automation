# language: en

Feature: Examples of arbitrary code execution in a script

Scenario: Examples of arbitrary code execution in a script. On TEST CLIENT side.
	// VAExtension must be installed
	// https://github.com/Pr-Mex/vanessa-automation/blob/develop/docs/VAExtension/VAExtension.md
* The code is executed at client
		And I execute the built-in language code (Extension)
		"""bsl
			Message("Hello world.")
		"""
		
* The code is executed at server
		And I execute the built-in language code at server (Extension)
		"""bsl
			Message("Hello world.")
		"""
	
	
