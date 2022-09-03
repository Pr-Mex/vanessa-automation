# language: ru

Feature: Примеры, как выполнить произвольный код в сценарии

Scenario: Примеры, как выполнить произвольный код в сценарии. На стороне МЕНЕДЖЕРА тестирования.

* The code is executed at client
		And I execute 1C:Enterprise script
		"""bsl
			Сообщить("Hello world.")
		"""
		
* The code is executed at server with the context of Vanessa Automation
		And I execute 1C:Enterprise script at server
		"""bsl
			Сообщить("Hello world.")
		"""		
	
* The code is executed at server without the context of Vanessa Automation
		And I execute 1C:Enterprise script at server no context
		"""bsl
			Сообщить("Hello world.")
		"""		
	

