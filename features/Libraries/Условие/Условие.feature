﻿# language: ru

@IgnoreOnWeb

@tree


Функционал: Выполнение условий
	Как разработчик
	Хочу иметь возможность выполнить шаг по условию
	Чтобы выполнять сложные бизнес-процессы

	
	
Сценарий: Выполнение шага по условию
	Дано Я запоминаю значение выражения "0" в переменную "СлужебнаяПеременная"
	Если "Истина" тогда
		Если "Истина" тогда
			И Я запоминаю значение выражения "Контекст.СлужебнаяПеременная+1" в переменную "СлужебнаяПеременная"
	
	Если "Истина" тогда
		Если "Ложь" Тогда
			И Я запоминаю значение выражения "Контекст.СлужебнаяПеременная+1" в переменную "СлужебнаяПеременная"
		
	Тогда выражение внутреннего языка "Контекст.СлужебнаяПеременная = 1" Истинно	

