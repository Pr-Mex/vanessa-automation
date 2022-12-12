# language: ru

@lessons

Функционал: Интерактивная справка. Отбор по сценариям.

Сценарий: Отбор по сценариям.

* Hi! In this lesson, I will tell you how the script selection settings work. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* Settings related to script selection are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаОтборПоСценариям' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Script filter" UI Automation
			| 'Name'                   |
			| 'СписокСценариевДляВыполнения' |

* You can specify script names in this list.
* If the list is not empty, then only the listed scripts and in same order will be executed.

* That's it, move on to the next lesson of the interactive help.



