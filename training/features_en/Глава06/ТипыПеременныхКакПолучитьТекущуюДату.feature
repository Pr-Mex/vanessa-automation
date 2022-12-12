# language: ru

@lessons

Функционал: Интерактивная справка. Типы переменных.

Сценарий: Типы переменных.

* Hi! In this lesson, I will tell you about the types of variables. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерТипыПеременных.feature"

* And we will execute it
		И Я запускаю сценарий VA в режиме обучения и жду окончания выполнения	

* So. There are three types of variables. String, Number, Date.
* The main and recommended type for use is the string type.
* The other types should be used only if necessary.

* This example shows a simple way to get variables of different types using a step that calculates an arbitrary expression of the built-in language.

* Here is an example of how an arbitrary string can be placed in a variable.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 8 строку 'The string is placed in a variable' подсценарий
* And this example performs concatenation of two strings.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 9 строку 'Adding strings' подсценарий
* This example performs the addition of two numbers and converts the result to a string.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 10 строку 'Adding numbers with conversion to a string' подсценарий
* This example calculates the current date in day, month, year format and saves it to a variable as a string.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 11 по 11 строку 'Current date as a string' подсценарий

* This example adds two numbers and puts the result in a variable. In this case, the variable will have the Number type.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 14 по 14 строку 'Adding numbers' подсценарий

* This example calculates the current date and puts the result in a variable. In this case, the variable will have the Date type.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 17 по 17 строку 'Calculating the current date' подсценарий

* That's it, move on to the next lesson of the interactive help.



