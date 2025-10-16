# language: ru

@lessons

Функционал: Интерактивная справка. Использование переменных внутри параметров шагов

Сценарий: Использование переменных внутри параметров шагов

* Hi! In this lesson, I will tell you how to use variables inside steps parameters. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерИспользованиеПеременныхВнутриПараметровШагов.feature"

* A variable can be passed as a parameter value in a step.
* Also, a variable can be passed as part of the parameter value in a step.

* This step creates one variable, CompanyName.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 8 "CounterpartyName" '"Counterpartyname" variable is created'
* Next, the value of this variable is passed to the second parameter of this step
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 9 "$ClientName$" 'A variable is passed to the step parameter'

* Now let's look at more complex example. This step creates the first variable.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 12 "VariableLLC" 'First variable'
* And this step creates a second variable.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 13 "VariableDaisy" 'The second variable'
* Now both of these variables are used in the second parameter of this step.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 14 "$Variable1$ $Variable2$" 'Both variables are used'

* At that both examples do the same thing.
* A significant point. It is possible to pass several variables in step parameters only when the variables are of the string type.

* That's it, move on to the next lesson of the interactive help.



