# language: ru

@lessons

Функционал: Интерактивная справка. Контекстное меню редактора. Таблицы Gherkin.

Сценарий: Контекстное меню редактора. Таблицы Gherkin.

* Hi! In this lesson, I will tell you about the context menu of the editor and Gherkin tables. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКонтекстноеМенюРедактораТаблицыGherkin.feature"

* In the context menu of the editor, it is possible to work with Gherkin tables.
		Если существует элемент UI Automation "ЭтотСеанс" с именем "Генератор EPF" и типом "" Тогда
			И я запоминаю строку "Истина" в переменную "ЯзыкРусский"
		Иначе	
			И я запоминаю строку "Ложь" в переменную "ЯзыкРусский"
		И я делаю клик по элементу формы 'ЭтотСеанс' '' 'Document' правой кнопкой UI Automation
		И Пауза 1

* This menu item starts editing the table in a special window. Hotkey Control plus Shift plus T.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюРедактироватьТаблицуТекст" "Edit table" и перемещаю курсор

* When you select the menu item, the Gherkin Table editor opens.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorКонтекстноеМенюРедактироватьТаблицуТекст' UI Automation	
		И Пауза 1
		
* This window allows to quickly edit the table and put the result back into the script.

* In this table, you can edit the cell values.
		И я запоминаю родителя элемента "\'ColumnName1\' ColumnName1" с типом "" процесса "ЭтотСеанс" в переменную "IDЭлемента" UI Automation
		И я делаю подсветку элемента с ID '$IDЭлемента$' 'Edit cells'		

* And this table controls columns visibility.
		Если '$ЯзыкРусский$' Тогда
			И я запоминаю родителя элемента "ИмяКолонки1 " с типом "" процесса "ЭтотСеанс" в переменную "IDЭлемента" UI Automation
		Иначе	
			И я запоминаю родителя элемента "ColumnName1 " с типом "" процесса "ЭтотСеанс" в переменную "IDЭлемента" UI Automation
		И я делаю подсветку элемента с ID '$IDЭлемента$' 'Column visibility'		

* This button sets the visibility of all table columns.
		И Я делаю подсветку элемента VA "РедакторТаблицСписокКолонокПометитьВсе" "Mark all columns"

* And this button disables all table columns visibility.
		И Я делаю подсветку элемента VA "РедакторТаблицСписокКолонокСнятьВсе" "Remove all marks"

* This button moves the column towards the beginning of the table.
		И Я делаю подсветку элемента VA "РедакторТаблицСписокКолонокСдвинутьКолонкуВВерх" "Move column to the beginning"
	
* And this button moves the column towards the end of the table.
		И Я делаю подсветку элемента VA "РедакторТаблицСписокКолонокСдвинутьКолонкуВниз" "Move column to the end"
		И Пауза 0.1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'РедакторТаблицСписокКолонокСдвинутьКолонкуВниз' UI Automation	
		И Пауза 1

* This button adds one more column to the table.
		И Я делаю подсветку элемента VA "РедакторТаблицСписокКолонокДобавитьКолонку" "Add column"

* After editing is finished, click on this button and the edited table will be placed in the editor text.
		И Я делаю подсветку элемента VA "РедакторТаблицФормаОК" "Finish editing"
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'РедакторТаблицФормаОК' UI Automation	

* That's it, move on to the next lesson of the interactive help.



