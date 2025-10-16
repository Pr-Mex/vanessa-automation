# language: ru

@lessons

Функционал: Интерактивная справка. Как использовать переменную для вычисления выражения на сервере.

Сценарий: Как использовать переменную для вычисления выражения на сервере.

* Hi! In this lesson, I will tell you how to use a variable to calculate an expression at the server. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКакИспользоватьПеременнуюДляВычисленияНаСервере.feature"

* There are two main options for passing a variable to an expression at the server.
		И я перемещаю курсор к заголовку Vanessa Automation 
* In this example, the first step is reading the file contents into a variable.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 8 строку 'Read a file into a variable' подсценарий
* Then the quotation marks are doubled.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 9 строку 'Doubling quotes' подсценарий
* Then a pipe is added to the newline character.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 10 строку 'Replace the line feed character' подсценарий
* After that, the string that is contained in the variable can be used in the calculation of the expression at the server.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 12 по 14 строку 'Calculating an expression at server' подсценарий

* There is a second option. It's more simple.
* First, the file is also read into a variable.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 18 по 18 строку 'Read a file into a variable' подсценарий
* Then, using an expression of the 1C built-in language, the value of the variable is placed in a special attribute.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 20 по 22 строку 'Variable value is placed in the attribute' подсценарий
* Then the value from the attribute is used in the expression at the server
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 23 по 25 строку 'The attribute is used in the expression at server' подсценарий
* Then you can use the same attribute to return the value calculated on the server to the variable.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 27 по 30 строку 'The attribute is used in the expression at client' подсценарий

* And it is important to remember that it is much better not to use code in the 1C built-in language in scripts, but rather to create a new step or steps that will perform the same actions.


* That's it, move on to the next lesson of the interactive help.




