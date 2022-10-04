# language: ru

@lessons

Функционал: Интерактивная справка. Перевод сценария на другой язык.

Сценарий: Перевод сценария на другой язык.

* Hi! In this lesson, I will tell you how to translate a script into another language. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		И я скрываю часть кнопок командной панели редактора в режиме обучения

* Let's upload a test case.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерПереводСценария.feature"

* Click this button to translate the steps in the current feature file
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorПеревестиТекстНаДругойЯзык" "Translation of the script into another language"

* By default, the button is not available, because first you need to select the destination language of translation.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки'
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаСервисОсновные'
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЯзык'
		И Пауза 1
		И Я делаю подсветку элемента формы VA по имени "ЯзыкГенератораGherkin" "Current language"
	
* For example, let's choose English
		И я выбираю английский яызк VA Режим обучения
		
* The button is now available. Let's try to click it. Initially it may take a long time, because translation data are being read.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorПеревестиТекстНаДругойЯзык" "Translation of the script into another language"
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЗапускТестов'
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПеревестиТекстНаДругойЯзык'
		И Пауза 1
		
* After the processing was completed, the script steps were translated. For this purpose, special step matching tables were used.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 9 строку 'Translated lines' подсценарий
		
* A significant point. Translating steps is not the same as translating text in Google translator.
* Vanessa Automation project has special tables of matching steps in Russian to steps in other languages.
* Thanks to this, there is no need to duplicate existing steps.
* Instead, they are reused.

* That's it, move on to the next lesson of the interactive help.




