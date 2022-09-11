# language: ru

@lessons

Функционал: Интерактивная справка. Передача многострочных строку в подсценарии.

Сценарий: Передача многострочных строку в подсценарии.

* Hi! In this lesson, I will tell you how to pass multi-line strings to subscripts. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я устанавливаю опцию VA в режиме обучения "ПоказыватьСтрокиПодсценариевVanessaEdittor" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\Экспорт\ЭкспортныеСценарииСМногострочнымиСтроками.feature"
		И я позиционирую в центр строку редактора VA в режиме обучения 1
	

* This export script is designed so that it has two steps accepting multiline strings as parameters.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 12 по 22 строку 'Steps taking multi-line strings' подсценарий
	
		
* Let's see what possibilities we have for transferring multiline strings to such subscripts.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерПодсценарии3.feature"

* In this example, two such parameters are passed to the subscript.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 17 строку 'Passing parameters to the subscript' подсценарий
	
* As a result, the values of the multiline parameters in the subscript steps will be replaced with new values.

* That's it, move on to the next lesson of the interactive help.
