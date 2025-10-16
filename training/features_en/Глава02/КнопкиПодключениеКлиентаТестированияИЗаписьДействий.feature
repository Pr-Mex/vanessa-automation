# language: ru

@lessons

Функционал: Интерактивная справка. Подключение клиента тестирования и запись действий пользователя.

Сценарий: Подключение клиента тестирования и запись действий пользователя.

* Hi! In this lesson, I will tell you how to connect test client and record user actions. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		И я скрываю часть кнопок командной панели редактора в режиме обучения

* To quickly connect the Test Client, click this button or press the hotkey Control plus. T.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorОткрытьПодключитьTestClient" "Connect Test client"

* At that the current Test Client in the Test Client table will be connected.
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНесколькоКлиентовТестирования'
		И Пауза 1
* The current client is the active line.
		И Я делаю подсветку элемента VA с типом "Table" "Test Clients table"
* By default, this is the first row in Test Clients table, which always corresponds to the database where Test Manager is running.
		И Я делаю подсветку элемента VA с типом "Table" "Test Clients table"

* Moving on.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЗапускТестов'
		И Пауза 1

* To enable user actions recording, click this button or press the hotkey Control plus. R.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorНачатьЗаписьДействийПользователя" "Start user actions recording"
* If Test Client was not connected before executing the command, then the current Test Client will be connected first.
* To stop recording user actions, click this button.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorЗавершитьЗаписьДействийПользователя" "Stop user actions recording"
* If Test Manager is currently active, press Control plus R to stop user actions recording.
* The best option to stop recording user actions is to click on the pop-up window at the top of the screen.
* A significant point. The insertion of the generated text into the editor after stopping user actions recording will be performed at the cursor position.

* That's it, move on to the next lesson of the interactive help.



