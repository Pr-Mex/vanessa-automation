# language: ru

@lessons

Функционал: Интерактивная справка. Системные настройки

Сценарий: Системные настройки

* Hi! In this lesson, I will tell you about the other settings. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройкиОсновныеПрочее' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Other settings" UI Automation
			| 'Name'                                    |
			| 'ЗагрузкаФичПриОткрытии'                 |
			| 'ЗапрашиватьПодтверждениеПриЗакрытии'    |
			| 'ПоставщикПользовательскихНастроек'      |
			| 'КомандаОткрытияФичиВТекстовомРедакторе' |


* This setting defines if it is necessary to restore the feature file that was last opened during the previous working session on Vanessa Automation launch.
		И я делаю подсветку нескольких элементов VA с их заголовком "Upload a feature on open" UI Automation
			| 'Name'                                    |
			| 'ЗагрузкаФичПриОткрытии'                 |

* This setting is to define if to ask a question when closing the main Vanessa Automation form.
		И я делаю подсветку нескольких элементов VA с их заголовком "Question when closing the VA form" UI Automation
			| 'Name'                                 |
			| 'ЗапрашиватьПодтверждениеПриЗакрытии' |

* This setting specifies the storage for scripts running general settings.
		И я делаю подсветку нескольких элементов VA с их заголовком "Settings provider" UI Automation
			| 'Name'                               |
			| 'ПоставщикПользовательскихНастроек' |
* This option is used very rarely.

* And this setting determines the external editor to open the feature file.
		И я делаю подсветку нескольких элементов VA с их заголовком "How to open a feature in an external editor" UI Automation
			| 'Name'                                    |
			| 'КомандаОткрытияФичиВТекстовомРедакторе' |

* Now this option is rarely used, since Vanessa Automation has a built-in feature file editor.

* That's it, move on to the next lesson of the interactive help.


