# language: ru

@lessons

Функционал: Интерактивная справка. Что нужно, чтобы интерактивная справка работала?

Сценарий: Что нужно, чтобы интерактивная справка работала?

* Hi! In this lesson, I will tell you how to enable the interactive help.
		И я открываю Vanessa Automation в режиме обучения
	
* For turning the interactive help on, enable the use of the VanessaExt external component.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаИспользоватьКомпонентуVanessaExt' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Enable the use of VanessaExt component" UI Automation
			| 'Name'                              |
			| 'ИспользоватьКомпонентуVanessaExt' |

* It is recommended to expand the Vanessa Automation window to full screen or set the window size large enough so that the main elements of the form are visible.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЗапускТестов' UI Automation
		И Пауза 1

* Also, at the first launch of the lesson, you will be prompted to download a cache of voice files.

* When working with an interactive lesson, avoid moving the mouse or pressing keyboard keys. Otherwise, it may interfere with the interactive help.

* If you have updated the full delivery or Single version of Vanessa Automation, it is better to delete the directory with the cache of voice files.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерЧтоНужноЧтобыИнтерактивнаяСправкаРаботала.feature"
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 7 строку 'Directory of voiceover cache' подсценарий

* If you have updated the version of Vanessa Automation Single, it is better to delete the directory where the interactive lesson files are located.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 9 строку 'Lesson files directory' подсценарий
	
* Both of these directories are located next to the main Vanessa Automation data processor.

* After the end of the interactive lesson, the Vanessa Automation window will remain open on your screen in the learning mode. This is done intentionally, so that you can repeat the actions from the lesson or experiment with scripts or settings.

* That's it, move on to the next lesson of the interactive help.

	