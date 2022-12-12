# language: ru

@lessons

Функционал: Интерактивная справка. Как устроен feature файл? Секция Сценария.

Сценарий: Как устроен feature файл? Секция Сценария.

* Hi! In this lesson, I will tell you about the structure of feature file. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКакУстроенФичаФайл.feature"
		И я позиционирую в центр строку редактора VA в режиме обучения 21

* Next is the Script section. It is indicated by the corresponding keyword.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения "Scenario:" "Keyword Scenario" подсценарий

* The keyword must be followed by the script name. In this case, this is script one.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения "Scenario 1" "Scenario Name" подсценарий
* The script name should be unique for this feature file.
* The script can have its own tags. They are just above the script definition line.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 17 по 18 строку "Scenario tags" подсценарий
* Script tags are also commonly used to run a subset of scripts tagged with a particular tag in builds.
* Or exclude from the assembly part of the scripts that contain a specific tag.
* Next are the steps that will be performed in this script.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 21 по 25 строку "Scenario steps" подсценарий

* That's it, move on to the next lesson of the interactive help.
