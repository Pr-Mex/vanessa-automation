﻿# language: ru

@IgnoreOnWeb

Функционал: Проверка того как отработала процедура ПередНачаломСценария
	Как Разработчик
	Я Хочу чтобы чтобы при возникновении ошибки в процедуре ПередНачаломСценария происходило падение сценария
 

	Сценарий: Обработка ошибки в процедуре ПередНачаломСценария

	Когда я открыл форму VanessaBehavoir в режиме самотестирования
	И я загрузил специальную тестовую фичу "ОбработкаОшибкиВПроцедуреПередНачаломСценария"
	И Пауза 1
	И я прервал выполнение шагов в хост системе и я нажал на кнопку "ВыполнитьСценарии"
	Тогда в тестируемом экземпляре не выполнился первый сценарий
	И Я продолжил выполнение шагов в хост системе

