# language: ru

@lessons

Функционал: Интерактивная справка. Особенности шагов при работе с переключателями, гиперссылками и полями.

Сценарий: Особенности шагов при работе с переключателями, гиперссылками и полями.

* Hi! In this lesson, I will tell you about the specifics of the steps when working with switches and hyperlinks. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерОсобенностиШаговПриРаботеСПереключателямиГиперссылками.feature"

* There are two ways to set the switch value.
* You can set its values by its presentation on the screen.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 8 "SwitchValue" 'Set the value by presentation'

* In the case when value representation is constantly changing, you can set the value of the switch by its number
		И Пауза 1
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 9 "1" 'Set value by number'
* Note that in this case the parameter is passed with the Number type and quotes are not used.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 9 "1" 'Set value by number'

* The same situation is with hyperlinks.
* The hyperlink value can be specified both by presentation and by number.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 12 по 13 строку 'Selecting a hyperlink to click on' подсценарий

* And the same situation with the selection of the field value.
* The value of the field can be specified both by presentation and by number.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 16 по 17 строку 'Selecting a field value' подсценарий

* That's it, move on to the next lesson of the interactive help.


