# language: ru

@lessons

Функционал: Интерактивная справка. Комментирование строк. Обрамление вертикальной чертой.

Сценарий: Комментирование строк. Обрамление вертикальной чертой.

* Hi! In this lesson, I will tell you how to conveniently work with selected lines in the editor. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		И я скрываю часть кнопок командной панели редактора в режиме обучения

* Let's upload a test case.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерРаботаСВыделеннымиСтроками.feature"

* Select some lines in the editor
		И я выделяю строки в редакторе с 8 по 10 в режиме обучения
		И Пауза 1

* And let's try to add a comment mark for the selected lines.
* This is done with this command or the hotkey Control plus Slash.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorКомментироватьСтрокиСценария" "Set/remove comment flag"
		
* The first click will set the comment mark
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorКомментироватьСтрокиСценария'
		И Пауза 1
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 10 строку 'The lines are commented' подсценарий

* The second click will remove the comment mark
		И я выделяю строки в редакторе с 8 по 10 в режиме обучения
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorКомментироватьСтрокиСценария'
		И Пауза 1
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 10 строку 'The lines are reverted from comment' подсценарий
		
* The command that frames the rows with vertical slash characters so that they become a Gherkin table works similarly
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorВыделитьСтрокиСценария" "Set the Gherkin table mark"

* Select some lines
		И я выделяю строки в редакторе с 8 по 10 в режиме обучения
		И Пауза 1
* And execute the command
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorВыделитьСтрокиСценария'
		И Пауза 1
* Now these lines have become a table in Gherkin format
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 10 строку 'Rows are now in Gherkin table format' подсценарий

* That's it, move on to the next lesson of the interactive help.



