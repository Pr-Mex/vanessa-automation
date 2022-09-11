# language: ru

@lessons

Функционал: Интерактивная справка. Сравнить текст фича файла с другим файлом.

Сценарий: Сравнить текст фича файла с другим файлом.

* Hi! In this lesson, I will tell you how to compare the text of a feature file with another file. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерСравнитьТекстФичаФайлаСДругимФайлом1.feature"

* There are situations when you need to compare the text of the current feature file with another feature file to quickly see the differences.
* This can be done immediately in Vanessa Automation.
* There is this command for this
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorИнструменты' UI Automation
		И пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorСравнитьСДругимФичаФайлом" "Compare with another feature file" и перемещаю курсор

* After executing the command, a dialog of differences between files will open
		И я устанавливаю значение дополнительного параметра Vanessa Automation "ИмяФайлаДляСравнения" в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерСравнитьТекстФичаФайлаСДругимФайлом2.feature"
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorСравнитьСДругимФичаФайлом' UI Automation
		И Пауза 1
		

* That's it, move on to the next lesson of the interactive help.


