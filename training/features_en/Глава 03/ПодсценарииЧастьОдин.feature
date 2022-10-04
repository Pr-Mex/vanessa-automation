# language: ru

@lessons

Функционал: Интерактивная справка. Подсценарии.

Сценарий: Подсценарии.

* Hi! In this lesson, I will tell you how to work with subscripts. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я устанавливаю опцию VA в режиме обучения "ПоказыватьСтрокиПодсценариевVanessaEdittor" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\Экспорт\ЭкспортныеСценарииПростые.feature"
		И я позиционирую в центр строку редактора VA в режиме обучения 1
	
* To call this feature scripts from other scripts, specify a special tag in the tags section.
* This is ExportScenarios tag.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "@ExportScenarios" 'Tag @ExportScenarios'

* If this tag is specified in the feature, then all scripts from it can be called in other script.
* Here is an example of declaring such a scenario.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "I call a subsript without parameters" 'Script declaration'

* Parameters cannot be passed to this script because they are not declared in it.
* And here is an example of a script where a parameter can be passed.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'I call the sub script with the parameter "Param1"' 'Scenario with the parameter'
* This is the notification that the script can accept a parameter.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 15 '"Param1"' 'Parameter declaration'

* To pass the parameter value to into the steps of the subscript, it is necessary that there be a parameter in the step that exactly matches the subscript parameter name.
* For example, if a subscript has a parameter Param1, then it will be passed to steps that also have a parameter Param1.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 15 '"Param1"' 'Parameter declaration'
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 17 '"Param1"' 'Parameter is passed in the step'
* The parameter can also be passed as part of step parameter.
* To do this, the parameter name should be framed with square brackets.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий '[Param1]' 'Parameter is passed inside the string'

* Now let's see how this subscript is called from other scripts. Let's open a test case.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерПодсценарии1.feature"

* To call a subscript, type any keyword from the Gherkin language followed by the name of the script.
* Here is an example of calling the first subscript.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'And I call a subsript without parameters' 'Calling a subscript'

* And this is the call of the second subscript with the transferred parameter
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'And I call the sub script with the parameter "ParameterValue"' 'Calling a subsript with the parameter'

* It's easy to see that calling a subscript is not much different from calling a regular script step.
* To indicate a subscript call, the editor underlines such lines with a single line.

* You can run this script execution. Then the values ​​of all variables will be displayed in the user message window.
		И я делаю подсветку нескольких элементов VA с их заголовком "Run the script for execution" UI Automation
			| 'Name'                                  |
			| 'ПанельVanessaEditorВыполнитьСценарии' |


* That's it, move on to the next lesson of the interactive help.


