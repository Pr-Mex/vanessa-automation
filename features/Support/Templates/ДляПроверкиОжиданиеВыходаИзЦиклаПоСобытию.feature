# language: ru
# encoding: utf-8

@IgnoreOnCIMainBuild

@tree


Функционал: Для проверки ожидание события в цикле и выход из него по событию
 
Сценарий: Для проверки ожидание события в цикле и выход из него по событию

	И Я запоминаю значение выражения "0" в переменную "СлужебнаяПеременная"
	И в течение 20 секунд я выполняю
		И Я запоминаю значение выражения "$СлужебнаяПеременная$+1" в переменную "СлужебнаяПеременная"
		Если "$СлужебнаяПеременная$=5" Тогда
			Тогда я прерываю цикл
	
	
	Если "$СлужебнаяПеременная$<>5" Тогда
		Тогда я вызываю исключение "Ожидали другое значение у СлужебнаяПеременная"