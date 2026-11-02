# language: ru

@lessons

Функционал: Интерактивная справка. Контекстное меню редактора. Вкладки.

Сценарий: Контекстное меню редактора. Вкладки.

* Hi! In this lesson, I will tell you about the tab closing commands in the context menu of the editor. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКонтекстноеМенюРедактора.feature"

* The context menu of the editor has the "Tabs" submenu with tab management commands.
		И Пауза 1
		И я делаю клик по элементу формы 'ЭтотСеанс' '' 'Document' правой кнопкой UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "ГруппаКонтекстногоМенюVanessaEditorВкладки" "Tabs" и перемещаю курсор

* This command closes the current editor tab. Hotkey Ctrl+W.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюЗакрытьВкладку" "Close tab" и перемещаю курсор

* The next command closes all editor tabs except the current one.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюЗакрытьДругиеВкладки" "Close other tabs" и перемещаю курсор

* This command closes all tabs to the right of the current one.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюЗакрытьВкладкиСправа" "Close tabs to the right" и перемещаю курсор

* This command closes the tabs without unsaved changes.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюЗакрытьСохраненныеВкладки" "Close saved tabs" и перемещаю курсор

* And this command closes all editor tabs at once.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюЗакрытьВсеВкладки" "Close all tabs" и перемещаю курсор

* If there are unsaved changes in the tabs being closed, Vanessa will ask one common question and offer to save all changes.

* That's it, move on to the next lesson of the interactive help.


