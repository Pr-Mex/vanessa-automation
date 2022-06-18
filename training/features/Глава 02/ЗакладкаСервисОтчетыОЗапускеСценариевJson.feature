﻿# language: ru

@lessons

Функционал: Интерактивная справка. Отчет в формате Json.

Сценарий: Отчет в формате Json

	* Привет! В этом уроке я расскажу тебе про настройки формирования отчета в формате Json. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		
	* Эти настройки находятся тут.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаОтчетыОЗапуске' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЛогОшибокТекст' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Настройки формирования отчета в формате Json" UI Automation
			| 'Имя'                           |
			| 'ДелатьЛогОшибокВТекстовыйФайл' |

	* Чтобы отчет формировался нужно установить этот флаг.
		И я делаю подсветку нескольких элементов VA с их заголовком "Включение отчета в формате Json" UI Automation
			| 'Имя'                           |
			| 'ДелатьЛогОшибокВТекстовыйФайл' |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ДелатьЛогОшибокВТекстовыйФайл' UI Automation
		И Пауза 1

	* Этот формат отчета можно использовать для интеграции с произвольными системами.

	* Данный флаг включает сбор данных о значениях переменных.
		И я делаю подсветку нескольких элементов VA с их заголовком "Значения переменных" UI Automation
			| 'Имя'                                |
			| 'СобиратьДанныеОЗначенияхПеременных' |

	* Этот флаг включает сбор данных о состоянии активной формы клиента тестирования в момент возникновения ошибки.
		И я делаю подсветку нескольких элементов VA с их заголовком "Состояние активной формы" UI Automation
			| 'Имя'                                            |
			| 'СобиратьДанныеОСостоянииАктивнойФормыПриОшибке' |

	* Данный флаг включает сбор данных о состоянии всех форм клиента тестирования в момент возникновения ошибки.
		И я делаю подсветку нескольких элементов VA с их заголовком "Состояние всех форм" UI Automation
			| 'Имя'                                       |
			| 'СобиратьДанныеОСостоянииВсехФормПриОшибке' |

	* Этот флаг определяет будет ли к отчету приложена информация о запущенных процессах на момент падения сценария.
		И я делаю подсветку нескольких элементов VA с их заголовком "Данные о процессах" UI Automation
			| 'Имя'                        |
			| 'СобиратьДанныеОПроцессахОС' |

	* Данный флаг определяет будет ли к отчету приложена информация о сетевых соединениях процессов, запущенных на ПК.
		И я делаю подсветку нескольких элементов VA с их заголовком "Данные о сетевых соединениях" UI Automation
			| 'Имя'                               |
			| 'СобиратьДанныеОСетевыхСоединениях' |

	* В данном поле нужно указать каталог, в котором будут формироваться файлы отчета
		И я делаю подсветку нескольких элементов VA с их заголовком "Каталог отчета" UI Automation
			| 'Имя'                  |
			| 'ИмяКаталогаЛогОшибок' |
	
	* На этом всё, переходи к следующему уроку интерактивной справки.
