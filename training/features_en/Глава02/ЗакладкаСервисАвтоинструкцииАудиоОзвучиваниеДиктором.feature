# language: ru

@lessons

Функционал: Интерактивная справка. Автоинструкции. Аудио. Озвучивание диктором.

Сценарий: Автоинструкции. Аудио. Озвучивание диктором.

* Hi! In this lesson, I will tell you about the settings for text voicing by speaker. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаАвтоИнструкции' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаАудио' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ОзвучкаГолосом' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Voiceover by narrator" UI Automation
			| 'Name'                                |
			| 'ЗаписьВидеоТипОзвучкиTTS'           |
			| 'ЗаписьВидеоYandexTTSЯзык'           |
			| 'ЗаписьВидеоYandexTTSГолос'          |
			| 'ЗаписьВидеоYandexTTSЭмоция'         |
			| 'ЗаписьВидеоYandexTTSСкорость'       |
			| 'ЗаписьВидеоYandexTTSВариантЗапроса' |
	
* A significant point. Vanessa Automation supports different engines for text voiceover.
* Now the screen displays the settings for voiceover by Yandex Speechkit technology.
		И я делаю подсветку нескольких элементов VA с их заголовком "Voiceover using Yandex Speechkit" UI Automation
			| 'Name'                                |
			| 'ЗаписьВидеоТипОзвучкиTTS'           |
			| 'ЗаписьВидеоYandexTTSЯзык'           |
			| 'ЗаписьВидеоYandexTTSГолос'          |
			| 'ЗаписьВидеоYandexTTSЭмоция'         |
			| 'ЗаписьВидеоYandexTTSСкорость'       |
			| 'ЗаписьВидеоYandexTTSВариантЗапроса' |

* The voice acting option from Microsoft is also supported.
		И я делаю клик по элементу формы 'ЭтотСеанс' 'Microsoft TTS' 'Text' UI Automation	
		И Пауза 1
		
* This is an outdated version of the engine and it is not recommended to use it in real work.

* The voice acting option from Amazon is also supported.
		И я делаю клик по элементу формы 'ЭтотСеанс' 'Amazon Polly' 'Text' UI Automation	
		И Пауза 1

* The voice acting option from Sberbank is also supported.
		Если существует элемент UI Automation "ЭтотСеанс" с именем "Сбер TTS" и типом "Text" Тогда
			И я делаю клик по элементу формы 'ЭтотСеанс' 'Сбер TTS' 'Text' UI Automation
		Иначе
			И я делаю клик по элементу формы 'ЭтотСеанс' 'Sber TTS' 'Text' UI Automation
		И Пауза 1

* An arbitrary version of voiceover is also supported, which can be implemented in an epf file.
		Если существует элемент UI Automation "ЭтотСеанс" с именем "Другой движок TTS" и типом "Text" Тогда
			И я делаю клик по элементу формы 'ЭтотСеанс' 'Другой движок TTS' 'Text' UI Automation
		Иначе
			И я делаю клик по элементу формы 'ЭтотСеанс' 'Another TTS engine' 'Text' UI Automation	
		И Пауза 1

* A significant point. The current voiceover settings can always be checked using these elements.
		И я делаю подсветку нескольких элементов VA с их заголовком "Check settings" UI Automation
			| 'Name'                           |
			| 'ТекстДляТестаГолоса'           |
			| 'ТестГолосаПроизнести'          |
			| 'ТестГолосаОткрытьФалйTTS_В_ОС' |

* For a detailed description of the text voiceover settings, as well as recommendations on the voiceover settings, see here.
		И я делаю подсветку расширенной подсказки элемента VA "ГруппаАудио" "Detailed information" UI Automation


* That's it, move on to the next lesson of the interactive help.


