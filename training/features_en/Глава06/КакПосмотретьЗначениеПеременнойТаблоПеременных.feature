# language: ru

@lessons

Функционал: Интерактивная справка. Как посмотреть значение переменной. Табло переменных.

Сценарий: Как посмотреть значение переменной. Табло переменных.

* Hi! In this lesson, I will tell you how to view the value of a variable. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерПосмотретьЗначениеПеременной.feature"

* And we will execute it
		И Я запускаю сценарий VA в режиме обучения и жду окончания выполнения	

* Note that variable value is displayed to the right of the completed step line.
* Also, the value of the variable is displayed in a pop-up window when hovering the mouse cursor over the step.

* Variable value can also be displayed in user message window with a special step. I output the value of the variable.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 8 строку 'Output of the variable to the message window' подсценарий

* There is also a special tool - Variables Panel. It is here. Hotkey Control. Plus Alt. Plus W.
		И Я делаю подсветку кнопки VA с именем "ГруппаVanessaEditorИнструменты" и переход к ней "Additional tools" 
		И Пауза 1
		И я перемещаю курсор к элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПоказатьСкрытьТаблоПеременных'
		И Я делаю подсветку элемента формы VA по имени и клик по нему "VanessaEditorПоказатьСкрытьТаблоПеременных" "Variables panel"
	
* This tool allows you to view the values ​​of any variables. It also allows to change their values.
		И я делаю подсветку у табло переменных VA "Variables panel"

* That's it, move on to the next lesson of the interactive help.


