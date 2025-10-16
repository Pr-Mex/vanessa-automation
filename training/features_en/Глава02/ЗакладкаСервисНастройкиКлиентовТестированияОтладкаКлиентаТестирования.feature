# language: ru

@lessons

Функционал: Интерактивная справка. Отладка клиента тестирования

Сценарий: Отладка клиента тестирования

* Hi! In this lesson, I will tell you about the debugging settings of test client. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаКлиентыТестирования' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаОтладкаКлиентаТестирования' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Test Client debugging settings" UI Automation
			| 'Name'                               |
			| 'ЗапускатьТестКлиентВРежимеОтладки' |


* This checkbox determines if the Test Client will connect to the debugger on start.
		И я делаю подсветку нескольких элементов VA с их заголовком "Connect Test client to the debugger" UI Automation
			| 'Name'                               |
			| 'ЗапускатьТестКлиентВРежимеОтладки' |
* If the checkbox is set, two more settings appear.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ЗапускатьТестКлиентВРежимеОтладки' UI Automation		
		И Пауза 1
* The first field is the address of the debugger
		И я делаю подсветку нескольких элементов VA с их заголовком "Debugger address" UI Automation
			| 'Name'            |
			| 'АдресОтладчика' |
* The second field is additional keys that can be passed to Test Client
		И я делаю подсветку нескольких элементов VA с их заголовком "Debugging keys" UI Automation
			| 'Name'          |
			| 'КлючиОтладки' |

* That's it, move on to the next lesson of the interactive help.




