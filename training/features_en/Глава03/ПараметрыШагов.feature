# language: ru

@lessons

Функционал: Интерактивная справка. Как устроены шаги сценариев? Ключевые слова шагов.

Сценарий: Как устроены шаги сценариев? Параметры шагов.

* Hi! In this lesson, I will tell you about the structure of script steps. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерПараметрыШагов.feature"

* Vanessa Automation steps support three types of parameters. It is String, Number, or Date.
* String parameters are used the most commonly.
* Parameters of type Number are used less frequently.
* And parameters with date are used very rarely.

* When a String type parameter is passed to a step, enclose the parameter value in quotation marks
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения '"Hello world!"' "String in quotes" подсценарий
		
* Or the value of the parameter should be enclosed in apostrophes
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения '\'Hello world!\'' "String in apostrophes" подсценарий
* In general, it is better to use apostrophe character, because it has a higher priority.

* To pass a numeric parameter to a step, just write the required number in the step.

* Like this, for example.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения '0' "A number is passed to the parameter" подсценарий
* Or so.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения '10' "A number is passed to the parameter" подсценарий
		
		
* To pass a Date parameter to a step, just write the date value in any of two acceptable formats.
* Like this, for example.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения '08.04.81' "A date is passed to the parameter" подсценарий
* Or so.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения '08.04.1981' "A number is passed to the parameter" подсценарий

* That's it, move on to the next lesson of the interactive help.