# language: ru

@lessons

Функционал: Интерактивная справка. При возникновении ошибки.

Сценарий: При возникновении ошибки

* Hi! In this lesson, I will tell you about options that affect the behavior of Vanessa Automation when script error occurs. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаВыполнениеСценариев' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаПриВозникновенииОшибки' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Processing on error occurence" UI Automation
			| 'Name'                                               |
			| 'ОстановкаПриВозникновенииОшибки'                   |
			| 'ПоказыватьНомерСтрокиДереваПриВозникновенииОшибки' |

* If this checkbox is set, the testing session will be stopped on the first error occurence during script execution.
		И я делаю подсветку нескольких элементов VA с их заголовком "Stop at error" UI Automation
			| 'Name'                             |
			| 'ОстановкаПриВозникновенииОшибки' |
* This option is convenient when you need to find an issue in the script and fix it immediately.

* Let's continue. This setting is outdated. It controls that when tests are run in tree mode, an additional column will be shown in the step tree if an error occurs.
		И я делаю подсветку нескольких элементов VA с их заголовком "Show tree line number" UI Automation
			| 'Name'                                               |
			| 'ПоказыватьНомерСтрокиДереваПриВозникновенииОшибки' |
* This setting is left for compatibility.

* That's it, move on to the next lesson of the interactive help.




