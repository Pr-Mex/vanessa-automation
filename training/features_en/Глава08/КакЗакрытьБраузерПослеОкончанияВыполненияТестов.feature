# language: ru

@lessons

Функционал: Интерактивная справка. Как закрыть браузер после окончания выполнения тестов.

Сценарий: Как закрыть браузер после окончания выполнения тестов.

* Hi! In this lesson, I will tell you about how to close the browser after completing the tests. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКакЗакрытьБраузерПослеОкончанияВыполненияТестов.feature"

* To do this, perform a step that closes all browser tabs.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 7 строку 'Close all browser tabs' подсценарий

* This is enough, since most browsers close the main window after closing the last tab.

* That's it, move on to the next lesson of the interactive help.


