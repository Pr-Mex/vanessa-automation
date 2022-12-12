# language: ru

@lessons

Функционал: Интерактивная справка. Автоинструкции. Работа с браузером.

Сценарий: Автоинструкции. Работа с браузером.

* Hi! In this lesson, I will tell you about the settings of working with browser. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаАвтоИнструкции' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройкиАвтоинструкцийПриРаботеСБраузером' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Browser settings" UI Automation
			| 'Name'                                        |
			| 'ИспользоватьБраузерПлюсWebSocket'           |
			| 'ИгнорироватьОшибкиПоискаЭлементовВБраузере' |
			| 'КоэффициентМасштабированияЭкрана'           |

* This checkbox enables Chrome browser interaction through a special port.
		И я делаю подсветку нескольких элементов VA с их заголовком "Working with Chrome via special port" UI Automation
			| 'Name'                              |
			| 'ИспользоватьБраузерПлюсWebSocket' |
* This option should be used when you want to create an auto-instruction, an the Test Client is running in a browser.
* Enabling this option will cause some steps from the main library to try to search for form elements directly in the browser.
		И я делаю подсветку нескольких элементов VA с их заголовком "Working with Chrome via special port" UI Automation
			| 'Name'                              |
			| 'ИспользоватьБраузерПлюсWebSocket' |
* Thus, during the execution of a common script, you can get the effect of mouse movement, click animation and so on - using steps from the main step library.

* Let's continue. If this checkbox is set, then the script will not fail if the form element search fails in the browser.
		И я делаю подсветку нескольких элементов VA с их заголовком "Skip element search errors" UI Automation
			| 'Name'                                        |
			| 'ИгнорироватьОшибкиПоискаЭлементовВБраузере' |
* This checkbox should be used according to the situation.

* Let's continue. This field specifies the screen scaling factor.
		И я делаю подсветку нескольких элементов VA с их заголовком "Screen scale" UI Automation
			| 'Name'                              | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'КоэффициентМасштабированияЭкрана' | ''    | ''                           | 'Ложь'                         |
* This value must be changed if screen scaling is used in the operating system.


* That's it, move on to the next lesson of the interactive help.


