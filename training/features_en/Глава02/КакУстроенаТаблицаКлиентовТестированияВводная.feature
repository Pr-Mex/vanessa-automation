# language: ru

@lessons

Функционал: Интерактивная справка. Открытие списка уроков.

Сценарий: Как устроена таблица клиентов тестирования.

* Hi! In this lesson, I will tell you about the structure of test clients table. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		

* Excellent. Look. These settings are located on this tab.
		И Я делаю подсветку закладки VA и переход к ней "ГруппаНесколькоКлиентовТестирования" "Test clients settings"
		И Пауза 1
		
* Here is a table of Test Clients connection settings
		И Я делаю подсветку элемента VA с типом "Table" "Test Clients table"

* Each row of the table is a set of settings for connecting a specific Testing Client.
* This table can be filled in either manually, or during script execution, or passed in a json file when running tests from the command line.
* The first row in the table will always be a special service row that corresponds to the database in which Vanessa Automation is running.
* This line has a special mark. Other lines will not have this mark.
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияЭтотКлиент" "Service line mark"


* That's it, move on to the next lesson of the interactive help.
	



