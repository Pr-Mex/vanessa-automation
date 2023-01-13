# language: ru

@lessons

Функционал: Интерактивная справка. Внешняя компонента VanessaExt.

Сценарий: Внешняя компонента VanessaExt

* Hi! In this lesson, I will tell you about the settings associated with the external component of VanessaExt. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаИспользоватьКомпонентуVanessaExt' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "VanessaExt component settings" UI Automation
			| 'Name'                                             |
			| 'ИспользоватьКомпонентуVanessaExt'                |
			| 'ИспользоватьПарсерGherkinИзКомпонентыVanessaExt' |
			| 'ПоискФайловСПомощьюКомпоненты'                   |

* The main setting is the checkbox - enable the use of an external VanessaExt component.
		И я делаю подсветку нескольких элементов VA с их заголовком "Enable the use of an VanessaExt external component" UI Automation
			| 'Name'                                             |
			| 'ИспользоватьКомпонентуVanessaExt'               |

* This component significantly expands the capabilities of Vanessa Automation.
* It allows work with operating system windows, take screenshots, play sound and much more.
* This interactive help works mostly thanks to this external component.
* It is recommended to set this checkbox.
		И я делаю подсветку нескольких элементов VA с их заголовком "Enable the use of an VanessaExt external component" UI Automation
			| 'Name'                                             |
			| 'ИспользоватьКомпонентуVanessaExt'               |


* This checkbox defines which file feature parser will be used.
		И я делаю подсветку нескольких элементов VA с их заголовком "Usage of parser from component" UI Automation
			| 'Name'                                             |
			| 'ИспользоватьПарсерGherkinИзКомпонентыVanessaExt' |
* If the checkbox is removed, the old parser built into Vanessa Automation will be used.
* If the checkbox is set, a new parser from the VanessaExt component will be used.
* The new parser works much faster, so it is recommended to leave this checkbox enabled.
		И я делаю подсветку нескольких элементов VA с их заголовком "Usage of parser from component" UI Automation
			| 'Name'                                             |
			| 'ИспользоватьПарсерGherkinИзКомпонентыVanessaExt' |


* This flag defines if the component will be used in file search.
		И я делаю подсветку нескольких элементов VA с их заголовком "Usage of component for files search" UI Automation
			| 'Name'                           |
			| 'ПоискФайловСПомощьюКомпоненты' |
	
* Enabling this option allows to speed up the file search a little.


* That's it, move on to the next lesson of the interactive help.


