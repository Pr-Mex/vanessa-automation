# language: ru

@lessons

Функционал: Интерактивная справка. Условия.

Сценарий: Условия.

* Hi! In this lesson, I will tell you about the specifics of using conditions in scripts. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерУсловия1.feature"

* The first point. The condition step must start with the keyword If, and end with Then.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'If current window header is "Window Header" Then' 'Example of condition step'
* If a step is a condition, then it is marked in the editor with a special mark on the left.
* Steps that are inside the condition are separated by an additional indent.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'And Delay 1' 'Step inside the condition'

* The second point. There are steps that are specially created as conditions.
* Such steps are marked with a special mark when they are declared in epf files.
* Such steps are highlighted in green in the known steps tree of Vanessa Automation.
* Here are examples of such steps.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 14 строку подсценарий "Condition steps"

* Starting with a certain version in Vanessa Automation, any step may be performed as a condition.
* To do this, use the keyword If at the beginning of the step. And at the end of the step, add the word Then.
* Here is an example of a common step that is not a condition.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'Given "AttributeName" spreadsheet document is equal to "TemplateName"' 'Common step'
* And here is an example of the same step when it is used as a condition.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'If Spreadsheet document "AttributeName" is equal to layout "LayoutName" Then' 'Common step become a condition'

* I.e., the step uses the If keyword.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 22 "If" 'Keyword If'
* And at the end the word Then is added to the step text
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 22 "Then" 'Added the word "Then" at the end of the step'
* Now this step will be executed as a condition.
* This means that if a step raises an exception during execution, then the result of the condition will be False.
* Otherwise, the result of the condition will be True.

* Let's look at one more point.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерУсловия2.feature"

* The most complete version of using conditions is shown in this example.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 17 строку подсценарий "Usage of conditions"

* The syntax of Vanessa Automation language allows the use of the ElseIf keyword.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 12 "ElseIf" 'Keyword ElseIf'
* And also the keyword Else
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 16 "Else" 'Keyword Else'

* A significant point. The use of conditions in the script text must be justified.
* Please avoid using conditions where possible.

* That's it, move on to the next lesson of the interactive help.
