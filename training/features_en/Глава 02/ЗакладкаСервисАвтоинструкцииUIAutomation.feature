# language: ru

@lessons

Функционал: Интерактивная справка. Автоинструкции. UI Automation.

Сценарий: Автоинструкции. UI Automation.

* Hi! In this lesson, I will tell you about the settings of UI Automation mechanism. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаАвтоИнструкции' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаАвтоинструкцииVanessaExtChrome' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "UI Automation settings" UI Automation
			| 'Name'                      |
			| 'ИспользоватьUIAutomation' |

* This checkbox specifies that user wants to create auto-instructions using UI Automation in thin or thick client.
		И я делаю подсветку нескольких элементов VA с их заголовком "Enabling UI Automation for part of the steps" UI Automation
			| 'Name'                      |
			| 'ИспользоватьUIAutomation' |
* Enabling this option will cause some steps from the main library to try to search for form elements using UI Automation technology.
* Thus, during the execution of a common script, you can get the effect of mouse movement, click animation and so on - using steps from the main step library.


* That's it, move on to the next lesson of the interactive help.


