﻿# language: ru

@IgnoreOnCIMainBuild
@Тест

Функциональность: ФичаДляПроверкиПодключенияЗапущенногоTestClient
 

Сценарий: Для ФичаДляПроверкиПодключенияЗапущенногоTestClient
	Когда Я подключаю уже запущенный клиент тестирования с параметрами:
		| 'Имя подключения'                                                     | 'Порт' |
		| 'ПроверкаШагаЯПодключаюУжеЗапущенныйКлиентТестированияСПараметрами'   | '111'  |