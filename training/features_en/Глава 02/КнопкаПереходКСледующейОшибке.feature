# language: ru

@lessons

Функционал: Интерактивная справка. Переход к следующей ошибке при выполнении сценариев.

Сценарий: Переход к следующей ошибке при выполнении сценариев

* Hi! In this lesson, I will tell you how to quickly jump to a script line with an error. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		И я скрываю часть кнопок командной панели редактора в режиме обучения

* Let's upload a test case.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерПереходКСледующейОшибке.feature"

* And we will execute this script.
		И Я запускаю сценарий VA в режиме обучения и жду окончания выполнения

* In this example, three scripts were executed with an error at once.
* Click this button to fast move to the error line. Or press the hotkey F8.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorПерейтиКСледующейОшибке" "Quick jump to the error line"

* Clicking this button will jump to the line with the error.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПерейтиКСледующейОшибке' UI Automation
		И Пауза 1
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 7 строку 'Go to the error line' подсценарий

* Clicking again will move to the next line with an error. An so on.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПерейтиКСледующейОшибке' UI Automation
		И Пауза 1
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 12 по 12 строку 'Go to the error line' подсценарий
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПерейтиКСледующейОшибке' UI Automation
		И Пауза 1
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 17 по 17 строку 'Go to the error line' подсценарий
		
* That's it, move on to the next lesson of the interactive help.



