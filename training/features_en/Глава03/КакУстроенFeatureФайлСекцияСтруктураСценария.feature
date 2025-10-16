# language: ru

@lessons

Функционал: Интерактивная справка. Как устроен feature файл? Секция Структура сценария.

Сценарий: Как устроен feature файл? Секция Структура сценария.

* Hi! In this lesson, I will tell you about the structure of feature file. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я отключаю показ строк подсценариев в редакторе VA в режиме обучения
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКакУстроенФичаФайлСтруктураСценария.feature"
		И я позиционирую в центр строку редактора VA в режиме обучения 21

* A scenario outline is a special kind of script that allows to run the same script multiple times with different parameters.

* Let's see how it works.
* The declaration of the scenario outline is indicated by the corresponding keyword.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "Scenario Outline:" 'Keyword "Scenario outline"'

* Next is its name.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "Structure of script 1" 'Name of the scenario outline'

* Further in the script steps, it becomes possible to use a special type of parameters that are written in angle brackets.
* For example as in this line
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "<Parameter1>" 'Parameter in angle brackets'
	
* Or here
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "<Parameter2>" 'Parameter in angle brackets'

* Then, after all the steps of the scenario outline, the mandatory keyword Examples is placed.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "Examples:" 'Keyword Examples'

* Then there is a table of examples. It must have two or more lines.

* The first line lists all the parameters of the senario outline that were previously used in the steps in angle brackets.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "| \'Parameter1\' | \'Parameter2\' | \'Parameter3\' |" 'String with parameter names'

* It is followed by lines that are already real examples for this script.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 16 по 17 строку "ExampleValues" подсценарий

* It turns out that in this case the script will be executed twice.
* Initially it will use the parameter values from this string.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "| \'Value1\' | \'Value2\' | \'Value3\' |" 'First example'
* And the second time is from this one.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "| \'Value4\' | \'Value5\' | \'Value6\' |" 'The second example'

* That's it, move on to the next lesson of the interactive help.