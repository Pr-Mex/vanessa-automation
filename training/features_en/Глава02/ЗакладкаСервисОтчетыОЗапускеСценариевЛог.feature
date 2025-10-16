# language: ru

@lessons

Функционал: Интерактивная справка. Запись событий выполнения сценариев в файл.

Сценарий: Запись событий выполнения сценариев в файл

* Hi! In this lesson, I will tell you about recording the events of a test session. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаОтчетыОЗапуске' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЛогТекст' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Test session events recording settings" UI Automation
			| 'Name'                                        |
			| 'ДелатьЛогВыполненияСценариевВТекстовыйФайл' |
	
* This checkbox enables recording events to a file or console.
		И я делаю подсветку нескольких элементов VA с их заголовком "Enabling event recording" UI Automation
			| 'Name'                                        |
			| 'ДелатьЛогВыполненияСценариевВТекстовыйФайл' |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ДелатьЛогВыполненияСценариевВТекстовыйФайл' UI Automation
		И Пауза 1
* Information about test execution events can be used by an external system that starts a testing session in Vanessa Automation.
* If the checkbox is set, events such as the start of script execution and the occurrence of an error will be recorded.
		И я делаю подсветку нескольких элементов VA с их заголовком "Enabling event recording" UI Automation
			| 'Name'                                        |
			| 'ДелатьЛогВыполненияСценариевВТекстовыйФайл' |
		
* This checkbox determines if events will be recorded to the console
		И я делаю подсветку нескольких элементов VA с их заголовком "Writing to the console" UI Automation
			| 'Name'                 |
			| 'ВыводитьЛогВКонсоль' |

* This checkbox determines if recording of each step is required
		И я делаю подсветку нескольких элементов VA с их заголовком "Recording a step execution event" UI Automation
			| 'Name'                         |
			| 'ВыводитьВЛогВыполнениеШагов' |

* This checkbox determines if additional information on test execution statistics should be recorded.
		И я делаю подсветку нескольких элементов VA с их заголовком "Recording of additional information" UI Automation
			| 'Name'                             |
			| 'ПодробныйЛогВыполненияСценариев' |

* In this field, specify the path to the log recording file.
		И я делаю подсветку нескольких элементов VA с их заголовком "Log file name" UI Automation
			| 'Name'                            |
			| 'ИмяФайлаЛогВыполненияСценариев' |

* If this field is empty, data will not be written to the file. At the same time, data output to the console will work.
		И я делаю подсветку нескольких элементов VA с их заголовком "Log file name" UI Automation
			| 'Name'                            |
			| 'ИмяФайлаЛогВыполненияСценариев' |

* That's it, move on to the next lesson of the interactive help.
