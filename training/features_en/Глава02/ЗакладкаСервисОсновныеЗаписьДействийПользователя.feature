# language: ru

@lessons

Функционал: Интерактивная справка. Запись действий пользователя

Сценарий: Запись действий пользователя

* Hi! In this lesson, I will tell you about user actions recording settings. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorЗаписьДействийПользователя' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "User actions recording settings" UI Automation
			| 'Name'                                               |
			| 'ИскатьЭлементыФормыПоИмени'                        |
			| 'ПоказыватьОкноОстановкиЗаписиДействийПользователя' |

* The first checkbox defines which steps will be generated based on the result of recording user actions.
		И я делаю подсветку нескольких элементов VA с их заголовком "How to search for form elements in steps" UI Automation
			| 'Name'                                               |
			| 'ИскатьЭлементыФормыПоИмени'                        |
* If the checkbox is set, then when there is a choice, create a step searching for an element by header or by name, a choice of search by name will be made.
* A significant point. Element search by name is more reliable in most cases.
* If the checkbox is removed, there will be an attempt to generate a step that searches for a form element by header.
		И я делаю подсветку нескольких элементов VA с их заголовком "How to search for form elements in steps" UI Automation
			| 'Name'                                               |
			| 'ИскатьЭлементыФормыПоИмени'                        |
* A significant point. If the checkbox is unchecked, a searching for a form element by name step can still be generated, because there may be several elements with the same title in the form.
* And then the search by title might work incorrectly.
* Thus, it is recommended to leave this checkbox enabled.
		И я делаю подсветку нескольких элементов VA с их заголовком "How to search for form elements in steps" UI Automation
			| 'Name'                                               |
			| 'ИскатьЭлементыФормыПоИмени'                        |

* The second checkbox defines if a special window will be shown at the top of the screen while recording user actions.
		И я делаю подсветку нескольких элементов VA с их заголовком "Show recording termination window" UI Automation
			| 'Name'                                               |
			| 'ПоказыватьОкноОстановкиЗаписиДействийПользователя' |
* This window allows to quickly and conveniently stop recording. This will generate the script steps according to the actions performed.
* A significant point. For this option to work, enable VanessaExt external component.
* This checkbox is also recommended to leave enabled.
		И я делаю подсветку нескольких элементов VA с их заголовком "Show recording termination window" UI Automation
			| 'Name'                                               |
			| 'ПоказыватьОкноОстановкиЗаписиДействийПользователя' |

* That's it, move on to the next lesson of the interactive help.






