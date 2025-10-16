# language: ru

@lessons

Функционал: Интерактивная справка. Как устроены шаги сценариев? Снипеты шагов.

Сценарий: Как устроены шаги сценариев? Снипеты шагов.

* Hi! In this lesson, I will tell you about what a script step snippet is and what the message "No procedure or function to perform the step" means. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерСнипетыШагов.feature"

* Let's talk a little bit about what a step snippet is.
* A snippet is a special service string. It is calculated by a certain algorithm.

* First, the keyword at the beginning of line is discarded.
* In this case, this keyword is Given
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения "Given" 'Keyword "Given"' подсценарий
* Then all parameters are removed from the step.
* In this example, there are two of them.
* The first parameter
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения '"Parameter1"' 'The first parameter' подсценарий
* And the second parameter
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения '"Parameter2"' 'The second parameter' подсценарий
* What is left of the original string is called the step snippet.
* In this case, the snippet will look like this
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения "ExampleOfAStepIsGivenQithTheFirstParameterAndTheSecondParameter" 'Step snippet' подсценарий

* Onward is a significant point. Each step that Vanessa Automation uses is in some epf file from the available steps library.
* When a step is declared in the library, it notifies the system which snippet it corresponds to.
		И Я делаю подсветку элемента формы VA по имени "ГруппаКаталогиБиблиотек" "Step libraries"
* Thus, a correspondence is established between the script step and a specific procedure in 1C built-in language, which will eventually be executed.
* If no steps have been declared for this snippet, a message will be displayed during script execution.
* Procedure or function to perform the step is not found.
* Let's run the script for execution to make sure of this.
		И Я запускаю сценарий VA в режиме обучения и жду окончания выполнения
		
* This message means that no epf file was found for the script line that executes the step on this line.
		И я делаю подсветку в окне сообщений по части строки 'Procedure or function to perform the step is not found' 'Message: "Empty snippet address of the step"' 
		И Пауза 5
		
* Also in the editor, the step line was highlighted with special color.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 7 строку "Special coloring" подсценарий
* This usually means that either the step is written incorrectly, for example with typos.
* Or the library of steps in which this step is implemented is not connected.

* That's it, move on to the next lesson of the interactive help.
