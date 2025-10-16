# language: ru

@lessons

Функционал: Интерактивная справка. Контекстное меню редактора. Выполнение сценария.

Сценарий: Контекстное меню редактора. Выполнение сценария.

* Hi! In this lesson, I will tell you about the context menu of the editor and script execution. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКонтекстноеМенюРедактора.feature"

* In the context menu of the editor there is a whole section that allows to execute scripts in whole or partially.
		И Пауза 1
		И я делаю клик по элементу формы 'ЭтотСеанс' '' 'Document' правой кнопкой UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "ГруппаКонтекстногоМенюVanessaEditorОсновная" "Script Execution" и перемещаю курсор

* This menu item executes the script not from the beginning, but from the current step. Hotkey Control plus F5.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюВыполнитьДанныйСценарийСТекущегоШага" "Executing the script from the current step" и перемещаю курсор
* Other scenarios will not be executed.

* The next menu item executes the script from the current step. Hotkey Control plus Shift plus F5.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюВыполнитьДанныйСценарийСТекущегоШагаСПродолжением" "Script execution from the current step with continuation" и перемещаю курсор
* After executing the current script, the following scripts will start executing.
 
* This menu item executes the selected script lines.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюВыполнитьВыделенныеСтроки" "Execution of selected script lines" и перемещаю курсор
 
* The next menu item executes only this script from the very beginning. Hotkey Alt plus F5.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюПунктВыполнитьСценарий" "Run the script from the beginning" и перемещаю курсор
 
* This menu item performs only one step. Hotkey F11.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюВыполнитьОдинШаг" "Perform one step" и перемещаю курсор

* That's it, move on to the next lesson of the interactive help.

