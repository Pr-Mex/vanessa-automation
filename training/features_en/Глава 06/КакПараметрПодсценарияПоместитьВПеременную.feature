# language: ru

@lessons

Функционал: Интерактивная справка. Как параметр подсценария поместить в переменную.

Сценарий: Как параметр подсценария поместить в переменную.

* Hi! In this lesson, I will tell you how to put a subscript parameter in a variable. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКакПараметрПодсценарияПоместитьВПеременную.feature"

* In this example, the export script has one parameter.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 7 "Parameter1" 'Subscript parameter'

* Use this step to put it in a variable
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 9 строку 'Parameter will be placed in a variable' подсценарий

* It is important that the parameter name specified here
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 7 "Parameter1" 'Subscript parameter'
* Matched the parameter name specified here
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 9 "Parameter1" 'Step parameter'

* That's it, move on to the next lesson of the interactive help.



