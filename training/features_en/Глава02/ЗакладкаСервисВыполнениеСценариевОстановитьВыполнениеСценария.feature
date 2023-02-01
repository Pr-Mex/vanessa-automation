# language: ru

@lessons

Функционал: Интерактивная справка. Остановить выполнение сценария.

Сценарий: Остановить выполнение сценария

* Hi! In this lesson, I will tell you how to simply stop the execution of scripts. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаВыполнениеСценариев' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаОстановитьВыполнениеСценария' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Show script execution termination window" UI Automation
			| 'Name'                                       |
			| 'ПоказыватьОкноОстановкиВыполненияСценария' |

* If this checkbox is set, a special window will be shown when running scripts for execution, which allows you to quickly stop the execution of scripts.
		И я делаю подсветку нескольких элементов VA с их заголовком "Show script execution termination window" UI Automation
			| 'Name'                                       |
			| 'ПоказыватьОкноОстановкиВыполненияСценария' |
* This option is useful because Test Client window often overlaps Test Manager window.
* Because of this, it can be difficult to click on the stop script execution button in the editor panel.
		И я делаю подсветку нескольких элементов VA с их заголовком "Editor panel button" UI Automation
			| 'Name'                                   |
			| 'ПанельVanessaEditorОстановитьСценарии' |
* And when this option is enabled, you can stop the execution of scripts without switching to the test manager window.
		И я делаю подсветку нескольких элементов VA с их заголовком "Show script execution termination window" UI Automation
			| 'Name'                                       |
			| 'ПоказыватьОкноОстановкиВыполненияСценария' |
	
* That's it, move on to the next lesson of the interactive help.




