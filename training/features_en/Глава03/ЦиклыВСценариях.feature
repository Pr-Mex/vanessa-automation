# language: ru

@lessons

Функционал: Интерактивная справка. Циклы.

Сценарий: Циклы.

* Hi! In this lesson, I will tell you about the specifics of using loops in scripts. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерЦиклов1.feature"

* The first point. The loop step can start with any keyword.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'And for each line of "TableName" table I do' 'Example of loop step'
* If a step is a loop, then it is marked in the editor with a special mark on the left.
* Steps that are inside the loop are separated by an additional indent.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'And Delay 1' 'Step inside the loop'

* Such steps are marked with a special mark when they are declared in epf files.
* They are also highlighted in purple in the tree of known Vanessa Automation steps.
* Here are some examples of such loop steps.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 24 строку подсценарий "Examples of using loops"

* The second point. There are special steps that allow to interrupt the loop or continue the execution of the loop.
* This step allows the loop to continue.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'Then I continue the loop' 'Continuation of loop execution'
* It is an analogue of the Continue operator from the built-in 1C language.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'Then I continue the loop' 'Analog of the "Continue" operator'

* There is also a special step that breaks the loop.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'Then I interrupt the loop' 'Loop execution break'
* This is an analogue of the Break operator from the built-in 1C language.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'Then I interrupt the loop' 'Analog of the "Abort" operator'

* A significant point. The use of loops in the script text must be justified.
* Please avoid using loops where possible.

* That's it, move on to the next lesson of the interactive help.
