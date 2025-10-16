# language: ru

@lessons

Функционал: Интерактивная справка. Контекстное меню редактора. Контекстное меню Monaco.

Сценарий: Контекстное меню редактора. Контекстное меню Monaco.

* Hi! In this lesson, I will tell you about the context menu of the editor and the context menu of Monaco. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКонтекстноеМенюРедактораПустойСценарий.feature"


* To do this, there is a context menu command.
		И я делаю клик по элементу формы 'ЭтотСеанс' '' 'Document' правой кнопкой UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюКонтекстноеМеню" "Monaco context menu" и перемещаю курсор

* This command opens the native context menu from the Monaco editor.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorКонтекстноеМенюКонтекстноеМеню' UI Automation	
		И Пауза 1
* In this menu, you can view all the hotkeys that are assigned in the editor.
		И я нажимаю сочетание клавиш "UP"
		И Пауза 0.1
		И я нажимаю сочетание клавиш "Enter"
		
		

* That's it, move on to the next lesson of the interactive help.



