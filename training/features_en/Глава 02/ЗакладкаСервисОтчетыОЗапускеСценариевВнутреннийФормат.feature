# language: ru

@lessons

Функционал: Интерактивная справка. Отчет во внутреннем формате.

Сценарий: Отчет во внутреннем формате

* Hi! In this lesson, I will tell you about the settings for generating a report in an internal format. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаОтчетыОЗапуске' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаОтчетВоВнутреннемФормате' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Settings for generating a report in internal format" UI Automation
			| 'Name'                            |
			| 'ДелатьОтчетВоВнутреннемФормате' |

* To generate a report, you need to set this checkbox.
		И я делаю подсветку нескольких элементов VA с их заголовком "Enabling the report in internal format" UI Automation
			| 'Name'                            |
			| 'ДелатьОтчетВоВнутреннемФормате' |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ДелатьОтчетВоВнутреннемФормате' UI Automation
		И Пауза 1

* This report is the simplest version of the script progress report and is not intended for integration with other systems.
	
* That's it, move on to the next lesson of the interactive help.
