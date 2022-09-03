# language: ru

Feature: Примеры, как выполнить произвольный код в сценарии

Scenario: Примеры, как выполнить произвольный код в сценарии. На стороне КЛИЕНТА тестирования.
	// Должно быть установлено расширение VAExtension
	// https://github.com/Pr-Mex/vanessa-automation/blob/develop/docs/VAExtension/VAExtension.md
* The code is executed at client
		And I execute the built-in language code (Extension)
		"""bsl
			Сообщить("Hello world.")
		"""
		
* The code is executed at server
		And I execute the built-in language code at server (Extension)
		"""bsl
			Сообщить("Hello world.")
		"""
	
	

