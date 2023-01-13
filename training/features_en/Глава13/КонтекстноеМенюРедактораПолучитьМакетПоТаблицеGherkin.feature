# language: ru

@lessons

Функционал: Интерактивная справка. Контекстное меню редактора. Получить макет по таблице Gherkin.

Сценарий: Контекстное меню редактора. Получить макет по таблице Gherkin.

* Hi! In this lesson, I will tell you about the context menu of the editor and how to get the template by Gherkin table. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКонтекстноеМенюРедактораТаблицыGherkin.feature"

* This menu item gets a spreadsheet document from the Gherkin table.
		И я делаю клик по элементу формы 'ЭтотСеанс' '' 'Document' правой кнопкой UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюПолучитьМакетПоТаблице" "Get template by table" и перемещаю курсор

* When executing the command, the template window will open.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorКонтекстноеМенюПолучитьМакетПоТаблице' UI Automation	
		И Пауза 1

* This option can be useful when, for example, Test client does not allow the table to be displayed in a spreadsheet document in a regular way.
* Then you can first get the Gherkin table from this testing client table, and then convert it into a layout.

* That's it, move on to the next lesson of the interactive help.



