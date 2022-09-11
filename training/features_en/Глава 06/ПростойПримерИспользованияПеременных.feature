# language: ru

@lessons

Функционал: Интерактивная справка. Для чего нужны переменные языка Gherkin? Пример использования.

Сценарий: Для чего нужны переменные языка Gherkin? Пример использования.

* Hi! In this lesson, I will tell you about the purpose of Gherkin language variables and demonstrate a simple example of their application. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* The main purpose of variables is to store an intermediate value, which can then be used either in the same or in other scripts.
* There are local and global variables.

* Let's upload a test case.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерДляЧегоНужныПеременные.feature"

* First, let's look at an example of working with local variables.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 9 строку 'Create and use a local variable' подсценарий
* A significant point. Local variables exist only within the script where they were created.
* After the script execution is completed, all local variables will be deleted.

* There are several steps that store a value into a variable.
* In this case, a step is used that saves an arbitrary string to a variable.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 8 строку 'Save a string to a variable' подсценарий

* Here, the first parameter is the string to be saved.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 8 "Daisy LLC" 'The string to be saved'
* And the second parameter is the name of the future variable.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 8 "CounterpartyName" 'Variable name'
* Please note that since we are creating a local variable, its name may be written without any special characters.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 8 "CounterpartyName" 'Variable name'

* Moving on. This step shows local variable usage.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 9 строку 'Usage of local variable' подсценарий
* To pass the value of a variable in a step, its name must be framed with dollar characters.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 9 "$ClientName$" 'Local variable value is passed to the step'

* Now let's look at an example of working with a global variable.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 11 по 13 строку 'Creating a global variable' подсценарий
* A significant point. Global variables exist while Vanessa Automation form is open.
* Before creating a global variable, it is better to perform this step. It will delete the global variable if it already exists.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 12 по 12 строку 'Delete a previously created variable' подсценарий
* Next, you can use the same steps that create local variables, but when specifying the variable name, it must be framed with two dollar characters.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 13 "$$AccountNameGlobally$$" 'Global variable value is passed to the step'
	
* And since a global variable has been created, it can be used in other scripts, as shown in this example.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 18 по 18 строку 'Using a global variable in another script' подсценарий
* Global variable name must be framed with two dollar characters when passing its value to a step.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 18 "$$AccountNameGlobally$$" 'Global variable value is passed to the step'

* That's it, move on to the next lesson of the interactive help.



