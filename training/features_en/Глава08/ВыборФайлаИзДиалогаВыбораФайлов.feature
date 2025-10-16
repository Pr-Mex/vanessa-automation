# language: ru

@lessons

Функционал: Интерактивная справка. Выбор файла из диалога выбора файлов.

Сценарий: Выбор файла из диалога выбора файлов.

* Hi! In this lesson, I will tell you how to select a file from the file selection dialog. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* First, let's talk about file selection in the thin client.

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерВыборФайлаИзДиалогаВыбораФайловТонкий.feature"

* In order to replace the result of file selection with the required one in thin and thick client, use a special step - and I select file.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 8 строку 'Special step' подсценарий
* This step is used both to select files for opening and for writing.
* This step has one parameter, which is the full path to the file.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "FullPathToFile" 'Full file path'

* A significant point. This step must be called before the file selection dialog appears.
* Thus, this step must be called before the action that leads to the appearance of file selection dialog.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 11 строку 'The action leading to the file selection' подсценарий
* If everything is done correctly, the file selection dialog should not appear on the screen and script execution will be continued.


* Now let's talk file selection in web client.
* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерВыборФайлаИзДиалогаВыбораФайловWeb.feature"


* In the web client, step that leads to the file selection dialog must be performed first.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 8 строку 'The action leading to the file selection' подсценарий
* At that this dialog should appear in the browser.
* After that, call another special step - and I select VK file
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 11 по 11 строку 'A special step for the browser' подсценарий
* This step performs a file selection in the browser via keyboard emulation, so the browser must be the active window.
* A significant point. For this step to work, enable VanessaExt external component.

* That's it, move on to the next lesson of the interactive help.


