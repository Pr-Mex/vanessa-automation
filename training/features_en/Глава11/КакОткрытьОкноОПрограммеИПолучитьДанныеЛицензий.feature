# language: ru

@lessons

Функционал: Интерактивная справка. Как открыть окно "О программе" и получить оттуда данные лицензий.

Сценарий: Как открыть окно "О программе" и получить оттуда данные лицензий.

* Hi! In this lesson, I will tell you about how to open the "About" window and get license data from there. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКакОткрытьОкноОПрограммеИПолучитьДанныеЛицензий.feature"

* This example opens the "About" window, and then puts the license information in a variable.
* To reproduce the example, connect the Test client and execute the script.

* That's it, move on to the next lesson of the interactive help.


