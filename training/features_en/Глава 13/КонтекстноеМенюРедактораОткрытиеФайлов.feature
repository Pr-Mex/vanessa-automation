# language: ru

@lessons

Функционал: Интерактивная справка. Контекстное меню редактора. Открытие файлов.

Сценарий: Контекстное меню редактора. Открытие файлов.

* Hi! In this lesson, I will tell you about the context menu of the editor and opening files. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКонтекстноеМенюРедактора.feature"

* In the context menu of the editor there are several commands for working with files.
		И Пауза 1
		И я делаю клик по элементу формы 'ЭтотСеанс' '' 'Document' правой кнопкой UI Automation
		И Пауза 1

* This menu item opens the subscript in a new tab. Hotkey F7.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюОткрытьПодсценарийВНовойВкладке" "Open the subscript in a new tab" и перемещаю курсор
* In this case, the feature file with the subcript will be opened on the line where the subscript is declared.

* The next menu item opens this feature file in an external editor. Hotkey Shift plus F7.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюПунктОткрытьФичаФайл" "Open feature file in external editor" и перемещаю курсор
* In this case, the application that is associated with the feature file extension will be used.

* This menu item opens the directory where the current feature file is located. Hotkey Control plus F7.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюОткрытьКаталогФичи" "Open feature file directory" и перемещаю курсор

* That's it, move on to the next lesson of the interactive help.

