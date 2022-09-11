# language: ru

Функционал: Интерактивная справка. Как устроен feature файл? Секция Переменные.

@lessons

Сценарий: Как устроен feature файл? Секция Переменные.

* Hi! In this lesson, I will tell you how to set variable tables in a feature file. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я отключаю показ строк подсценариев в редакторе VA в режиме обучения
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКакУстроенФичаФайлСекцияПеременныеТабличные.feature"
		И я позиционирую в центр строку редактора VA в режиме обучения 1

* In the Variables section, you can declare variable tables.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'Variables:' 'Variables section declaration'
* Here are examples of such tables. Let's analyze them in details.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 13 строку "Variable tables" подсценарий
		

* The first point. The table name is optional.
* Here is an example of a variable table when the table name is not set. There can be only one such table in the Variables section.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 8 строку "Unnamed variables table" подсценарий
* And here is an example of a table with set name. There can be many such tables.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 13 строку "Named variables table" подсценарий
* The table name is set here. A mandatory symbol before the name of variable table is an asterisk.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий '* CompaniesList' 'Table name'

* The second point. The variable table must have two lines or more.
* The first line specifies variable names for this table.
		И я делаю подсветку текста в редакторе VA в режиме обучения в строке 7 "Variable names" подсценарий

* The following lines contain the values of variables.
		И я делаю подсветку текста в редакторе VA в режиме обучения в строке 8 "Variable values" подсценарий

* In the first column of the table, a name is always declared, with helps to get other values from this row.
* For the first table it is indicated here
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'MainCounterparty1' 'Unique string name'
* For the second table it is indicated here
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'MainCounterparty2' 'Unique string name'
* And here
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'MainCounterparty3' 'Unique string name'

* To pass the variable value from not named table to a step, write a unique line name and the name of the required column separated by a dot.
* Here is an example of how this is done.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'MainCounterparty1.Presentation' 'Pass variable value into a step'

* To pass the value of a named table to the step, write the unique table name separated by a dot, then the unique line name, followed by the required column name.
* Here is an example for this case.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'CounterpartyList.MainCounterparty2.Presentation' 'Pass variable value into a step'

* You can run this script execution. Then the values ​​of all variables will be displayed in the user message window.
		И я делаю подсветку нескольких элементов VA с их заголовком "Run the script for execution" UI Automation
			| 'Name'                                  |
			| 'ПанельVanessaEditorВыполнитьСценарии' |
			
* That's it, move on to the next lesson of the interactive help.


