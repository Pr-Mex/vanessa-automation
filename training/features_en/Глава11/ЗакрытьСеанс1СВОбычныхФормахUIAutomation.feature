# language: ru

@lessons

Функционал: Интерактивная справка. Как закрыть сеанс 1С в обычных формах с помощью UI Automation.

Сценарий: Как закрыть сеанс 1С в обычных формах с помощью UI Automation.

* Hi! In this lesson, I will tell you about how to close a 1C session in regular forms using UI Automation. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерЗакрытьСеанс1СВОбычныхФормахUIAutomation.feature"

* To do this, use the steps that will perform mouse clicks on the corresponding menu items.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 7 строку 'Menu item "File"' подсценарий
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 9 строку 'Menu item "Exit"' подсценарий

* It is better to add a pause between the steps so that the 1C session interface has time to redraw.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 8 строку 'Pause between steps' подсценарий

* That's it, move on to the next lesson of the interactive help.


