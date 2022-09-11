# language: ru

@lessons

Функционал: Интерактивная справка. Скорость выполнения сценариев.

Сценарий: Скорость выполнения сценариев

* Hi! In this lesson, I will tell you about the script execution speed settings. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаВыполнениеСценариев' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаСкоростьВыполненияСценариев' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Script execution speed settings" UI Automation
			| 'Name'                      |
			| 'ВыполнятьШагиАссинхронно' |

* This checkbox enables asynchronous step execution mode.
		И я делаю подсветку нескольких элементов VA с их заголовком "Asynchronous step execution mode" UI Automation
			| 'Name'                      |
			| 'ВыполнятьШагиАссинхронно' |
* If the checkbox is set, then each next step will be performed after a pause.
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ВыполнятьШагиАссинхронно'
		И Пауза 1
* In this field, specify the value of the pause between steps. The minimum value is one tenth of a second.
		И я делаю подсветку нескольких элементов VA с их заголовком "Pause between steps" UI Automation
			| 'Name'                                         | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ИнтервалВыполненияШагаЗаданныйПользователем' | ''    | ''                           | 'Ложь'                         |
* This option is usually used to artificially slow down script execution. For example, when demonstrating the script to another user.
* During normal operation and when running tests in the CI circuit, it is recommended to remove this checkbox.
		И я делаю подсветку нескольких элементов VA с их заголовком "Asynchronous step execution mode" UI Automation
			| 'Name'                      |
			| 'ВыполнятьШагиАссинхронно' |


* That's it, move on to the next lesson of the interactive help.




