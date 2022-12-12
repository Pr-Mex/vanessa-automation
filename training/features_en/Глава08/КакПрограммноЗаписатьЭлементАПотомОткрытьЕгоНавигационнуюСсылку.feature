# language: ru

@lessons

Функционал: Интерактивная справка. Как программно записать элемент а потом открыть его навигационную ссылку.

Сценарий: Как программно записать элемент а потом открыть его навигационную ссылку.

* Hi! In this lesson, I will tell you how to programmatically record a catalog element or a document, and then open its navigation link. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКакПрограммноЗаписатьЭлементАПотомОткрытьЕгоНавигационнуюСсылку.feature"


* In this example, the expression is evaluated on the server and then placed in the special attribute.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 11 строку 'Calculating the navigation link at server' подсценарий
	
* Then a variable is created, and the previously calculated value is placed in that variable.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 13 по 16 строку 'Create a variable' подсценарий
	
* Then the navigation link opens
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 18 по 18 строку 'Navigation link opening' подсценарий


* That's it, move on to the next lesson of the interactive help.


