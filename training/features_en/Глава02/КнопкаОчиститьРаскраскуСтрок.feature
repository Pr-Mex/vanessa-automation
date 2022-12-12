# language: ru

@lessons

Функционал: Интерактивная справка. Очистить раскраску строк в сценарии.

Сценарий: Очистить раскраску строк в сценарии.

* Hi! In this lesson, I will tell you how to clear lines coloring in the script. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКнопкаОчиститьРаскраскуСтрок.feature"

* And we will execute the test script.
		И Я запускаю сценарий VA в режиме обучения и жду окончания выполнения

* Note that when the script was executed, its lines were highlighted according to their status.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 9 строку 'The lines are colored' подсценарий

* To reset lines coloring, click this button or use the keyboard shortcut Alt plus. C
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorОчиститьРаскраскуСтрок" "Reset line coloring"
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorОчиститьРаскраскуСтрок' UI Automation

* At that the coloring of the lines was cleared.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 8 строку 'Line coloring is cleared' подсценарий

* That's it, move on to the next lesson of the interactive help.



