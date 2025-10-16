# language: ru

@lessons

Функционал: Интерактивная справка. Передача таблиц в подсценарии.

Сценарий: Передача таблиц в подсценарии.

* Hi! In this lesson, I will tell you how to pass tables to subscripts. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я устанавливаю опцию VA в режиме обучения "ПоказыватьСтрокиПодсценариевVanessaEditor" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\Экспорт\ЭкспортныеСценарииСТаблицами.feature"
		И я позиционирую в центр строку редактора VA в режиме обучения 1
	

* In this example, we will consider two subscripts.
* The first subscript is designed so that it has a step that takes the Gherkin table as a parameter.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "|\'A simple Gherkin table\'|" 'Pass table into a step'
	
* The second subscript is designed in such a way that Gherkin tables are used in several steps, and we will try to replace only part of the tables when calling this subscript.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 20 по 30 строку 'Steps using tables' подсценарий
		
* Let's see what possibilities we have for transferring tables to such subscripts.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерПодсценарии2.feature"


* The first point. In such subscripts, it is possible to skip passing tables. Then everything will remain as it is.
* Type table name or names right after the line that calls the subscript to pass them to a subscript.
* For example, in the first case, we will simply redefine the Gherkin table from the subscript to another Gherkin table.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 10 строку 'Passing a table to a subscript' подсценарий

* The second point. Tables can be passed to to the subscript partially, some can be skipped.


* In the second case, we replace only the table in the second step in the subscript.
* This is because the first table is passed an empty value, marked with two pipes.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "||" 'The table is not replaced'

* Therefore, this table will replace the table in the second step of the subscript.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 15 по 15 строку 'Replace the table in the second step' подсценарий
* And the table for the first step will remain unchanged and the same as it was defined in the subscript.
* The third and fourth tables of the subscript are also not redefined in this case.
* Therefore, this example will replace the Gherkin table only in the second step of this subscript.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "And I call a subscript and pass several tables to it" 'Calling a subscript'


* That's it, move on to the next lesson of the interactive help.
