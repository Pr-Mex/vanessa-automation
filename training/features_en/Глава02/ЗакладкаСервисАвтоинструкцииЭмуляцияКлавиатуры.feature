# language: ru

@lessons

Функционал: Интерактивная справка. Автоинструкции. Эмуляция клавиатуры.

Сценарий: Автоинструкции. Эмуляция клавиатуры.

* Hi! In this lesson, I will tell you about the keyboard emulation settings. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаАвтоИнструкции' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЭмуляцияКлавиатуры' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Keyboard emulation settings" UI Automation
			| 'Name'                                 |
			| 'ЭмулироватьВводКлавиатурыVanessaExt' |

* This checkbox specifies that text input into fields will be done by emulating keyboard input.
		И я делаю подсветку нескольких элементов VA с их заголовком "Enabling keyboard emulation" UI Automation
			| 'Name'                                 |
			| 'ЭмулироватьВводКлавиатурыVanessaExt' |
* Enable VanessaExt component for this option.

* That's it, move on to the next lesson of the interactive help.


