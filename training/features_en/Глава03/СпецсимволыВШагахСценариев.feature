# language: ru

@lessons

Функционал: Интерактивная справка. Спецсимволы в шагах сценариев

Сценарий: Спецсимволы в шагах сценариев

* Hi! In this lesson, I will tell you about the specifics of using special characters in script steps. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерСпецсимволы.feature"

* To begin with, let's consider the case when you need to pass a quotation mark inside the step parameter.
* There is one string parameter in this step and it is framed by quotation marks.
		И я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 7 '"Part1 \\" Part2"' 'Step parameter'
* To use a quote character inside a parameter, it is escaped with a backslash character.
		И я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 7 '\\"' 'Escaping quotation marks'

* The same can be done when the step parameter is framed by apostrophes.
		И я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 8 '\\"' 'Escaping quotation marks'

* Also note that the apostrophe character has precedence over the quote character.
* Therefore, this example will also work correctly without escaping the quotation mark.
		И я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 9 ' " ' 'Quote without escaping'
* In simple terms, quotes may be non-escaped inside apostrophes.
* The opposite is not true. If the parameter is framed with quotation marks, then it is necessary to escape the apostrophe character inside it.

* Let's continue. The following example shows when to escape the apostrophe character inside step parameters.
* The answer is simple. This should always be done.
* For example, like here.
		И я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 12 ' \\\' ' 'Escaping apostrophe'
* Or like here.
		И я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 13 ' \\\' ' 'Escaping apostrophe'

* Moving on. When a Gherkin table is passed to a step and a pipe symbol must be used inside the table cells, it must also be escaped.
* Here is an example of how it looks like
		И я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 17 ' \\| ' 'Escaping pipe'

* Moving on. Also, when creating the steps, take into account that escaping can also be used for the backslash character.
* This is necessary to resolve some cases of passing special characters to step parameters.
* Therefore, when one backslash is used in a step parameter, it will be passed to the step as one backslash.
* When there are two such lines in a row, they are considered as one.
* Therefore, in this example, two slashes but not four will be passed to the step.
		И я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 20 '"\\\\\\\\ServerName"' 'Escaping slash'

* Curly braces can also be escaped.
* If an expression in curly brackets is found inside the string and Vanessa Automation is set to calculate expressions in curly brackets, then an attempt will be made to calculate the expression.
		И я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 23 'StringInCurlyBrackets' 'Escaping curly braces'
* If this option is disabled, then curly brackets can not be escaped.
* This is done to maintain compatibility with the behavior of previous versions of Vanessa Automation.

* And we have one more special character left to consider. This is the line feed character.
* It is marked like this.
		И я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 26 '\\n' 'Line feed'
* This way of passing multiline strings is useful in some cases.
* For example, when it is necessary to pass this line to Gherkin table cell.
		И я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 28 '\\n' 'Line feed'

* That's it, move on to the next lesson of the interactive help.
