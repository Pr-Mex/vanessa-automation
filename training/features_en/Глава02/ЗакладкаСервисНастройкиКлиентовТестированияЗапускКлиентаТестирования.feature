# language: ru

@lessons

Функционал: Интерактивная справка. Запуск клиента тестирования

Сценарий: Запуск клиента тестирования

* Hi! In this lesson, I will tell you about the settings for launching test client. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаКлиентыТестирования' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЗапускКлиентаТестирования' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Test client launch settings" UI Automation
			| 'Name'                                                                           |
			| 'ЗапускатьКлиентТестированияСМаксимизированнымОкном'                            |
			| 'МодальноеОкноПриЗапускеКлиентаТестированияЭтоОшибка'                           |
			| 'ПовторноЗапускатьСеансКлиентаТестированияПриПодключенииЕслиНеНайденЕгоПроцесс' |
			| 'ОпределятьРеальныйПортНаКоторомЗапустилсяКлиентТестирования'                   |
			| 'ДиапазонПортовTestclient'                                                      |
			| 'ТаймаутЗапуска1С'                                                              |
			| 'КаталогФайловВыводаСлужебныхСообщений'                                         |
			| 'ОтключитьЗапускРеглЗаданийВФайловойБазе'                                       |


* This checkbox determines if the Test Client will start with the window maximized to full screen - or not.
		И я делаю подсветку нескольких элементов VA с их заголовком "Expand window to full screen" UI Automation
			| 'Name'                                                                           |
			| 'ЗапускатьКлиентТестированияСМаксимизированнымОкном'                            |
* It is recommended to enable this option, since in this case more complete screenshots are generated when an error occurs.
		И я делаю подсветку нескольких элементов VA с их заголовком "Expand window to full screen" UI Automation
			| 'Name'                                                                           |
			| 'ЗапускатьКлиентТестированияСМаксимизированнымОкном'                            |

* This checkbox determines actions in case if modal window appears when starting the test client.
		И я делаю подсветку нескольких элементов VA с их заголовком "Action with the modal window" UI Automation
			| 'Name'                                                 |
			| 'МодальноеОкноПриЗапускеКлиентаТестированияЭтоОшибка' |
* Usually such windows appear on error at application start. But there may be exceptions.
* If the checkbox is set, the modal window will be considered an error when the Test Client is launched.
		И я делаю подсветку нескольких элементов VA с их заголовком "Action with the modal window" UI Automation
			| 'Name'                                                 |
			| 'МодальноеОкноПриЗапускеКлиентаТестированияЭтоОшибка' |
* If the checkbox is removed, it will not.


* Moving on. This checkbox determines actions if its process was not found when the Test Client was started.
		И я делаю подсветку нескольких элементов VA с их заголовком "Restart the process" UI Automation
			| 'Name'                                                                           |
			| 'ПовторноЗапускатьСеансКлиентаТестированияПриПодключенииЕслиНеНайденЕгоПроцесс' |
* This may occur, for example, if a license was not found.
* If the checkbox is set, there will be an attempt to launch the Test Client again.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ПовторноЗапускатьСеансКлиентаТестированияПриПодключенииЕслиНеНайденЕгоПроцесс' UI Automation		
		И Пауза 1
* In this case, the testing client will be restarted after the interval specified in this setting.
		И я делаю подсветку нескольких элементов VA с их заголовком "Process restart interval" UI Automation
			| 'Name'                                                                           |
			| 'ИнтервалЗапускаПроцессаКлиентаТестирования' |
* This option should be enabled if you are experiencing problems starting the Test Client at once.
	

* Moving on. If this checkbox is enabled, an additional algorithm for determining the port on which the Test Client was started will work when the Test Client is launched under Linux.
		И я делаю подсветку нескольких элементов VA с их заголовком "Determine the real port" UI Automation
			| 'Name'                                                         |
			| 'ОпределятьРеальныйПортНаКоторомЗапустилсяКлиентТестирования' |
* This option should only be enabled if you have a testing client running on a port other than the one it was running on.


* Let's continue. This field defines the timeout for Test Client to start.
		И я делаю подсветку нескольких элементов VA с их заголовком "Test client launch timeout" UI Automation
			| 'Name'              |
			| 'ТаймаутЗапуска1С' |
* If Test Client is not connected within the specified number of seconds, an exception will be raised.

* This field defines the range of ports for Test Client connection.
		И я делаю подсветку нескольких элементов VA с их заголовком "Range of ports for Test client connection" UI Automation
			| 'Name'                      |
			| 'ДиапазонПортовTestclient' |
* The range of ports should be specified if you know exactly that some ports in the system may be busy.
* If the port range is not specified, then Test Client will be connected on a free port starting from 48100.

* Let's continue. This field defines if it is necessary to automatically add a parameter to output service messages to the file on each Test client launch.
		И я делаю подсветку нескольких элементов VA с их заголовком "Output of service messages to a file" UI Automation
			| 'Name'                                   |
			| 'КаталогФайловВыводаСлужебныхСообщений' |
* If the field is filled in, a file will be created for each Test client to output service messages.
		И я делаю подсветку нескольких элементов VA с их заголовком "Output of service messages to a file" UI Automation
			| 'Name'                                   |
			| 'КаталогФайловВыводаСлужебныхСообщений' |

* Let's continue. This setting allows you to disable the launch of scheduled tasks in the file base launched as a test client.
		И я делаю подсветку нескольких элементов VA с их заголовком "Disabling scheduled tasks in the database" UI Automation
			| 'Name'                                     |
			| 'ОтключитьЗапускРеглЗаданийВФайловойБазе' |
* It is useful if you want to keep scheduled jobs enabled but prevent them from actually running as scheduled.

* That's it, move on to the next lesson of the interactive help.



