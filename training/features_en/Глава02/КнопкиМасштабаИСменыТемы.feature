# language: ru

@lessons

Функционал: Интерактивная справка. Масштаб в редакторе и с смена темы.

Сценарий: Масштаб в редакторе и с смена темы.

* Hi! In this lesson, I will tell you how to change the scale of the text in the editor and change the theme. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		И я скрываю часть кнопок командной панели редактора в режиме обучения

* Let's upload a test case.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерМасштабВРедакторе.feature"

* Vanessa Automation editor allows to increase or decrease the text size.
* Click this button to zoom in.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorViewZoomIn" "Zoom in"
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorViewZoomIn'
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorViewZoomIn'
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorViewZoomIn'
		И Пауза 1

* Click this button to zoom out.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorViewZoomOut" "Zoom out"
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorViewZoomOut'
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorViewZoomOut'
		И Пауза 1

* To reset the scale to the default value, click this button.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorViewZoomReset" "Scale reset"
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorViewZoomReset'
		И Пауза 1

* There is also an option to change the theme in the editor. The available topics are here.
		И Я делаю подсветку элемента формы VA по имени "ГруппаVanessaEditorВыборТемы" "Theme change"
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorВыборТемы'
		И Пауза 1

* You can choose the preferred theme and save the settings.
* For example, let's choose a dark theme.
		И Я делаю подсветку элемента VA "VanessaEditorТема_vsdark" "Dark theme" и перемещаю курсор
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorТема_vsdark'
		И Пауза 1

* That's it, move on to the next lesson of the interactive help.



