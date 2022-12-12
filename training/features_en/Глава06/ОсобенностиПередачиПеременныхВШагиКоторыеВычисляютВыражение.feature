# language: ru

@lessons

Функционал: Интерактивная справка. Особенности передачи переменных в шаги, которые вычисляют выражение.

Сценарий: Особенности передачи переменных в шаги, которые вычисляют выражение.

* Hi! In this lesson, I will tell you about the specifics of passing variables to steps that calculate an expression. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерОсобенностиПередачиПеременныхВШагиКоторыеВычисляютВыражение.feature"

* And we will execute it
		И Я запускаю сценарий VA в режиме обучения и жду окончания выполнения	

* In this block we create two variables
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 8 строку 'Create two variables' подсценарий

* Next, let's look at different ways to use these variables when calculating expressions in 1C language.
* You can pass variables to an expression using dollar characters.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 11 по 11 строку 'Usage of variables and the dollar special character' подсценарий
* In this case, mind carefully the type of variable. For string variables, mind the quotation marks placement.

* There is also another option to pass the value of a variable to 1C built-in language expression.
* To do this, you need to use the special word Context for local variables. And the special word ContextStored for global variables.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 14 по 14 строку 'Usage of special word Context' подсценарий

* You can also use variables when executing code fragments in 1C built-in language, provided that the code is executed on the client.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 17 по 21 строку 'Usage of dollar special character and the word Context in a code snippet' подсценарий

* That's it, move on to the next lesson of the interactive help.



