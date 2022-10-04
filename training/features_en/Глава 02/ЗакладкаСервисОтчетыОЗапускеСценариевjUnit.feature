# language: ru

@lessons

Функционал: Интерактивная справка. Отчет в формате jUnit.

Сценарий: Отчет в формате jUnit

* Hi! In this lesson, I will tell you about the settings for generating a report in JUnit format. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаОтчетыОЗапуске' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаjUnit' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Settings for generating a report in JUnit format" UI Automation
			| 'Name'                      |
			| 'ДелатьОтчетВФорматеjUnit' |

* To generate a report, you need to set this checkbox.
		И я делаю подсветку нескольких элементов VA с их заголовком "Enabling a report in JUnit format" UI Automation
			| 'Name'                      |
			| 'ДелатьОтчетВФорматеjUnit' |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ДелатьОтчетВФорматеjUnit' UI Automation
		И Пауза 1

* In this field, specify the directory to generate the report files
		И я делаю подсветку нескольких элементов VA с их заголовком "Report directory" UI Automation
			| 'Name'                  |
			| 'КаталогВыгрузкиJUnit' |
	
* This checkbox allows to attach screenshots to the report when working with Gitlab
		И я делаю подсветку нескольких элементов VA с их заголовком "Attaching screenshots" UI Automation
			| 'Name'            |
			| 'СкриншотыjUnit' |

* That's it, move on to the next lesson of the interactive help.
