# language: ru

@lessons

Функционал: Интерактивная справка. Сохранение списка клиентов тестирования в настройках пользователя.

Сценарий: Сохранение списка клиентов тестирования в настройках пользователя.

* Hi! In this lesson, I will tell you how to save a list of Test clients in the user settings. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		

* There is a special command for this.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНесколькоКлиентовТестирования' UI Automation	
		И Пауза 1
		И Я делаю подсветку элемента VA "ТестКлиентСохранить" "Save Test clients list in user settings"
		И Пауза 1

* When executing the command, the settings will be saved for the current user in the current database.
* A significant point. When you save the Vanessa Automation settings in the user settings, the list of test clients is not saved. It must be saved separately.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorНастройкиРедактора' UI Automation	
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorСохранитьНастройки" "Save Vanessa Automation settings" и перемещаю курсор
	
* But the list of Test clients can be uploaded to a json file along with other Vanessa Automation settings
		И Я делаю подсветку элемента VA "VanessaEditorВыгрузитьНастройкиВФайл" "Uploading settings to a file" и перемещаю курсор

* That's it, move on to the next lesson of the interactive help.


