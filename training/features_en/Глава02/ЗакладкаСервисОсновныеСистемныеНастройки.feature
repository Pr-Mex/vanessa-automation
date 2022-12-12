# language: ru

@lessons

Функционал: Интерактивная справка. Системные настройки

Сценарий: Системные настройки

* Hi! In this lesson, I will tell you about the system settings. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаСистемныеНастройки' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "System settings" UI Automation
			| 'Name'                                              |
			| 'ТегTreeВключенПоУмолчанию'                        |
			| 'ВычислятьВыраженияВФигурныхСкобках'               |


* This checkbox defines if it is necessary to register a service tag tree in each feature file.
		И я делаю подсветку нескольких элементов VA с их заголовком "@tree tag is enabled by default" UI Automation
			| 'Name'                                              |
			| 'ТегTreeВключенПоУмолчанию'                        |
	
* If the checkbox is set, there is no need to register this tag in each file.
* If the checkbox is removed, then vice versa.
* Service tag tree was previously used to indicate that this feature file uses a hierarchy of steps.
* Now this is no longer relevant. In each feature file, it is better to use a hierarchy of steps.
* To avoid prescribing a line with a service tag in each feature file, it is recommended to leave this checkbox enabled.
		И я делаю подсветку нескольких элементов VA с их заголовком "@tree tag is enabled by default" UI Automation
			| 'Name'                                              |
			| 'ТегTreeВключенПоУмолчанию'                        |

* Moving on.
* The second checkbox refers to the work of variables section.
		И я делаю подсветку нескольких элементов VA с их заголовком "Evaluate expressions in curly brackets" UI Automation
			| 'Name'                                |
			| 'ВычислятьВыраженияВФигурныхСкобках' |

* This checkbox can be used to enable the mode of evaluating expressions in curly braces when the variable section is not declared in the feature file.
* This option should be used according to the situation when it is necessary.

* That's it, move on to the next lesson of the interactive help.


