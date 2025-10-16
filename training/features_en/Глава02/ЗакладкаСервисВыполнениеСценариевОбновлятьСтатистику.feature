# language: ru

@lessons

Функционал: Интерактивная справка. Обновлять статистику выполнения сценариев.

Сценарий: Обновлять статистику выполнения сценариев

* Hi! In this lesson, I will tell you what settings affect the output of script execution statistics. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаВыполнениеСценариев' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаОбновлятьСтатистику' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Update script execution statistics" UI Automation
			| 'Name'                        |
			| 'ОбновлятьСтатистикуВДереве' |

* If this checkbox is set, then the information in the statistics field will be updated during the execution of the scripts.
		И я делаю подсветку нескольких элементов VA с их заголовком "Update script execution statistics" UI Automation
			| 'Name'                        |
			| 'ОбновлятьСтатистикуВДереве' |

		И Пауза 1
			
		И я делаю подсветку нескольких элементов VA с их заголовком "Statistical data" UI Automation
			| 'Name'        |
			| 'Статистика' |

* Removing this checkbox makes sense only when running a very large number of scripts. Then removing the checkbox will slightly reduce the time of the testing session.

* That's it, move on to the next lesson of the interactive help.

//Do not translate 32


