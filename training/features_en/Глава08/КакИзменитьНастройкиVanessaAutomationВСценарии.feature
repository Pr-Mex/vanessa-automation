# language: ru

@lessons

Функционал: Интерактивная справка. Как изменить настройки Vanessa Automation во время выполнения сценария.

Сценарий: Как изменить настройки Vanessa Automation во время выполнения сценария.

* Hi! In this lesson, I will tell you how to change the settings of Vanessa Automation during script execution. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКакИзменитьНастройкиVanessaAutomationВСценарии.feature"

* There are special steps to operate Vanessa Automation settings during script execution.

* These steps allow you to remove and set the checkboxes of Vanessa Automation settings.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 9 строку 'Change flags' подсценарий

* Setting name is passed to the step parameter, which can be found out by hovering the cursor over the setting and pressing a hotkey. Alt plus H.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 8 "FlagName" 'Setting name'

* Let's continue. Here is an example of changing the value of a numeric or string setting.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 11 по 12 строку 'Number or string type setting' подсценарий

* It is also possible to save the current setting value to a variable.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 14 по 15 строку 'Setting value to a variable' подсценарий



* That's it, move on to the next lesson of the interactive help.


