# language: ru

@lessons

Функционал: Интерактивная справка. Автоинструкции. Аудио. Кэш аудио.

Сценарий: Автоинструкции. Аудио. Кэш аудио.

* Hi! In this lesson, I will tell you about audio file caching settings. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаАвтоИнструкции' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаАудио' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'КешАудио' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Audio cache" UI Automation
			| 'Name'                           |
			| 'ЗаписьВидеоКэшироватьФайлыTTS' |
	
* Since many speech generation services are paid, Vanessa Automation provides the ability to cache voiceover files. To do this, set this checkbox.
		И я делаю подсветку нескольких элементов VA с их заголовком "Enable audio caching" UI Automation
			| 'Name'                           |
			| 'ЗаписьВидеоКэшироватьФайлыTTS' |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ЗаписьВидеоКэшироватьФайлыTTS' UI Automation	
		И Пауза 1

* Also it is necessary to specify cache directory.
		И я делаю подсветку нескольких элементов VA с их заголовком "Directory" UI Automation
			| 'Name'                     |
			| 'ЗаписьВидеоКэшФайловTTS' |


* That's it, move on to the next lesson of the interactive help.


