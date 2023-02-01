# language: ru

@lessons

Функционал: Интерактивная справка. Отчет в формате СППР.

Сценарий: Отчет в формате СППР

* Hi! In this lesson, I will tell you about the settings for generating a report in the DSS format. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаОтчетыОЗапуске' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаСППР' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Settings for generating a report in ADS format" UI Automation
			| 'Name'                     |
			| 'ДелатьОтчетВФорматеСППР' |

* To generate a report, you need to set this checkbox.
		И я делаю подсветку нескольких элементов VA с их заголовком "Enabling a report in the ADS format" UI Automation
			| 'Name'                     |
			| 'ДелатьОтчетВФорматеСППР' |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ДелатьОтчетВФорматеСППР' UI Automation
		И Пауза 1

* In this field, specify the directory to generate the report files
		И я делаю подсветку нескольких элементов VA с их заголовком "Report directory" UI Automation
			| 'Name'                 |
			| 'КаталогВыгрузкиСППР' |
	
* That's it, move on to the next lesson of the interactive help.
