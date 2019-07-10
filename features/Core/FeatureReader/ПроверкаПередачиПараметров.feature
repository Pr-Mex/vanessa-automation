﻿# language: ru

@IgnoreOnWeb


Функционал: Передача параметров разных типов в процедуры
	Как Разработчик
	Я Хочу чтобы была возможность передавать параметры разных типов в сгенерированнфе процедуры
 
	Сценарий: Передача пути к расшаренному каталогу
		Когда я выполняю шаг с параметром '\\\\Server\\Каталог'
		Тогда я получаю в процедуру параметр типа 'Строка'
		
	Сценарий: Передача параметров в обычных сценариях типа Строка в апострофах когда нужен обратный слеш в конце строки
		Когда я выполняю шаг с параметром 'Просто \\\' и \' и \"кавычки\" и строка должна содержать слеш апостроф в середине и один слеш в конце строки\\'
		Тогда я получаю в процедуру параметр типа 'Строка'
		И это значение в виде строки равно 'Просто \\\' и \' и \"кавычки\" и строка должна содержать слеш апостроф в середине и один слеш в конце строки\\'

	Сценарий: Передача параметров в обычных сценариях типа Строка в кавычках когда нужен обратный слеш в конце строки
		Когда я выполняю шаг с параметром "Просто \\\" и \' и \"кавычки\" и строка должна содержать слеш кавычка в середине и один слеш в конце строки\\"
		Тогда я получаю в процедуру параметр типа 'Строка'
		И это значение в виде строки равно "Просто \\\" и \' и \"кавычки\" и строка должна содержать слеш кавычка в середине и один слеш в конце строки\\"

	Сценарий: Передача параметров в обычных сценариях типа Строка в апострофах с эранированными кавычками внутри
		Когда я выполняю шаг с параметром 'Просто \' и \"кавычки\" строка'
		Тогда я получаю в процедуру параметр типа 'Строка'
		И это значение в виде строки равно 'Просто \' и \"кавычки\" строка'

	Сценарий: Передача параметров в обычных сценариях типа Строка в апострофах с экранированным апострофом внутри
		Когда я выполняю шаг с параметром 'Просто \' и "кавычки" строка'
		Тогда я получаю в процедуру параметр типа 'Строка'
		И это значение в виде строки равно 'Просто \' и "кавычки" строка'

	Сценарий: Передача параметров в обычных сценариях типа Строка в кавычках с экранированным апострофом внутри
		Когда я выполняю шаг с параметром "Просто \' строка"
		Тогда я получаю в процедуру параметр типа 'Строка'
		И это значение в виде строки равно "Просто \' строка"

	Сценарий: Передача параметров в обычных сценариях типа Число
		Когда я выполняю шаг с параметром 1
		Тогда я получаю в процедуру параметр типа "Число"

	Сценарий: Передача параметров в обычных сценариях типа Строка в кавычках
		Когда я выполняю шаг с параметром "Просто строка"
		Тогда я получаю в процедуру параметр типа "Строка"

	Сценарий: Передача параметров в обычных сценариях типа Строка в апострофах
		Когда я выполняю шаг с параметром 'Просто строка'
		Тогда я получаю в процедуру параметр типа 'Строка'

	Сценарий: Передача параметров в обычных сценариях типа Строка в апострофах с кавычками
		Когда я выполняю шаг с параметром 'Просто "кавычки" строка'
		Тогда я получаю в процедуру параметр типа 'Строка'

	Сценарий: Передача параметров в обычных сценариях типа Дата десять знаков
		Когда я выполняю шаг с параметром 08.04.1981
		Тогда я получаю в процедуру параметр типа "Дата"

	Сценарий: Передача параметров в обычных сценариях типа Дата восемь знаков
		Когда я выполняю шаг с параметром 08.04.81
		Тогда я получаю в процедуру параметр типа "Дата"

	Сценарий: Передача параметров в обычных сценариях пустой даты
		Когда я выполняю шаг с параметром 01.01.0001
		Тогда я получаю в процедуру параметр типа "Дата"
		Тогда И этот параметр является пустой датой

	Сценарий: Передача параметров в обычных сценариях числа ноль
		Когда я выполняю шаг с параметром 0
		Тогда я получаю в процедуру параметр типа "Число"

	Сценарий: Передача параметров в обычных сценариях дроби
		Когда я выполняю шаг с параметром 0.1
		Тогда я получаю в процедуру параметр типа "Число"
		И это значение в виде строки равно "0,1"

	Сценарий: Передача параметров в обычных сценариях код справочника
		Когда я выполняю шаг с параметром 001
		Тогда я получаю в процедуру параметр типа "Число"
		И это значение в виде строки равно "1"

	Сценарий: Передача параметров в обычных сценариях отрицательной дроби
		Когда я выполняю шаг с параметром -0.123
		Тогда я получаю в процедуру параметр типа "Число"
		И это значение в виде строки равно "-0,123"

	Сценарий: Передача параметров в обычных сценариях символов больше и меньше
		Когда я выполняю шаг с параметром "< >"
		Тогда я получаю в процедуру параметр типа "Строка"
		И это значение в виде строки равно "< >"
		
		
Структура сценария: Передача параметров в структуре сценария
		Когда я выполняю шаг с параметром <ЗначениеПараметра>
		Тогда я получаю в процедуру параметр типа <ТипПараметра>
		И это значение в виде строки равно <ЗначениеПараметра>
		
	Примеры:
		|  ЗначениеПараметра             |  ТипПараметра  |
		|        10                      |      Число     |
		| Просто какая-то строка         |      Строка    |
		| "Просто какая-то строка"       |      Строка    |
		| 'Просто какая-то строка'       |      Строка    |
		| 'Просто "какая-то" строка'     |      Строка    |
		|     08.04.1981                 |      Дата      |
		|     08.04.81                   |      Дата      |
		|        -101                    |      Число     |
		|        0                       |      Число     |
		| 'Просто \' и "кавычки" строка' |      Строка    |
		| "Просто \' строка"             |      Строка    |
		| "Просто \" строка"             |      Строка    |
		| 'Просто \" строка'             |      Строка    |
		