# language: ru

@lessons

Функционал: Интерактивная справка. Закрытие клиента тестирования.

Сценарий: Закрытие клиента тестирования

* Hi! In this lesson, I will tell you about the settings for test client closing. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаКлиентыТестирования' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЗакрытиеКлиентаТестирования' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Test client closing settings" UI Automation
			| 'Name'                                                    | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ЗакрыватьКлиентТестированияПринудительно'               | ''    | ''                           | 'Ложь'                         |
			| 'ТаймаутПередПринудительнымЗакрытиемКлиентаТестирования' | ''    | ''                           | 'Ложь'                         |
			| 'ЗакрытьTestClientПослеЗапускаСценариев'                 | ''    | ''                           | 'Ложь'                         |

* If this checkbox is set, then when the testing client is normally closed, it will be checked that the testing client has actually closed.
		И я делаю подсветку нескольких элементов VA с их заголовком "Close Test client forcibly" UI Automation
			| 'Name'                                                    |
			| 'ЗакрыватьКлиентТестированияПринудительно'               |

* If Test Client has not closed, its process will be terminated by operating system.

* This field defines time range in seconds for Test Client to close independently.
		И я делаю подсветку нескольких элементов VA с их заголовком "Timeout for self closing" UI Automation
			| 'Name'                                                    | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ТаймаутПередПринудительнымЗакрытиемКлиентаТестирования' | ''    | ''                           | 'Ложь'                         |

* This flag closes test clients after all scenarios have finished. It is useful when running Vanessa Automation from the command line: test clients that are still open will be closed automatically.
		И я делаю подсветку нескольких элементов VA с их заголовком "Close test client after running scenarios" UI Automation
			| 'Name'                                                    |
			| 'ЗакрытьTestClientПослеЗапускаСценариев'                 |

* That's it, move on to the next lesson of the interactive help.




