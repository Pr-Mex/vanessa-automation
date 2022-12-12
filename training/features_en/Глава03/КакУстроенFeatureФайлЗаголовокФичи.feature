# language: ru

@lessons

Функционал: Интерактивная справка. Как устроен feature файл? Заголовок фичи.

Сценарий: Как устроен feature файл? Заголовок фичи.

* Hi! In this lesson, I will tell you about the structure of feature file. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And let's upload a test example. With its help, we will clearly analyze the text in Gherkin language structure.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКакУстроенФичаФайл.feature"

* Look. There are several sections in the feature file structure.

* At the very beginning of the file, a directive can be described, which indicates the language of this feature file.
		И я делаю подсветку текста в редакторе VA в режиме обучения в строке 1 "Feature file language" подсценарий

* If this string is not specified, then the default language is considered Russian.

* Next is the feature file tag section.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 3 по 5 строку "Feature tag section" подсценарий

* In general, tags are labels within text. How to interpret them is up the feature file user.
* For example, Vanessa Automation has a mechanism that excludes feature files with certain tags, or vice versa, selects feature files containing the necessary tags.
* This section is optional.

* Next is the name of the functionality that is implemented in the feature file.

* First, the keyword Functionality or similar is written.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения "Feature:" "Keyword Feature" подсценарий

* Next, the name of the functionality is placed on the right. For example: creating a Customer order, or checking stock balances, and so on.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения "Functionality name" "Functionality name" подсценарий
* The functionality section is mandatory and can only appear once in a feature file.

* Next is the section describing this functionality customer and why they need it.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 11 строку "Role and business effect" подсценарий

* Example text: As a sales manager, I want to be able to post customer orders in the system so that I can then make deals with customers.
* This section is optional.

* That's it, move on to the next lesson of the interactive help.