﻿# language: ru

@lessons

Функционал: Интерактивная справка. Генератор дымовых тестов.

Сценарий: Настройки генератора дымовых тестов.

	* Привет! В этом уроке я расскажу тебе про то, какие бывают настройки связанные с дымовыми тестами. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		
	* Данные настройки находится тут.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаДымовыеТесты' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Настройки генератора дымовых тестов" UI Automation
			| 'Имя'                                                             |
			| 'ДымовыеТестыЯзыкШагов'                                     		|
			| 'ДымовыеТестыКаталогВыходныхФайлов'                               |
			| 'ДымовыеТестыОчищатьКаталогВыходныхФайлов'                        |
			| 'ДымовыеТестыКаталогФайловИсключений'                             |
			| 'ДымовыеТестыТолькоВведенныеОбъекты'                              |
			| 'ДымовыеТестыТолькоИзмененныеОтностительноКонфигурацииПоставщика' |
			| 'ДымовыеТестыИмяКонфигурацииПоставщика'                           |
			| 'ДымовыеТестыПутьКФайлуНастроекСценариев'                         |

	* Тут задаётся язык, на котором будет происходить генерация фича файлов.
		И я делаю подсветку нескольких элементов VA с их заголовком "Язык шагов" UI Automation
			| 'Имя'                   |
			| 'ДымовыеТестыЯзыкШагов' |
	
	* В данном поле указывается каталог, в который будут записаны итоговые feature-файлы дымовых тестов.
		И я делаю подсветку нескольких элементов VA с их заголовком "Каталог выходных файлов" UI Automation
			| 'Имя'                               |
			| 'ДымовыеТестыКаталогВыходныхФайлов' |
	
	* В данном поле указывается каталог, в котором хранятся текстовые файлы с объектами-исключениями.
		И я делаю подсветку нескольких элементов VA с их заголовком "Каталог файлов исключений" UI Automation
			| 'Имя'                                 |
			| 'ДымовыеТестыКаталогФайловИсключений' |

	* В данном поле указывается путь к файлу настройки сценариев.
		И я делаю подсветку нескольких элементов VA с их заголовком "Путь к файлу настроек сценариев" UI Automation
			| 'Имя'                                     |
			| 'ДымовыеТестыПутьКФайлуНастроекСценариев' |

	* При включении данного флага перед формированием feature-файлов в каталоге выходных файлов будут удалены все существующие feature-файлы
		И я делаю подсветку нескольких элементов VA с их заголовком "Очищать каталог выходных файлов" UI Automation
			| 'Имя'                              		 |
			| 'ДымовыеТестыОчищатьКаталогВыходныхФайлов' |		

	* При включении данного флага в формировании feature-файлов расширенных действий будут участвовать только объекты, для которых в текущей информационной базе существует хотя бы один не помеченный на удаление элемент.
		И я делаю подсветку нескольких элементов VA с их заголовком "Только введенные объекты для расширенных действий" UI Automation
			| 'Имя'                                |
			| 'ДымовыеТестыТолькоВведенныеОбъекты' |

	* Если этот флаг установлен, в feature файлы будут включены только те объекты, которые имеют хотя бы один элемент в текущей базе данных, не помеченный на удаление.
		И я делаю подсветку нескольких элементов VA с их заголовком "Только измененные отностительно конфигурации поставщика" UI Automation
			| 'Имя'                                                             |
			| 'ДымовыеТестыТолькоИзмененныеОтностительноКонфигурацииПоставщика' |

	* В данном поле указывается Имя конфигурации поставщика для сравнения конфигураций.
		И я делаю подсветку нескольких элементов VA с их заголовком "Имя конфигурации поставщика" UI Automation
			| 'Имя'                                   |
			| 'ДымовыеТестыИмяКонфигурацииПоставщика' |

	* На этом всё, переходи к следующему уроку интерактивной справки.
