# language: ru

@lessons

Функционал: Интерактивная справка. Как устроен feature файл? Секция Переменные.

Сценарий: Как устроен feature файл? Секция Переменные.

* Hi! In this lesson, I will tell you about the purpose of Variables section in the feature file. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я отключаю показ строк подсценариев в редакторе VA в режиме обучения
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКакУстроенФичаФайлСекцияПеременныеПростые.feature"
		И я позиционирую в центр строку редактора VA в режиме обучения 1

* This section allows to describe variables as single simple variables or as variable tables.
		
* The section is declared with the corresponding keyword
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'Variables:' 'Keyword Variables'
* Variable values can be of a simple type, or calculated through an expression.
* Here is an example when a simple variable is declared.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'Var1 = "VariableStringTypeInQuotes"' 'Variable declaration'
* Or here
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'Var2 = \'VariableStringTypeInApostrophes\'' 'Variable declaration'
* You can also declare multi-line strings, as in this example
		И я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 14 строку "Multiline variable" подсценарий
* Use curly brackets to calculate variable value using an expression in the built-in 1C language.
* In this example, the expression will be evaluated on the client side.
		И я устанавливаю флаг настройки Vanessa Automation "ВычислятьВыраженияВФигурныхСкобках"
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий '\{String(1+1)\}' 'Expression at client'
* And this expression will be calculated on the server side, because the exclamation mark symbol is used.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий '\{!String(1+1)\}' 'Expression at server'
* It is indicated here
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий '!' 'Flag of the expression at server'

* You can also use a curly bracket expression inside other strings, as shown in this example
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий '"Value=\{!String(1+1)\}."' 'Expression inside a string'
	
* Also one variable can be calculated through other variables
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'PartLeft\{Variable6\}PartRight' "A variable is calculated through another variable"

* It is important to understand that all expressions will be evaluated on the Test Manager side, but not on the Test Client side.
	
* All values from Variables section will be initialized before running each script from the feature.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 18 строку "Variables" подсценарий
* And an important nuance. Such variables can be passed to steps without specifying any special characters.
* For example, how it is done in this line.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий '"Var1"' 'Passing a variable to a step without $ symbols'
* It is also possible to pass the value of a variable inside another line using curly braces, as shown here.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий '"Part3\{Variable2\}Part4"' 'Expression inside a string'

* You can run this script execution. Then the values ​​of all variables will be displayed in the user message window.
		И Я делаю подсветку нескольких элементов VA "Run the script for execution" UI Automation
			| 'Name'                                  |
			| 'ПанельVanessaEditorВыполнитьСценарии' |

* That's it, move on to the next lesson of the interactive help.

