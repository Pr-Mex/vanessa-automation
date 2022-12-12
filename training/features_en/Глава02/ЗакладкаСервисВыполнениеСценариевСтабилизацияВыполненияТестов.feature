# language: ru

@lessons

Функционал: Интерактивная справка. Стабилизация выполнения тестов.

Сценарий: Стабилизация выполнения тестов

* Hi! In this lesson, I will tell you about settings that affect the stability of script execution. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаВыполнениеСценариев' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаПодсистемаСтабилизацияВыполненияТестов' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Stabilization of test execution" UI Automation
			| 'Name'                                 |
			| 'КоличествоПопытокВыполненияДействия' |
			| 'КоличествоСекундПоискаОкна'          |
			| 'ТаймаутДляАсинхронныхШагов'          |
			| 'БезопасноеВыполнениеШагов'           |
			| 'ПаузаПриОткрытииОкна'                |

* This field sets the number of attempts to perform an action while the script is running.
		И я делаю подсветку нескольких элементов VA с их заголовком "Number of attempts to perform the action" UI Automation
			| 'Name'                                 | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'КоличествоПопытокВыполненияДействия' | ''    | ''                           | 'Ложь'                         |

* If more than one value is specified in the field, it means that if the action was performed unsuccessfully, it will be performed again after one second.
* An action here means a simple action with a form element, such as setting text in a field, pressing a button, and so on.
* When running tests in the CI circuit, it is recommended to increase this value to reduce the number of false positives of tests.
		И я делаю подсветку нескольких элементов VA с их заголовком "Number of attempts to perform the action" UI Automation
			| 'Name'                                 | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'КоличествоПопытокВыполненияДействия' | ''    | ''                           | 'Ложь'                         |

* Let's continue. This field controls the number of seconds to wait for a new window to appear.
		И я делаю подсветку нескольких элементов VA с их заголовком "Waiting for the window to appear" UI Automation
			| 'Name'                        | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'КоличествоСекундПоискаОкна' | ''    | ''                           | 'Ложь'                         |
* When running tests in the CI circuit, it is also recommended to increase this value.


* Let's continue. This field controls the timeout on asynchronous steps execution.
		И я делаю подсветку нескольких элементов VA с их заголовком "Timeout for asynchronous steps" UI Automation
			| 'Name'                        | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ТаймаутДляАсинхронныхШагов' | ''    | ''                           | 'Ложь'                         |
* Asynchronous are steps that wait for an event for a number of seconds.
* When running tests, such steps timeout will be calculated as the maximum of this setting and the value that was passed to the step.
* When running tests in the CI circuit, it is also recommended to increase this value.
		И я делаю подсветку нескольких элементов VA с их заголовком "Timeout for asynchronous steps" UI Automation
			| 'Name'                        | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ТаймаутДляАсинхронныхШагов' | ''    | ''                           | 'Ложь'                         |
	
* This field allows you to specify a pause that will be added to the steps that check for opening a new window.
		И я делаю подсветку нескольких элементов VA с их заголовком "Pause when opening a window" UI Automation
			| 'Name'                  | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ПаузаПриОткрытииОкна' | ''    | ''                           | 'Ложь'                         |
	
* This can be useful if forms may have additional initialization handlers and need to wait for them to complete.

* That's it, move on to the next lesson of the interactive help.




