# language: ru

@lessons

Функционал: Интерактивная справка. Обучение.

Сценарий: Обучение

* Hi! In this lesson, I will tell you about the settings related to online help and training. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаОбучение' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Interactive Help and tutorial settings" UI Automation
			| 'Name'                                                   |
			| 'СоздаватьФайлыОзвучкиДляСправки'                       |
			| 'ПодключатьГорячуюКлавишуДляПолученияСправкиОбЭлементе' |
			| 'ЗакрыватьСценарийИнтерактивнойСправкиПослеВыполнения'  |
			| 'ПоказыватьПомощникПриПервомЗапуске'                    |
			| 'КаталогКешОзвучкиДляИнтерактивнойСправки'              |
			| 'ПоказатьПомощникПриПервомЗапуске'                      |
	
* This checkbox determines if voiceover files should be created for online help if they were not found in the cache.
		И я делаю подсветку нескольких элементов VA с их заголовком "Create voiceover files if not exist" UI Automation
			| 'Name'                             |
			| 'СоздаватьФайлыОзвучкиДляСправки' |

* If the checkbox is set, the voicover files will be created according to the current speech generation settings.
		И я делаю подсветку нескольких элементов VA с их заголовком "Create voiceover files if not exist" UI Automation
			| 'Name'                             |
			| 'СоздаватьФайлыОзвучкиДляСправки' |

* Let's continue. This checkbox switches on help lessons search for any Vanessa Automation form element.
		И я делаю подсветку нескольких элементов VA с их заголовком "Search lessons for form element" UI Automation
			| 'Name'                                                   |
			| 'ПодключатьГорячуюКлавишуДляПолученияСправкиОбЭлементе' |
	
* If this option is enabled, move the cursor to any element of the Vanessa Automation form and press Alt plus H.
		И я делаю подсветку нескольких элементов VA с их заголовком "Search lessons for form element" UI Automation
			| 'Name'                                                   |
			| 'ПодключатьГорячуюКлавишуДляПолученияСправкиОбЭлементе' |
	
* At that all interactive help lessons containing this setting or form element will be found.

* Let's continue. This checkbox determines if the online help script will be closed after execution.
		И я делаю подсветку нескольких элементов VA с их заголовком "Close the interactive help script" UI Automation
			| 'Name'                                                  |
			| 'ЗакрыватьСценарийИнтерактивнойСправкиПослеВыполнения' |

* This checkbox determines if the Wizard should be shown on first start.
		И я делаю подсветку нескольких элементов VA с их заголовком "First launch assistant" UI Automation
			| 'Name'                                |
			| 'ПоказыватьПомощникПриПервомЗапуске' |

* This field specifies the directory for the interactive help cache. If no directory is specified, a subdirectory will be created in Vanessa Automation data processor directory.
		И я делаю подсветку нескольких элементов VA с их заголовком "Cache directory" UI Automation
			| 'Name'                                      |
			| 'КаталогКешОзвучкиДляИнтерактивнойСправки' |

* This hyperlink allows to launch the first launch assistant at any time.
		И я делаю подсветку нескольких элементов VA с их заголовком "Show the assistant at the first launch" UI Automation
			| 'Name'                              |
			| 'ПоказатьПомощникПриПервомЗапуске' |

* That's it, move on to the next lesson of the interactive help.



