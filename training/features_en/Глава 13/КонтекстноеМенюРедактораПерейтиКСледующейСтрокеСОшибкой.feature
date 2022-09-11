# language: ru

@lessons

Функционал: Интерактивная справка. Контекстное меню редактора. Перейти к следующей строке с ошибкой.

Сценарий: Контекстное меню редактора. Перейти к следующей строке с ошибкой.

* Hi! In this lesson, I will tell you about the context menu of the editor and how to move to the next line with an error. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКонтекстноеМенюРедактораПустойСценарий.feature"


* To do this, there is a context menu command.
		И я делаю клик по элементу формы 'ЭтотСеанс' '' 'Document' правой кнопкой UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюПерейтиКСтрокеСОшибкой" "Go to the next error line" и перемещаю курсор

* This command performs the same actions as this button. Watch a lesson about it.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПерейтиКСледующейОшибке' UI Automation	
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorПерейтиКСледующейОшибке" "Go to the next error line" и перемещаю курсор

* That's it, move on to the next lesson of the interactive help.


