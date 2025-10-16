# language: ru

@lessons

Функционал: Интерактивная справка. Точки останова.

Сценарий: Точки останова

* Hi! In this lesson, I will tell you how to work with breakpoints. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		И я скрываю часть кнопок командной панели редактора в режиме обучения

* Let's upload a test case.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерТочкиОстанова.feature"

* Use this command to set a breakpoint. Or F9 hotkey.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorSetBreakPoint" "Set/remove breakpoint"

* In this case, the breakpoint will be set in the current line.
		И я устанавливаю текущую строку редактора режим обучения 10
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorSetBreakPoint' UI Automation

* In this case, a breakpoint was set in line number ten
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 10 строку 'A breakpoint is set in the line' подсценарий
		
* Now script execution will be interrupted on line number ten.
		И Я запускаю сценарий VA в режиме обучения и жду окончания выполнения

* At that only these lines of the script were executed
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 9 строку 'Only these lines are executed' подсценарий

* Repeated execution of this command will remove the breakpoint if it was set earlier.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorSetBreakPoint" "Set/remove breakpoint"

* Let's continue. Sometimes you need to look at the list of set breakpoints.
* To do this, click this button.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorПоказатьСписокТочекОстанова" "List of breakpoints"
* Then a window containing this list will appear.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПоказатьСписокТочекОстанова'
		И Пауза 1
		И Я делаю подсветку элемента VA с типом "Table" "List of breakpoints"

* From this window, you can navigate to the selected breakpoint.
		Если существует элемент UI Automation "ЭтотСеанс" с именем "Перейти" и типом "Button" Тогда
			И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
				| 'Имя/ID'  | 'Type'    |
				| 'Перейти' | 'Button' |

				| 'Name'  | 'Value'                 |
				| 'text' | 'Go to breakpoint' |
			И Пауза 4
			И я делаю клик по элементу формы 'ЭтотСеанс' 'Перейти' 'Button' UI Automation
			И Пауза 1
		Иначе		
			И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
				| 'Имя/ID'     | 'Type'    |
				| 'Go to line' | 'Button' |

				| 'Name'  | 'Value'                 |
				| 'text' | 'Go to breakpoint' |

			И Пауза 4
			И я делаю клик по элементу формы 'ЭтотСеанс' 'Go to line' 'Button' UI Automation
			И Пауза 1
		
* It is also possible to remove all breakpoints by clicking this button.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorRemoveBreakPoints" "Delete all breakpoints"
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorRemoveBreakPoints'
		

* That's it, move on to the next lesson of the interactive help.



