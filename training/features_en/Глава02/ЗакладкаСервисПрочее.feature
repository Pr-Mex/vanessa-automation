# language: ru

@lessons

Функционал: Интерактивная справка. Прочие настройки.

Сценарий: Прочие настройки

* Hi! In this lesson, I will tell you about the remaining settings of the "Other" tab. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаНастройкиПрочее' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Other settings" UI Automation
			| 'Name'                      |
			| 'ВычислитьPIDЭтогоСеанса1' |
			| 'PIDЭтогоСеанса'           |
			| 'ПолучитьСтрокуЗапуска'    |
	
* This hyperlink calculates the process ID of the Test Manager.
		И я делаю подсветку нескольких элементов VA с их заголовком "Calculate the process identifier of the Test manager" UI Automation
			| 'Name'                      |
			| 'ВычислитьPIDЭтогоСеанса1' |
* Sometimes this is used in scripts. For example, in interactive help scripts.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ВычислитьPIDЭтогоСеанса1' UI Automation

* At that process ID will be displayed in this field.
		И я делаю подсветку нескольких элементов VA с их заголовком "Process PID" UI Automation
			| 'Name'            |
			| 'PIDЭтогоСеанса' |
	
* Let's continue. This hyperlink allows to get the operating system command to start a test session.
		И я делаю подсветку нескольких элементов VA с их заголовком "Get launch line from the command line" UI Automation
			| 'Name'                   |
			| 'ПолучитьСтрокуЗапуска' |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ПолучитьСтрокуЗапуска' UI Automation
		И Пауза 1
		
			



* That's it, move on to the next lesson of the interactive help.



