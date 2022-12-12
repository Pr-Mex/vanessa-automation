# language: ru

@lessons

Функционал: Интерактивная справка. Отчет в формате Allure. Основные настройки.

Сценарий: Отчет в формате Allure. Основные настройки.

* Hi! In this lesson, I will tell you about the basic settings for generating a script launch report in the Allure format. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаОтчетыОЗапуске' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаAllure' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаAllureОсновныеНастройки' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Basic settings" UI Automation
			| 'Name'                                            |
			| 'ДелатьОтчетВФорматеАллюр'                       |
			| 'ПодставлятьВОтчетеAllureЗначенияПеременных'     |
			| 'КаталогВыгрузкиAllure'                          |
			| 'КаталогВыгрузкиAllureБазовый'                   |
			| 'УровеньОтчета1'                                 |
			| 'УровеньОтчета2'                                 |
			| 'УровеньОтчета3'                                 |
			| 'КаталогОтносительноКоторогоНадоСтроитьИерархию' |
			| 'ГруппировкаTestSuites'                          |
			| 'ТегиПропускающиеСценарийAllure'                 |
	
* Set this checkbox to generate a report in the Allure format after the scripts are executed
		И я делаю подсветку нескольких элементов VA с их заголовком "Generate a report in the Allure format" UI Automation
			| 'Name'                      |
			| 'ДелатьОтчетВФорматеАллюр' |
			

* Let's continue. This checkbox determines that variable values will be displayed in the generated report in steps, instead of variable names.
		И я делаю подсветку нескольких элементов VA с их заголовком "Replace variable names" UI Automation
			| 'Name'                                        |
			| 'ПодставлятьВОтчетеAllureЗначенияПеременных' |

* This field specifies the directory in which the report files will be generated.
		И я делаю подсветку нескольких элементов VA с их заголовком "Report files directory" UI Automation
			| 'Name'                   |
			| 'КаталогВыгрузкиAllure' |

* There is an alternative way to specify the report directory.
* To do this, fill in the directory field that is used when generating a report on several assemblies.
		И я делаю подсветку нескольких элементов VA с их заголовком "Report files directory. The second option" UI Automation
			| 'Name'                          |
			| 'КаталогВыгрузкиAllureБазовый' |

* This makes sense if the checkbox that adds the assembly name to the script name is set.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройкиОтчетовОбщие' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Add assembly name" UI Automation
			| 'Name'                                    |
			| 'ДобавлятьКИмениСценарияУсловияВыгрузки' |
* Then another directory with the name of the assembly will be created in this directory.
		И я делаю подсветку нескольких элементов VA с их заголовком "Report files directory. The second option" UI Automation
			| 'Name'                          |
			| 'КаталогВыгрузкиAllureБазовый' |

* Let's continue. Next are three fields that allow to specify three levels of the report hierarchy. Details about how these levels are formed are described in the internal help.
		И я делаю подсветку нескольких элементов VA с их заголовком "Hierarchy levels" UI Automation
			| 'Name'            |
			| 'УровеньОтчета1' |
			| 'УровеньОтчета2' |
		И я делаю подсветку нескольких элементов VA с их заголовком "Hierarchy levels" UI Automation
			| 'Name'            |
			| 'УровеньОтчета3' |

* This field specifies the directory relative to which the hierarchy of report levels is built.
		И я делаю подсветку нескольких элементов VA с их заголовком "Hierarchy directory" UI Automation
			| 'Name'                                            |
			| 'КаталогОтносительноКоторогоНадоСтроитьИерархию' |

* This field defines the grouping in the report on the Suites tab.
		И я делаю подсветку нескольких элементов VA с их заголовком "Grouping" UI Automation
			| 'Name'                   |
			| 'ГруппировкаTestSuites' |

* Tags are specified in this field. If script contains such tag, it will not be executed and its status in the report will be skipped.
		И я делаю подсветку нескольких элементов VA с их заголовком "Tags" UI Automation
			| 'Name'                            |
			| 'ТегиПропускающиеСценарийAllure' |


* That's it, move on to the next lesson of the interactive help.
