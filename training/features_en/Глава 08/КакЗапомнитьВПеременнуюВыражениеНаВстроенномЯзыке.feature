# language: ru

@lessons

Функционал: Интерактивная справка. Как запомнить в переменную выражение на встроенном языке 1С.

Сценарий: Как запомнить в переменную выражение на встроенном языке 1С.

* Hi! In this lesson, I will tell you how to store an expression in a variable in the built-in 1C language. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКакЗапомнитьВПеременнуюВыражениеНаВстроенномЯзыке.feature"

* This step calculates an arbitrary expression in the built-in 1C language and save it to a variable.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 9 строку 'Special step. Local variable.' подсценарий

* Here, the first parameter is passed an expression written by 1C language syntax.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 8 "String(CurrentDate())" 'Expression in the built-in 1C language'
* The second parameter is the variable name
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 8 "CurrentData" 'Expression in the built-in 1C language'


* The same example is shown here, but with the global variable.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 11 по 14 строку 'The same step. Global variable.' подсценарий

* There is also an option when variables can be created in large code fragments in an 1C built-in language.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 16 по 24 строку 'Code snippet is used' подсценарий

* In this example, this line is responsible for creating a local variable.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 20 по 20 строку 'Creating a local variable' подсценарий
* And this line creates a global variable.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 21 по 21 строку 'Creating a global variable' подсценарий

* Let's run the script to make sure all the variables are created.
		И Я запускаю сценарий VA в режиме обучения и жду окончания выполнения

* That's it, move on to the next lesson of the interactive help.


