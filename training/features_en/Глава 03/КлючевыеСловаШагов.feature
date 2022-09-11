# language: ru

@lessons

Функционал: Интерактивная справка. Как устроены шаги сценариев? Ключевые слова.

Сценарий: Как устроены шаги сценариев? Ключевые слова.

* Hi! In this lesson, I will tell you about the structure of script steps. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКлючевыеСловаШагов.feature"

* Each script step starts with a keyword.
* This step starts with the keyword Given.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения "Given" 'Keyword "Given"' подсценарий
		И Пауза 4

* And this step starts with the key word When.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения "When" 'Keyword "When"' подсценарий
	
* The keywords of the steps in the editor are usually highlighted in blue.
* The keyword does have any semantic weight. If you replace a keyword in a step, then the step will perform exactly the same actions as before.

* Keywords may contain spaces, such as in this step.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения "Also" 'Keyword "Also"' подсценарий

* Follow this link to obtain a complete list of keywords for all languages, including Russian.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 19 по 19 строку "Complete list of keywords in all languages." подсценарий

* That's it, move on to the next lesson of the interactive help.