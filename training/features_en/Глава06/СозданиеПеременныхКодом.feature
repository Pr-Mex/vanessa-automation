# language: ru

@lessons

Функционал: Интерактивная справка. Создание переменных кодом.

Сценарий: Создание переменных кодом.

* Hi! In this lesson, I will tell you how to create a variable in the 1C code. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерСозданиеПеременныхКодом.feature"

* Variables can be created in the code in the built-in 1C language.
	
* To create a local variable, you need to use the special word Context.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 10 строку 'Create local variable programmatically' подсценарий
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 10 "Context" 'Special word Context'
	
* To create a global variable, you need to use the special word ContextStored.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 17 по 17 строку 'Create global variable programmatically' подсценарий
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 17 "ContextSaved" 'Special word ContextSaved'

* That's it, move on to the next lesson of the interactive help.
		И Я запускаю сценарий VA в режиме обучения и жду окончания выполнения




