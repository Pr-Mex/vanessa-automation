# language: ru

@lessons

Функционал: Интерактивная справка. Как проверить равенство табличного документа эталону.

Сценарий: Как проверить равенство табличного документа эталону.

* Hi! In this lesson, I will tell you how to compare a spreadsheet document with a template. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерРавенствоТабличногоДокументаЭталону.feature"

	
* The main way to compare a spreadsheet document with a template is to use the appropriate steps.
* The main step to check is this one.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 9 строку 'Comparison of a spreadsheet document with a template' подсценарий
* There are two parameters in the step.
* The first is the Spreadsheet document attribute name, as it is set in the configurator.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 9 "AttributeName" 'Form element name'
* The second parameter is the file name of the reference template. The file name is specified without an extension.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 9 "TemplateName" 'Template file name'
* A significant point.
* First. The template file must be in mxl format.
* Second. The reference file must be located in the project directory, or it must be located in the directory next to the current feature file.
* The path to the project directory is set here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation	
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаСервисОсновные' UI Automation	
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаСистемныеКаталоги'
		И Пауза 1
		И Я делаю подсветку элемента VA "КаталогПроекта" "Setting \"Path\""
		
* Let's continue. Often, when comparing a spreadsheet document with a template, it is necessary to exclude some cells from the comparison.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЗапускТестов' UI Automation	
		И Пауза 1
		
* To do this, it is enough to specify the * character in the cell value in the template file. Then it will be excluded from the comparison.
	
* There is also a case when it is necessary to exclude part of the cell value from the comparison, but not its entire value.
* Then the excluded part is replaced with an asterisk in the template file.
* And in the script, you need to use this step.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 10 строку 'Comparison with template by template' подсценарий
* It uses regular expressions when comparing a spreadsheet document with a template.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 10 строку 'Comparison with template by template' подсценарий

* Also, it is possible to compare a spreadsheet document not with a template file, but with Gherkin table.
* There are specific steps for this.
* This one compares the spreadsheet document with the passed table.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 15 по 17 строку 'Comparison with Gherkin table' подсценарий
* And this one compares the spreadsheet document with the passed table with the ability to compare by template, i.e. replace part of the value with an asterisk symbol.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 19 по 21 строку 'Comparison with Gherkin table by template' подсценарий

* These steps should only be used when the spreadsheet document being checked is very small.
* If a large template is placed in a script as a Gherkin table, then the script will no longer be easy to read.

* That's it, move on to the next lesson of the interactive help.


