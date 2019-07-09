﻿# language: ru

@IgnoreOnWeb




Функционал: Передача в шаг параметров в виде таблицы

	Как Разработчик
	Я Хочу чтобы была возможность передавать в шаги параметры в виде таблицы
 
Сценарий: Проверка экранирования спецсимволов
		Когда я выполняю шаг с в котором передаётся таблица со строкой в кавычках то не возникает ошибок:
		
		|  ЗначениеПараметра       |  ТипПараметра                    |
		|     "экран кавычка\""   |  СтрокаЭкранКавычекиВТаблице  |
		| 'И я подключаю профиль TestClient \"Администратор. База: File=\"C:\\Bases\\TestBase\"\"' | СложнаяСтрока1  |
		
		Тогда в переменной контекст будeт значение из таблицы 'экран кавычка\"'  Тип "СтрокаЭкранКавычекиВТаблице"
		Тогда в переменной контекст будeт значение из таблицы 'И я подключаю профиль TestClient \"Администратор. База: File=\"C:\\Bases\\TestBase\"\"'  Тип "СложнаяСтрока1"


 
Сценарий: Передача строк в кавычках
		Когда я выполняю шаг с в котором передаётся таблица со строкой в кавычках то не возникает ошибок:
		
		|  ЗначениеПараметра      |  ТипПараметра                    |
		|        "10"             |  ЧислоСтрокаВТаблице             |
		|        "abc"            |  СтрокаКавычкиВТаблице           |
		|        'abcd'           |  СтрокаАпострофыВТаблице         |
		|     'ab "кавычки" cd'   |  СтрокаАпострофыКавычкиВТаблице  |
		
		Тогда в переменной контекст будeт значение из таблицы "10" Тип "ЧислоСтрокаВТаблице"
		И     в переменной контекст будeт значение из таблицы "abc" Тип "СтрокаКавычкиВТаблице"
		И     в переменной контекст будeт значение из таблицы "abcd" Тип "СтрокаАпострофыВТаблице"
		И     в переменной контекст будeт значение из таблицы 'ab "кавычки" cd'  Тип "СтрокаАпострофыКавычкиВТаблице"
 
 
Сценарий: Проверка передачи в таблице символа вертикальная черта
		Когда я выполняю шаг с обычным параметром "ОбычныйПараметр" и в параметры которого передана таблица:
		|  ЗначениеПараметра      |  ТипПараметра          |
		|        \|             |      ВертикальнаяЧерта  |
		
		Тогда в переменной контекст будeт значение из таблицы "|" Тип "ВертикальнаяЧерта"

 
Сценарий: Передача параметров в шаг в виде таблицы и между строк таблицы указан комментарий
		Когда я выполняю шаг с обычным параметром "ОбычныйПараметр" и в параметры которого передана таблица:
	# Коментарий 1
		|  ЗначениеПараметра      |  ТипПараметра          |
# Коментарий 2
		|        10               |      ЧислоВТаблице     |
		# Коментарий 3
		
		Тогда в переменной контекст будeт значение из таблицы 10 Тип "ЧислоВТаблице"

 
Сценарий: Передача параметров в шаг в виде таблицы
		Когда я выполняю шаг с обычным параметром "ОбычныйПараметр" и в параметры которого передана таблица:
		
		|  ЗначениеПараметра      |  ТипПараметра          |
		|        10               |      ЧислоВТаблице     |
		| Просто какая-то строка  |      СтрокаВТаблице    |
		|     08.04.1981          |      ДатаВТаблице      |
		|        -11              |      ОтрЧислоВТаблице  |
		
		Тогда в переменной контекст будeт значение из таблицы 10 Тип "ЧислоВТаблице"
		И     в переменной контекст будeт значение из таблицы "Просто какая-то строка" Тип "СтрокаВТаблице"
		И     в переменной контекст будeт значение из таблицы 08.04.1981 Тип "ДатаВТаблице"
		И     в переменной контекст будeт Обычное значение переданного параметра "ОбычныйПараметр" Тип "ОбычныйПараметрИзПроцедуры"
		И     в переменной контекст будeт число минус одиннадцать

		
