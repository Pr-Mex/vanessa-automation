# language: ru

@lessons

Функционал: Интерактивная справка. Контекстное меню редактора. Точки останова.

Сценарий: Контекстное меню редактора. Точки останова.

* Hi! In this lesson, I will tell you about the context menu of the editor and breakpoints. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКонтекстноеМенюРедактора.feature"

* In the context menu of the editor, it is possible to set and remove breakpoints.
		И Пауза 1
		И я делаю клик по элементу формы 'ЭтотСеанс' '' 'Document' правой кнопкой UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "ГруппаКонтекстногоМенюVanessaEditorБрейпоинты" "Breakpoints" и перемещаю курсор

* This menu item sets or removes a breakpoint. Hotkey F9.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюБрейкпоинт" "Set/remove breakpoint." и перемещаю курсор

* The next menu item removes all breakpoints on this editor tab.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюБрейпоинтУбратьВсе" "Remove all breakpoints" и перемещаю курсор

* That's it, move on to the next lesson of the interactive help.


