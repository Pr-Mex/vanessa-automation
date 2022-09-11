# language: ru

@lessons

Функционал: Интерактивная справка. Запуск браузера

Сценарий: Запуск браузера

* Hi! In this lesson, I will tell you about the settings for launching test client in the web client. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаКлиентыТестирования' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'НастройкиЗапускаБраузера' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Browser launch settings for web client" UI Automation
			| 'Name'                           |
			| 'КомандаЗапускаChrome'          |
			| 'КомандаЗапускаChromeСОтладкой' |
			| 'КомандаЗапускаБраузера'        |

* This setting is to define how to launch the browser in which Test Client will be launched.
		И я делаю подсветку нескольких элементов VA с их заголовком "Browser launch command" UI Automation
			| 'Name'                    |
			| 'КомандаЗапускаБраузера' |
	
* If the field is empty, then the default browser will be launched.
* Specify this command in this field to launch another browser, or pass special keys to the browser.
		И я делаю подсветку нескольких элементов VA с их заголовком "Browser launch command" UI Automation
			| 'Name'                    |
			| 'КомандаЗапускаБраузера' |

* It is also possible to fill in this field automatically.
* This command generates a Chrome browser launch string.
		И я делаю подсветку нескольких элементов VA с их заголовком "Chrome launch command" UI Automation
			| 'Name'                           |
			| 'КомандаЗапускаChrome'          |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'КомандаЗапускаChrome' UI Automation		
		И Пауза 1
		
* In this case, the field will be filled with the browser launch line, if Chrome browser is installed on this PC
		И я делаю подсветку нескольких элементов VA с их заголовком "Browser launch command" UI Automation
			| 'Name'                    |
			| 'КомандаЗапускаБраузера' |

* You can also use another command that launches Chrome browser with additional keys.
		И я делаю подсветку нескольких элементов VA с их заголовком "Chrome+debug startup command" UI Automation
			| 'Name'                           |
			| 'КомандаЗапускаChromeСОтладкой' |
* This option should be used when creating auto-documentation when Test Client is launched in web client.
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'КомандаЗапускаChromeСОтладкой' UI Automation		
		И Пауза 1

* That's it, move on to the next lesson of the interactive help.




