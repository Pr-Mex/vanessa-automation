# language: ru

@lessons

Функционал: Интерактивная справка. Скриншоты.

Сценарий: Скриншоты

* Hi! In this lesson, I will tell you about the settings for making screenshots. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаСкриншоты' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Screenshot settings" UI Automation
			| 'Name'                                        |
			| 'ДелатьСкриншотПриВозникновенииОшибки'       |
			| 'СниматьСкриншотКаждогоОкна1С'               |
			| 'ИспользоватьВнешнююКомпонентуДляСкриншотов' |
			| 'КаталогВыгрузкиСкриншотов'                  |
			| 'СпособСнятияСкриншотовВнешнейКомпонентой'   |
			| 'КомандаСделатьСкриншот'                     |

* If this checkbox is set, screenshots will be taken when an error occurs during script execution.
		И я делаю подсветку нескольких элементов VA с их заголовком "Take a screenshot when an error occurs" UI Automation
			| 'Name'                                  |
			| 'ДелатьСкриншотПриВозникновенииОшибки' |
* It is recommended to set this option when running tests in the CI circuit.

* Let's continue. If this checkbox is set, then when an error occurs, screenshots will be taken from all active 1C sessions.
		И я делаю подсветку нескольких элементов VA с их заголовком "Take screenshots of all 1C sessions" UI Automation
			| 'Name'                          |
			| 'СниматьСкриншотКаждогоОкна1С' |
* It is also recommended to set this option when running tests in the CI circuit.

* Let's continue. If this checkbox is set, then screenshots will be taken using the VanessaExt external component.
		И я делаю подсветку нескольких элементов VA с их заголовком "Take a screenshot using the component" UI Automation
			| 'Name'                                        |
			| 'ИспользоватьВнешнююКомпонентуДляСкриншотов' |
* If the checkbox is removed, screenshots will be taken using additional utilities.
* It is also recommended to set this option when running tests in the CI circuit.


* Let's continue. This field specifies the directory where the screenshots will be saved.
		И я делаю подсветку нескольких элементов VA с их заголовком "Screenshot directory" UI Automation
			| 'Name'                       |
			| 'КаталогВыгрузкиСкриншотов' |
* If the field is not filled in, then screenshots will not be taken.

* Let's continue. This field specifies how screenshots will be taken using the external component.
		И я делаю подсветку нескольких элементов VA с их заголовком "The method of taking screenshots with a component" UI Automation
			| 'Name'                                      |
			| 'СпособСнятияСкриншотовВнешнейКомпонентой' |
* It is recommended to set the value - all Test Client windows.

* Let's continue. This field specifies the command for taking screenshots using an additional utility.
		И я делаю подсветку нескольких элементов VA с их заголовком "Making screenshots with an external utility" UI Automation
			| 'Name'                                      |
			| 'КомандаСделатьСкриншот' |
* This setting makes sense only if screenshots will be taken using an additional utility.

* That's it, move on to the next lesson of the interactive help.
