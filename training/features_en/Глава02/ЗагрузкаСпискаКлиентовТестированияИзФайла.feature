# language: ru

@lessons

Функционал: Интерактивная справка. Загрузка списка клиентов тестирования из файла.

Сценарий: Загрузка списка клиентов тестирования из файла.

* Hi! In this lesson, I will tell you how to download a list of Test clients from a file. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		

* There is a special command for this.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНесколькоКлиентовТестирования' UI Automation	
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияЗагрузитьСписокКлиентовТестированияИзФайла" "Download a list of Test clients from a file"

* You can get an example of the file format if you run the command to save the settings of Vanessa Automation to a file.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorНастройкиРедактора' UI Automation	
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorВыгрузитьНастройкиВФайл" "Save settings to a json file" и перемещаю курсор
	

* That's it, move on to the next lesson of the interactive help.


