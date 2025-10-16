# language: ru

@lessons

Функционал: Интерактивная справка. Обновление данных в дереве.

Сценарий: Обновление данных в дереве

* Hi! In this lesson, I will tell you about options that affect updating data in the step tree. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаВыполнениеСценариев' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаОбновлениеДанныхВДереве' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Update step tree data" UI Automation
			| 'Name'                                        |
			| 'ОбновлятьДеревоПриНачалеВыполненияСценария' |

* This checkbox enables the mode of step tree update according to the current state of script execution.
		И я делаю подсветку нескольких элементов VA с их заголовком "Update step tree data" UI Automation
			| 'Name'                                        |
			| 'ОбновлятьДеревоПриНачалеВыполненияСценария' |
* Enabling this option may reduce the speed of script execution, but it increases the visibility of its execution.
* This option makes sense only when working in step tree mode.


* That's it, move on to the next lesson of the interactive help.




