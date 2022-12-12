# language: ru

@lessons

Функционал: Интерактивная справка. Сброс настроек

Сценарий: Сброс настроек

* Hi! In this lesson, I will tell you how to reset the settings of Vanessa Automation. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These commands are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаСбросНастроек' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Settings reset" UI Automation
			| 'Name'                                |
			| 'СброситьКешИзвестныхStepDefinition' |
			| 'СброситьНастройкиVanessaAutomation' |

* The first command allows to reset the cache of already read steps.
		И я делаю подсветку нескольких элементов VA с их заголовком "Steps cache reset" UI Automation
			| 'Name'                                |
			| 'СброситьКешИзвестныхStepDefinition' |
	
* This is useful when step libraries have been moved.
* Or when moving Vanessa Automation data processor itself.

* The second command allows to reset all Vanessa Automation settings to defaults.
		И я делаю подсветку нескольких элементов VA с их заголовком "Reset to default values" UI Automation
			| 'Name'                                |
			| 'СброситьНастройкиVanessaAutomation' |


* That's it, move on to the next lesson of the interactive help.


