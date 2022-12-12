# language: ru

@lessons

Функционал: Интерактивная справка. Отбор по тегам.

Сценарий: Отбор по тегам.

* Hi! In this lesson, I will tell you how tag selection works. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* The settings for working with tags are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'РаботаСТэгами' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Tags filter" UI Automation
			| 'Name'                   |
			| 'СписокТеговИсключение' |
			| 'СписокТеговОтбор'      |
		
* The first field is a list of excluded tags. It allows to exclude part of the scripts from running.
		И Я делаю подсветку элемента формы VA по имени "СписокТеговИсключение" "List of excluded tags"

* If a tag from this list is found in the script or in the entire feature file, this script will not be executed.

* The second field is the launch tags.
		И Я делаю подсветку элемента формы VA по имени "СписокТеговОтбор" "Launch tags"

* This filter also allows to exclude some scripts from running, but it works in opposite way. If the script or the entire feature file does not have a tag from this list, then this script will not be run.

* If these two filters contradict each other, then the second one will have priority.
		И Пауза 1
		И Я делаю подсветку элемента формы VA по имени "СписокТеговОтбор" "Launch tags"

* That's it, move on to the next lesson of the interactive help.



