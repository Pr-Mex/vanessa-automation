# language: ru

@lessons

Функционал: Интерактивная справка. Мобильный клиент.

Сценарий: Мобильный клиент

* Hi! In this lesson, I will tell you about the settings for working with a mobile client. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаКлиентыТестирования' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройкиМобильногоКлиента' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Settings for working with mobile client" UI Automation
			| 'Name'                                      |
			| 'ПутьКadb'                                 |
			| 'ПроверкаПодключенияКМобильномуУстройству' |
			| 'ЗапуститьМобильныйКлиент'                 |
			| 'ЗапуститьМобильноеПриложение'             |

* This field specifies the path to the adb application.
		И я делаю подсветку нескольких элементов VA с их заголовком "Path to adb" UI Automation
			| 'Name'                                      |
			| 'ПутьКadb'                                 |
* This is a special application that provides access to a running emulator or Android device.

* Next are special commands.
* Checking the connection to the mobile device.
		И я делаю подсветку нескольких элементов VA с их заголовком "Check mobile device connection" UI Automation
			| 'Name'                                      |
			| 'ПроверкаПодключенияКМобильномуУстройству' |
* Mobile client launch.
		И я делаю подсветку нескольких элементов VA с их заголовком "Mobile client launch" UI Automation
			| 'Name'                      |
			| 'ЗапуститьМобильныйКлиент' |
* Mobile application launch.
		И я делаю подсветку нескольких элементов VA с их заголовком "Mobile app launch" UI Automation
			| 'Name'                          |
			| 'ЗапуститьМобильноеПриложение' |

* That's it, move on to the next lesson of the interactive help.




