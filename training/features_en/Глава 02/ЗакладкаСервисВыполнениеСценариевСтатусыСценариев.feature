# language: ru

@lessons

Функционал: Интерактивная справка. Статусы сценариев.

Сценарий: Статусы сценариев

* Hi! In this lesson, I will tell you about some features of calculating the status of script. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаВыполнениеСценариев' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаВыполнениеСценариевСтатусы' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Settings for calculating script statuses" UI Automation
			| 'Name'                                         |
			| 'ПриравниватьPendingКFailed'                  |
			| 'РазличатьBrokenИFailedПоКлючевомуСловуТогда' |

* If this checkbox is set and a step is found in the script for which there is no implementation, then the status of the script will be error.
		И я делаю подсветку нескольких элементов VA с их заголовком "Equate Pending to Failed" UI Automation
			| 'Name'                        |
			| 'ПриравниватьPendingКFailed' |
* If the checkbox is removed, then in this case the script status will be - not implemented.
* It is recommended to set this checkbox.
		И я делаю подсветку нескольких элементов VA с их заголовком "Equate Pending to Failed" UI Automation
			| 'Name'                        |
			| 'ПриравниватьPendingКFailed' |

* Let's continue. This checkbox activates the mode when the step beginning with keyword Then, fails, the script status will be an error.
		И я делаю подсветку нескольких элементов VA с их заголовком "Broken or Failed" UI Automation
			| 'Name'                                         |
			| 'РазличатьBrokenИFailedПоКлючевомуСловуТогда' |
* For steps that start with other keywords - the fail status will be broken, not an error.
	

* That's it, move on to the next lesson of the interactive help.
