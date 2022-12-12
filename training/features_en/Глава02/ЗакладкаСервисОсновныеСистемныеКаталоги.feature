# language: ru

@lessons

Функционал: Интерактивная справка. Системные каталоги.

Сценарий: Системные каталоги

* Hi! In this lesson, I will tell you about the settings associated with system directories. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаСистемныеКаталоги' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "System directories" UI Automation
			| 'Name'                 |
			| 'КаталогПроекта1'     |
			| 'КаталогИнструментов' |

* The project directory is specified in this field.
		И я делаю подсветку нескольких элементов VA с их заголовком "Project directory" UI Automation
			| 'Name'                 |
			| 'КаталогПроекта1'     |

* This is an important setting. It'd be better to always specify the project directory.
* This directory usually contains the files needed to run the tests.
* Often, scripts may refer to files in the project directory.

* The second field is the tool catalog.
		И я делаю подсветку нескольких элементов VA с их заголовком "Tools directory" UI Automation
			| 'Name'                 |
			| 'КаталогИнструментов' |
* This is the directory where the Vanessa Automation or Vanessa Automation Single processing are located.
* It is important that this field is filled in correctly.


* That's it, move on to the next lesson of the interactive help.


