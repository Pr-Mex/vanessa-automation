# language: ru

@lessons

Функционал: Интерактивная справка. Настройки в панели редактора. Другие настройки.

Сценарий: Настройки в панели редактора. Другие настройки.

* Hi! In this lesson, I will tell you about the options and settings that are available in the editor panel. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
		И выражение внутреннего языка 'КонтекстСохраняемый.ФормаVAВРежимеОбучения.Объект.ПоказыватьСтрокиПодсценариевVanessaEdittor' Истинно
		И выражение внутреннего языка 'КонтекстСохраняемый.ФормаVAВРежимеОбучения.Объект.ПоказыватьМиниатюруКода' Истинно
		И выражение внутреннего языка 'КонтекстСохраняемый.ФормаVAВРежимеОбучения.Объект.ПоказыватьЗначенияПеременныхВСтрокахРедактора' Истинно
		И выражение внутреннего языка 'КонтекстСохраняемый.ФормаVAВРежимеОбучения.Объект.ПроверкаСинтаксисаВРедакторе' Истинно
		И выражение внутреннего языка 'КонтекстСохраняемый.ФормаVAВРежимеОбучения.Объект.ПоказыватьРазличияВРедактореОтдельно' Истинно
		

* Great! Let's see what else is in this menu.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorНастройкиРедактора' UI Automation	
		И Пауза 1
		И я перемещаю курсор к заголовку Vanessa Automation
		

* This option controls the nuance of steps typing in the editor.
		И Я делаю подсветку элемента VA "VanessaEditorИспользоватьДанныеТекущейФормыПриПодбореШагов" "Form data on steps set" и перемещаю курсор
* If this option is enabled, Test Client form will be accessed once a second to get data about active form elements, their names, and so on.
* Then this data will be inserted into the parameters of the steps during typing in the editor.
* If the option is disabled, then when typing steps in the editor, parameter values will remain the same as they are specified in the step description.
* This option should be used with caution when working with a web client, because a web client sends data much slower than a thin client.


* The following option controls whether the subscript lines will be shown in the editor.
		И Я делаю подсветку элемента VA "VanessaEditorПоказыватьСтрокиПодсценариев" "Show subscript lines" и перемещаю курсор
* Let's upload a demo example.
		И я делаю клик по заголовку Vanessa Automation
		И Пауза 1
		И я загружаю в режиме обучения VA тестовую фичу "$КаталогИнструментов$\training\features_en\Примеры\ПримерСценарияПоказСтрокПодсценария.feature"
		
* Excellent. In it, a special html insert has been added between the ninth and tenth lines, which shows the lines of this sub-script.
* Now let's turn off the display of subscript lines
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorНастройкиРедактора' UI Automation	
		И Пауза 1
		И я перемещаю курсор к элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПоказыватьСтрокиПодсценариев' UI Automation	
		И Пауза 2
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПоказыватьСтрокиПодсценариев' UI Automation	
		И Пауза 1
		
* At that the special insert disappeared.
* A significant point. Displaying lines under scripts can help with investigating and debugging feature files that use large level of subscripts nesting.
* It is recommended to leave this option disabled and enable it as needed.


* Moving on. This command controls the display of the code thumbnail on the right in the editor window.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorНастройкиРедактора' UI Automation	
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorПоказыватьМиниатюруКода" "Show code thumbnail" и перемещаю курсор
* Let's try to disable this option.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПоказыватьМиниатюруКода' UI Automation	
		И Пауза 1
* At the same time, the code thumbnail panel disappeared.
* For it to appear, make a second click on this option.
		И Пауза 0.1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorНастройкиРедактора' UI Automation	
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПоказыватьМиниатюруКода' UI Automation
		И Пауза 1

	
* Moving on. The following option controls display of variable values in editor lines.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorНастройкиРедактора' UI Automation	
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorПоказыватьЗначенияПеременныхВСтрокахРедактора" "Show variable values (inline debug)" и перемещаю курсор

* To read more about this technology, follow this link.
		И я загружаю в режиме обучения VA тестовую фичу "$КаталогИнструментов$\training\features_en\Примеры\ПримерСценарияПоказСтрокПодсценария.feature"
		И Я запускаю сценарий VA в режиме обучения и жду окончания выполнения

* At that information about the value of the variable that was assigned to it after performing the step appeared on the right in line eleven.
* Now let's turn off the option and run the script again.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorНастройкиРедактора' UI Automation	
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПоказыватьЗначенияПеременныхВСтрокахРедактора' UI Automation	
		И Пауза 1
		И Я запускаю сценарий VA в режиме обучения и жду окончания выполнения
* Now the script has also been executed, but the value of the variable is no longer displayed on line number eleven
* Thus, it is recommended to enable this option. It helps to debug scripts faster.


* Moving on. The next option is syntax check in the editor
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorНастройкиРедактора' UI Automation	
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorПроверкаСинтаксисаВРедакторе" "Check syntax in the editor" и перемещаю курсор
* If this option is enabled, the editor will automatically check steps syntax. Let's upload a demo feature file.
		И я делаю клик по заголовку Vanessa Automation
		И Пауза 1
		И я загружаю в режиме обучения VA тестовую фичу "$КаталогИнструментов$\training\features_en\Примеры\ПримерПроверкиСинтаксисаВРедакторе.feature"
* The script has loaded and we see that the lines in the script are underlined in red, because these script steps were not found in the steps library.
* If this option is disabled, the lines will no longer be underlined in color.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorНастройкиРедактора' UI Automation	
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПроверкаСинтаксисаВРедакторе' UI Automation	
		И Пауза 1
* Thus, it is recommended to leave this option enabled. It helps in the rapid investigation of errors.


* Next is an option that controls how differences are displayed on files comparison.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorНастройкиРедактора' UI Automation	
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorПоказыватьРазличияВРедактореОтдельно" "How to display differences in files" и перемещаю курсор
* To understand how it works, let's open a demo.
		И я делаю клик по заголовку Vanessa Automation
		И Пауза 1
		И я открываю файл сравнение настроек VA в режиме обучения
* The option is now enabled and the differences are displayed in two columns.
* Let's turn off this option.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorНастройкиРедактора' UI Automation	
		И Пауза 1
		И я перемещаю курсор к элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПоказыватьРазличияВРедактореОтдельно' UI Automation	
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПоказыватьРазличияВРедактореОтдельно' UI Automation	
		И Пауза 1
* Now differences in files are displayed immediately in the text.
* Which mode of displaying differences to use is up to user.
* I would also like to note that two more buttons have appeared in the editor panel that allow you to navigate in the differences window.
		И Я делаю подсветку нескольких элементов VA "Navigating the differences" UI Automation
			| 'Name'                       |
			| 'VanessaEditorPreviousDiff' |
			| 'VanessaEditorNextDiff'     |
* When you click these buttons, you move to the next place where the text differs.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorNextDiff' UI Automation	
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorNextDiff' UI Automation	
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorNextDiff' UI Automation	
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorNextDiff' UI Automation	
		И Пауза 1



* And we have one more menu item left to consider. This is visibility control of the command panel buttons.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorНастройкиРедактора' UI Automation	
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorНастройкаВидимостиКнопокПанелиРедактора" "Buttons visibility management" и перемещаю курсор

* This menu item, opens a window where you can flexibly configure editor command panel buttons visibility.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorНастройкаВидимостиКнопокПанелиРедактора' UI Automation	
		И Пауза 1
* This allows to hide unnecessary options.
* It is also useful when working with low resolution monitors.

* That's it, move on to the next lesson of the interactive help.
		
		Если существует элемент UI Automation "ЭтотСеанс" с именем "Отменить" и типом "button" Тогда
			И я запоминаю строку "Отменить сохранение настроек видимости" в переменную "ТекстПодсказки"
			И я делаю клик по элементу формы 'ЭтотСеанс' '$ТекстПодсказки$' UI Automation. Поиск по подсказке
		Иначе	
			И я делаю клик по элементу формы 'ЭтотСеанс' 'Cancel' 'button' UI Automation

		И Пауза 1
		И я делаю клик по заголовку Vanessa Automation

//Do not translate 156