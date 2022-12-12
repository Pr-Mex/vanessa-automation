# language: ru

@lessons

Функционал: Интерактивная справка. Открытие списка уроков.

Сценарий: Открытие списка уроков.

* Hi! In this lesson, I will tell you about the button that opens the list of interactive Vanessa Automation lessons. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		

* Excellent. Look. The button that opens the list of lessons is located here.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorОткрытьСписокУроков" "Open lessons list"


* Clicking this button opens a list of available lessons.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorОткрытьСписокУроков' UI Automation
		И Пауза 2


* To start the lesson, click Start Lesson hyperlink.
		И я запоминаю строку "Запустить урок" в переменную "ТекстСтрелки"
		И Я делаю подсветку элемента формы VA по заголовку "$ТекстСтрелки$" "Link to start the lesson"
		

* This list of lessons is also available on Vanessa Automation home page.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ПодменюVanessaEditorЗагрузитьФичи' UI Automation	
		И Пауза 1
		И я перемещаю курсор к элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorWelcome' UI Automation	
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorWelcome' UI Automation	
		И Пауза 1
		И я запоминаю строку "Открыть список уроков" в переменную "ИмяЭлементаФормыОткрытьСписокУроков"
		Если существует элемент UI Automation "ЭтотСеанс" с именем "$ИмяЭлементаФормыОткрытьСписокУроков$" и типом "edit" Тогда

			И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
				| 'Name'                                   | 'Type'  |
				| '$ИмяЭлементаФормыОткрытьСписокУроков$' | 'edit' |
				
				| 'Name'      | 'Value'              |
				| 'text'     | 'Open lessons list' |
				| 'duration' | 4000                    |
		Иначе
			И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
				| 'Name'               | 'Type'  |
				| 'Open lessons list' | 'edit' |
				
				| 'Name'      | 'Value'              |
				| 'text'     | 'Open lessons list' |
				| 'duration' | 4000                    |
	
		И Пауза 4		
		
* If you watch this lesson in the interactive lesson launch mode, it turns out that Vanessa tells you how to launch an interactive lesson while the interactive lesson is running, even though you already know how to do it. Just an observation.

* That's it, move on to the next lesson of the interactive help.


//Do not translate 23, 34
