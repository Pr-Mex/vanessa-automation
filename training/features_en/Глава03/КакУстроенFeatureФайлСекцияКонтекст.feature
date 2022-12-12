# language: ru

@lessons

Функционал: Интерактивная справка. Как устроен feature файл? Секция Контекст.

Сценарий: Как устроен feature файл? Секция Контекст.

* Hi! In this lesson, I will tell you about the structure of feature file. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКакУстроенФичаФайл.feature"

* Next is the Context section. It is indicated by the corresponding keyword.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения "Background:" "Keyword Context" подсценарий
* The meaning of this section is that it contains the steps that will be performed before each feature file script.
* In this case, these are the two steps.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 14 по 15 строку "Steps in the Context section" подсценарий
* Usually, some universal actions are performed in Context section. For example, Test Client connecting and closing all its windows that remained after executing the previous scripts.

* The Context section is optional. If a section is declared, there must exist at least one step.
* If the Context section is declared in the feature file, but there is no script, then the steps from the Context section will not be executed.

* That's it, move on to the next lesson of the interactive help.