# language: ru

@lessons

Функционал: Интерактивная справка. Основная информация по дереву известных шагов.

Сценарий: Основная информация по дереву известных шагов

* Hi! In this lesson, I will tell you about the library of available steps. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* The steps library is a special object where one can conveniently find a step to perform an action.
* It is here.
		Если существует элемент UI Automation "ЭтотСеанс" с именем "Генератор EPF" и типом "" Тогда
			И я запоминаю строку "Истина" в переменную "ЯзыкРусский"
		Иначе	
			И я запоминаю строку "Ложь" в переменную "ЯзыкРусский"

		И Я делаю подсветку элемента формы VA по имени "ГруппаVanessaEditorИнструменты" "Tools"
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorИнструменты'
		И Пауза 1
* Let's execute this command.
		И Я делаю подсветку элемента VA "VanessaEditorДобавитьИзвестныйШаг" "Step library" и перемещаю курсор
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorДобавитьИзвестныйШаг'
		И Пауза 1

* We have opened a special tool to work with the current steps library.
* The main element is this step tree, which was built based on the steps of all the libraries that were loaded by Vanessa Automation.
		И Я делаю подсветку у дерева известных шагов "Tree of known steps"

* Expand the tree nodes to get information about any step.
		Если существует элемент UI Automation "ЭтотСеанс" с именем "Built-in language" и типом "ListItem" Тогда
			И Я запоминаю значение выражения 'Ложь' в переменную "ВДеревеШагиНаРусском"
			И я делаю клик по элементу формы 'ЭтотСеанс' 'Built-in language' 'ListItem' UI Automation	
		Иначе
			И Я запоминаю значение выражения 'Истина' в переменную "ВДеревеШагиНаРусском"
			И я делаю клик по элементу формы 'ЭтотСеанс' 'UI' 'ListItem' UI Automation
			
		И Пауза 1
		И я нажимаю сочетание клавиш "Right"
		И Пауза 1

		Если '$ВДеревеШагиНаРусском$' Тогда
			И я делаю клик по элементу формы 'ЭтотСеанс' 'Всплывающие окна' 'ListItem' UI Automation
		Иначе
			И я делаю клик по элементу формы 'ЭтотСеанс' 'And I save "Expression" in "InitialCount" variable' 'ListItem' UI Automation	
		И Пауза 1
		И я нажимаю сочетание клавиш "Right"
		И Пауза 1

		Если '$ВДеревеШагиНаРусском$' Тогда
			И я делаю клик по элементу формы 'ЭтотСеанс' 'And I close warning window' 'ListItem' UI Automation
		И Пауза 1
		
* Let's see what step information is available.
* First of all, this is an example of how a step can be used in a script.
		Если '$ВДеревеШагиНаРусском$' Тогда
			И Я делаю подсветку у строки дерева шагов 'And I close warning window' 'An example of usage a step in a script'
		Иначе	
			И Я делаю подсветку у строки дерева шагов 'And I save "Expression" in "InitialCount" variable' 'An example of usage a step in a script'
		
* Here is information about epf file where the implementation of this step is located.
		Если '$ЯзыкРусский$' Тогда	
			И Я делаю подсветку у поля дерева шагов 'File:' 'Which epf file contains the implementation of this step'
		Иначе	
			И Я делаю подсветку у поля дерева шагов 'File:' 'Which epf file contains the implementation of this step'

* And here is information about the procedure called in this epf file.
		Если '$ЯзыкРусский$' Тогда	
			И Я делаю подсветку у поля дерева шагов 'Procedure name:' 'Which procedure is called'
		Иначе	
			И Я делаю подсветку у поля дерева шагов 'Procedure:' 'Which procedure is called'

* Here is a description of how this step works.
		Если '$ЯзыкРусский$' Тогда	
			И Я делаю подсветку у поля дерева шагов по подсказке 'Description' 'Step description'
		Иначе	
			И Я делаю подсветку у поля дерева шагов по подсказке 'Description' 'Step description'

* Moving on. Use the search to find the required step.
		Если '$ЯзыкРусский$' Тогда	
			И Я делаю подсветку у поля дерева шагов по подсказке 'Search' 'Search'
		Иначе	
			И Я делаю подсветку у поля дерева шагов по подсказке 'Search' 'Search'
		
* For example, you can find all the loop steps.
		И Пауза 1
		Если '$ЯзыкРусский$' Тогда	
			И Я делаю клик в поле дерева шагов по подсказке 'Search' 
		Иначе	
			И Я делаю клик в поле дерева шагов по подсказке 'Search' 
		И Пауза 1
		И я эмулирую ввод текста "Loop"
		И Пауза 1
		И я нажимаю сочетание клавиш "Enter"
		И Пауза 1
		
* At that, only those steps that are loops or are loop related remain in the step tree.
		И Я делаю подсветку у дерева известных шагов "Loop steps"
* Note that the steps of the loop are highlighted in the tree of known steps.

* It's also easy to find steps that always run as conditions.
		Если '$ЯзыкРусский$' Тогда	
			И Я делаю клик в поле дерева шагов по подсказке 'Search' 
		Иначе	
			И Я делаю клик в поле дерева шагов по подсказке 'Search' 
		И Пауза 1
		И я эмулирую ввод текста "Condition"
		И Пауза 1
		И я нажимаю сочетание клавиш "Enter"
		И Пауза 1
	
* At that, only steps that are always executed as a condition remain in the step tree.
		И Я делаю подсветку у дерева известных шагов "Condition steps"
		
* That's it, move on to the next lesson of the interactive help.



