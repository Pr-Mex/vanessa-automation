# language: ru

@lessons

Функционал: Интерактивная справка. Контекстное меню редактора. Подбор шагов.

Сценарий: Контекстное меню редактора. Подбор шагов.

* Hi! In this lesson, I will tell you about the context menu of the editor and the selection of steps. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКонтекстноеМенюРедактора.feature"

* The context menu of the editor allows to perform many useful actions
		Если существует элемент UI Automation "ЭтотСеанс" с именем "Генератор EPF" и типом "" Тогда
			И я запоминаю строку "Истина" в переменную "ЯзыкРусский"
		Иначе	
			И я запоминаю строку "Ложь" в переменную "ЯзыкРусский"

		И Пауза 1
		И я делаю клик по элементу формы 'ЭтотСеанс' '' 'Document' правой кнопкой UI Automation
		И Пауза 1

* This menu item calls up a tree of known steps.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюОткрытьОпределениеШага" "Steps selection" и перемещаю курсор
* It can also be called using the keyboard shortcut Control plus. I.
* Clicking the menu item will open the step tree.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorКонтекстноеМенюОткрытьОпределениеШага' UI Automation	
		И Пауза 2
* In this case, an attempt will be made to open the tree at the step at which the mouse click was made.
		И Я делаю подсветку у строки дерева шагов 'And I select current line in "TableName" table' 'The tree opened on the step'

* This allows to quickly get information about the current step and see the steps located nearby.
* Also, double-click on the selected step will add the step to the script text.

* That's it, move on to the next lesson of the interactive help.

