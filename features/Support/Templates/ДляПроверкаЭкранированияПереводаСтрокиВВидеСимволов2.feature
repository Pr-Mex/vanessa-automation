﻿# encoding: utf-8
# language: ru

@tree
@IgnoreOnCIMainBuild

Функционал: ДляПроверкаЭкранированияПереводаСтрокиВВидеСимволов2




Сценарий: ДляПроверкаЭкранированияПереводаСтрокиВВидеСимволов2
	Тогда таблица "ТабличнаяЧасть1" стала равной:
		| 'Реквизит строка'  |
		| '111\\n222'        |
	


