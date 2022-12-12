# language: ru

@lessons

Функционал: Интерактивная справка. Отчет в формате Json.

Сценарий: Отчет в формате Json

* Hi! In this lesson, I will tell you about the settings for generating a report in Json format. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаОтчетыОЗапуске' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЛогОшибокТекст' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Settings for generating a report in Json format" UI Automation
			| 'Name'                           |
			| 'ДелатьЛогОшибокВТекстовыйФайл' |

* To generate a report, you need to set this checkbox.
		И я делаю подсветку нескольких элементов VA с их заголовком "Enabling a report in Json format" UI Automation
			| 'Name'                           |
			| 'ДелатьЛогОшибокВТекстовыйФайл' |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ДелатьЛогОшибокВТекстовыйФайл' UI Automation
		И Пауза 1

* This report format can be used for integration with arbitrary systems.

* This checkbox enables the collection of data about variable values.
		И я делаю подсветку нескольких элементов VA с их заголовком "Variable values" UI Automation
			| 'Name'                                |
			| 'СобиратьДанныеОЗначенияхПеременных' |

* This checkbox enables the collection of data about the state of the Test Client active form on error occurrence.
		И я делаю подсветку нескольких элементов VA с их заголовком "Active form state" UI Automation
			| 'Name'                                            |
			| 'СобиратьДанныеОСостоянииАктивнойФормыПриОшибке' |

* This checkbox enables the collection of data on the status of all forms of the testing client during error appearance.
		И я делаю подсветку нескольких элементов VA с их заголовком "Status of all forms" UI Automation
			| 'Name'                                       |
			| 'СобиратьДанныеОСостоянииВсехФормПриОшибке' |

* This checkbox determines if information about running processes on the script fail will be attached to the report.
		И я делаю подсветку нескольких элементов VA с их заголовком "Process data" UI Automation
			| 'Name'                        |
			| 'СобиратьДанныеОПроцессахОС' |

* This checkbox determines if information about the network connections of processes running on the PC will be attached to the report.
		И я делаю подсветку нескольких элементов VA с их заголовком "Data about network connections" UI Automation
			| 'Name'                               |
			| 'СобиратьДанныеОСетевыхСоединениях' |

* In this field, specify the directory to generate the report files
		И я делаю подсветку нескольких элементов VA с их заголовком "Report directory" UI Automation
			| 'Name'                  |
			| 'ИмяКаталогаЛогОшибок' |
	
* That's it, move on to the next lesson of the interactive help.
