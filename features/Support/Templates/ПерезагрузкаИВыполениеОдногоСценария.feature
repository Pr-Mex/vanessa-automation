﻿# language: ru

@IgnoreOnCIMainBuild
@SpecialTag

Функционал: Проверка перезагрузка и выполнение одного сценария
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность загрузить произвольную тестовую фичу в vanessa-behavior
 
Сценарий: Первый сценарий. Проверка перезагрузка и выполнение одного сценария
	Когда Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1

Сценарий: Второй сценарий. Проверка перезагрузка и выполнение одного сценария

	Когда Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1
	И     Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1
