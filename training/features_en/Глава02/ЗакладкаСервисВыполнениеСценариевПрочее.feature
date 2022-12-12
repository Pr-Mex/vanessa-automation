# language: ru

@lessons

Функционал: Интерактивная справка. Статусы сценариев.

Сценарий: Статусы сценариев

* Hi! In this lesson, I will tell you about other script execution settings. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаВыполнениеСценариев' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаВыполнениеСценариевПрочее' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Other settings" UI Automation
			| 'Name'                                         |
			| 'ВыполнятьSleepЧерезPing'                     |
			| 'ЗапрещатьПерезаписыватьПеременные'           |
			| 'ОбновлятьТаблицыФормыПриПолученииЗначения'   |
			| 'ПолучатьМакетыСПомощьюРасширенияVAExtension' |

* If this option is enabled, Vanessa Automation pause will be executed via ping command.
		И я делаю подсветку нескольких элементов VA с их заголовком "How to perform sleep" UI Automation
			| 'Name'                     |
			| 'ВыполнятьSleepЧерезPing' |
* This option may be needed only if VanessaExt component is disabled.

* Let's continue. If this checkbox is set, then variables overwriting will be disables during script execution.
		И я делаю подсветку нескольких элементов VA с их заголовком "Restriction of overwriting variables" UI Automation
			| 'Name'                               |
			| 'ЗапрещатьПерезаписыватьПеременные' |
* This option should be used if necessary.


* Let's continue. If this checkbox is set, then on attempt to get tables values on the form, Vanessa will try to update the table data, if possible.
		И я делаю подсветку нескольких элементов VA с их заголовком "Update form tables" UI Automation
			| 'Name'                                       |
			| 'ОбновлятьТаблицыФормыПриПолученииЗначения' |
* This option can be used if necessary.

* Let's continue. If this checkbox is set, then the VAExtension extension will be used to transfer template data from Test Client to Test Manager.
		И я делаю подсветку нескольких элементов VA с их заголовком "Pass template data" UI Automation
			| 'Name'                                         |
			| 'ПолучатьМакетыСПомощьюРасширенияVAExtension' |

* This option is recommended for use. For its operation, it is necessary to install VAExtension extension to Test Client database.

* That's it, move on to the next lesson of the interactive help.
