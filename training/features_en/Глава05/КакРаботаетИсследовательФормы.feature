# language: ru

@lessons

Функционал: Интерактивная справка. Исследователь формы.

Сценарий: Исследователь формы.

* Hi! In this lesson, I will tell you how to work with Form Explorer. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* The Form Explorer is a tool that allows to get additional information about the current form of the Test Client.
* It allows explore form elements, their visibility, accessibility, and so on.
* It also allows to see often used steps for the form element.
* The Form Explorer is here.
		И Я делаю подсветку элемента формы VA по имени "ГруппаVanessaEditorИнструменты" "Tools"
		И Пауза 0.5
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorИнструменты'
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorИсследовательФормы" "Form Explorer" и перемещаю курсор
		И Пауза 0.5
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorИсследовательФормы'
		И Пауза 1

* In order to fully see how the Form Explorer works, connect the Test Client.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерИсследовательФормы.feature"
* We will skip that now.
* For more detailed information on the Form Explorer, watch this video.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 8 строку "Video"


* That's it, move on to the next lesson of the interactive help.





