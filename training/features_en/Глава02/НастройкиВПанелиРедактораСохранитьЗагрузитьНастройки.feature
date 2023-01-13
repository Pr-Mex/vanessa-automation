# language: ru

@lessons

Функционал: Интерактивная справка. Настройки в панели редактора. Сохранить загрузить настройки.

Сценарий: Настройки в панели редактора. Сохранить загрузить настройки.

* Hi! In this lesson, I will tell you about the options and settings that are available in the editor panel. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		

* Excellent. Look. We will talk about this toolkit.
		И Я делаю подсветку элемента VA "ГруппаVanessaEditorНастройкиРедактора" "Basic editor settings" и перемещаю курсор
		
* Here are the settings and commands that are most often used when working with script text.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorНастройкиРедактора' UI Automation	
		И Пауза 1
		И я перемещаю курсор к заголовку Vanessa Automation 


* The first command allows to save the current settings of Vanessa Automation.
		И Я делаю подсветку элемента VA "VanessaEditorСохранитьНастройки" "Save Vanessa Automation settings" и перемещаю курсор

* A significant point. If any setting is changed, this value will not be automatically saved when closing Vanessa Automation form.
* Settings are saved only when this command is called.


* Next is the command that uploads the Vanessa Automation settings to a file in json format.
		И Я делаю подсветку элемента VA "VanessaEditorВыгрузитьНастройкиВФайл" "Upload settings to a file" и перемещаю курсор
* This file can be used both to transfer settings to another user and to run tests in the CI circuit.

* The settings file looks like this
		И я делаю клик по заголовку Vanessa Automation
		И Пауза 1
		И я открываю файл настроек VA в режиме обучения
		И Пауза 3
		


* Next is the mirror command, which loads the Vanessa Automation settings from a file.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorНастройкиРедактора' UI Automation	
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorЗагрузитьНастройкиИзФайла" "Download settings from a file" и перемещаю курсор

* A significant point. If json file does not contain a setting, it will take a default value when downloading from file.



* Next is a command that compares the current settings of Vanessa Automation with an arbitrary file.
		И Я делаю подсветку элемента VA "VanessaEditorСравнитьТекущиеНастройкиСФайлом" "Compare current settings with a file" и перемещаю курсор

* The comparison result looks like this
		И я делаю клик по заголовку Vanessa Automation
		И Пауза 1
		И я открываю файл сравнение настроек VA в режиме обучения
* This mechanism allows conveniently and quickly find the differences is sessions settings.


* That's it, move on to the next lesson of the interactive help.
		И я делаю клик по заголовку Vanessa Automation 
		И Пауза 1


