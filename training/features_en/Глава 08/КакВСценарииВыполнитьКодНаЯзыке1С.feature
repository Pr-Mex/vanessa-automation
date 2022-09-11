# language: ru

@lessons

Функционал: Интерактивная справка. Как выполнить произвольный код в сценарии.

Сценарий: Как выполнить произвольный код в сценарии.

* Hi! In this lesson, I will tell you how to execute arbitrary code in a script. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* A significant point. Putting the code in the built-in 1C language inside the script makes the script less readable.
* This option should only be used in exceptional cases.
* Instead, it is often better to create a new step and put the code in the built-in 1C language inside this step.

* Now that we've cleared this up, let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерВыполнитьПроизвольныйКодВСценарииМенеджерТестирования.feature"

* This example shows three options to execute the code on the side of the test manager.
* The first option is to execute the client code.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 11 строку 'Execute client code' подсценарий
* The second option is to execute the code on the server with the ability to access Vanessa Automation object
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 14 по 17 строку 'Execute server code' подсценарий
* The third option is to execute the code at server without access to Vanessa Automation object.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 20 по 23 строку 'Execute server code' подсценарий
* This option is preferred if you just want to call the server code of the test configuration, and Test Manager is running in the same database as Test Client.

* Next, consider how to execute the code on the Test Client side.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерВыполнитьПроизвольныйКодВСценарииКлиентТестирования.feature"

* To do this, VA Extension must be installed in the database where Test Client is launched.
* If the extension is installed, then there are two options to execute arbitrary code on Test Client side.

* The first option is to execute the client code using an extension.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 12 строку 'Execute client code' подсценарий
* The second option is to execute the server code using the extension.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 15 по 18 строку 'Execute server code' подсценарий
	
* For more information about the VA Extension, see this hyperlink
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 7 строку 'Learn more about the extension' подсценарий

* That's it, move on to the next lesson of the interactive help.


