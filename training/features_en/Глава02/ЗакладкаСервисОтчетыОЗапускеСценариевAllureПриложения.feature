# language: ru

@lessons

Функционал: Интерактивная справка. Отчет в формате Allure. Приложения к отчету.

Сценарий: Отчет в формате Allure. Приложения к отчету.

* Hi! In this lesson, I will tell you about the settings for attaching additional information to the Allure report. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаОтчетыОЗапуске' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаAllure' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаПриложенияКОтчетуAllure' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Report attachments" UI Automation
			| 'Name'                                                                 |
			| 'ПрикладыватьКОтчетуAllureЖурналРегистрацииВыполненияСценария'        |
			| 'ПрикладыватьКОтчетуAllureДанныеОСостоянииАктивнойФормы'              |
			| 'ПрикладыватьКОтчетуAllureДанныеОСостоянииВсехФорм'                   |
			| 'ПрикладыватьКОтчетуAllureДанныеОСетевыхСоединениях'                  |
			| 'ПрикладыватьКОтчетуAllureДанныеОПроцессахОС'                         |
			| 'ПрикладыватьКОтчетуAllureДанныеОЗначенияхПеременных'                 |
			| 'ПрикладыватьФайлыMxlКОтчетуAllure'                                   |
			| 'ПрикладыватьФайлыMxlСохраненныеВФорматеHTMLКОтчетуAllure'            |
			| 'ПрикладыватьДополнительныеДанныеПриСравненииЗначенияСЭталономAllure' |
			| 'ПрикладыватьФайлыXlsxКОтчетуAllure'                                   |

* This checkbox determines if a log file will be attached to the report.
		И я делаю подсветку нескольких элементов VA с их заголовком "Log data" UI Automation
			| 'Name'                                                          |
			| 'ПрикладыватьКОтчетуAllureЖурналРегистрацииВыполненияСценария' |
	
* A significant point. The log data is captured on the Test Manager side.

* Let's continue. This checkbox determines if information about network connections of processes running on the PC will be attached to the report.
		И я делаю подсветку нескольких элементов VA с их заголовком "Data about network connections" UI Automation
			| 'Name'                                                |
			| 'ПрикладыватьКОтчетуAllureДанныеОСетевыхСоединениях' |

* This checkbox determines if information about the state of the active form of the Testing Client on the script fail will be attached to the report.
		И я делаю подсветку нескольких элементов VA с их заголовком "Active form state" UI Automation
			| 'Name'                                                    |
			| 'ПрикладыватьКОтчетуAllureДанныеОСостоянииАктивнойФормы' |

* This checkbox determines if information about the status of all forms of the testing client during script fail will be attached to the report.
		И я делаю подсветку нескольких элементов VA с их заголовком "Status of all forms" UI Automation
			| 'Name'                                               |
			| 'ПрикладыватьКОтчетуAllureДанныеОСостоянииВсехФорм' |

* This checkbox determines if information about running processes on the script fail will be attached to the report.
		И я делаю подсветку нескольких элементов VA с их заголовком "Process data" UI Automation
			| 'Name'                                         |
			| 'ПрикладыватьКОтчетуAllureДанныеОПроцессахОС' |

* This checkbox determines if information about the values of the script variables during error appearance will be attached to the report.
		И я делаю подсветку нескольких элементов VA с их заголовком "Variable values" UI Automation
			| 'Name'                                                 |
			| 'ПрикладыватьКОтчетуAllureДанныеОЗначенияхПеременных' |

* This flag defines if mxl files will be attached to the report.
		И я делаю подсветку нескольких элементов VA с их заголовком "Files in mxl format" UI Automation
			| 'Name'                               |
			| 'ПрикладыватьФайлыMxlКОтчетуAllure' |

* This checkbox defines if html files will be attached to the report.
		И я делаю подсветку нескольких элементов VA с их заголовком "Files in HTML format" UI Automation
			| 'Name'                                                      |
			| 'ПрикладыватьФайлыMxlСохраненныеВФорматеHTMLКОтчетуAllure' |

* This flag defines if excel files will be attached to the report.
		И я делаю подсветку нескольких элементов VA с их заголовком "Files in xlsx format" UI Automation
			| 'Name'                                                                 |
			| 'ПрикладыватьФайлыXlsxКОтчетуAllure' |

* This checkbox defines if additional files helping to find differences between the layout standard and the actual layout value, will be attached to the report.
		И я делаю подсветку нескольких элементов VA с их заголовком "Additional information about templates comparison" UI Automation
			| 'Name'                                                                 |
			| 'ПрикладыватьДополнительныеДанныеПриСравненииЗначенияСЭталономAllure' |

* That's it, move on to the next lesson of the interactive help.
