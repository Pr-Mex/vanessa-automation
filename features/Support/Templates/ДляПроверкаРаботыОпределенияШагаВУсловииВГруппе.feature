﻿# encoding: utf-8
# language: ru

@tree
@IgnoreOnCIMainBuild

Функционал: ДляПроверкаРаботыОпределенияШагаВУсловииВГруппе




Сценарий: ДляПроверкаРаботыОпределенияШагаВУсловииВГруппе один
	Дано Я запоминаю значение выражения "1" в переменную "ВременнаяПеременная" глобально
	Если "Истина" Тогда
		* Группа 1
			Дано Я запоминаю значение выражения "2" в переменную "ВременнаяПеременная" глобально
			* Группа 2
				Дано Я запоминаю значение выражения "2" в переменную "ВременнаяПеременная" глобально
				Дано Я запоминаю значение выражения "3" в переменную "ВременнаяПеременная" глобально
				Дано Я запоминаю значение выражения "4" в переменную "ВременнаяПеременная" глобально
			
			Дано Я запоминаю значение выражения "5" в переменную "ВременнаяПеременная" глобально
		* Группа 3	
			Дано Я запоминаю значение выражения "6" в переменную "ВременнаяПеременная" глобально
			Дано Я запоминаю значение выражения "7" в переменную "ВременнаяПеременная" глобально
			
			
Сценарий: Проверочный сценарий один
	#Тогда переменная "$$ВременнаяПеременная$$" имеет значение "ЗначениеПеременной"
	И выражение внутреннего языка "$$ВременнаяПеременная$$ = 7" Истинно
	
	
Сценарий: ДляПроверкаРаботыОпределенияШагаВУсловииВГруппе два
	Дано Я запоминаю значение выражения "1" в переменную "ВременнаяПеременная" глобально
	Если "Истина" Тогда
		* Группа 1
			Дано Я запоминаю значение выражения "2" в переменную "ВременнаяПеременная" глобально
			* Группа 2
				Дано Я запоминаю значение выражения "2" в переменную "ВременнаяПеременная" глобально
				Дано Я запоминаю значение выражения "3" в переменную "ВременнаяПеременная" глобально
				Дано Я запоминаю значение выражения "4" в переменную "ВременнаяПеременная" глобально
			
			Дано Я запоминаю значение выражения "5" в переменную "ВременнаяПеременная" глобально
		* Группа 3	
			Дано Я запоминаю значение выражения "6" в переменную "ВременнаяПеременная" глобально
			Дано Я запоминаю значение выражения "7" в переменную "ВременнаяПеременная" глобально
			
		Дано Я запоминаю значение выражения "8" в переменную "ВременнаяПеременная" глобально
			
Сценарий: Проверочный сценарий два
	#Тогда переменная "$$ВременнаяПеременная$$" имеет значение "ЗначениеПеременной"
	И выражение внутреннего языка "$$ВременнаяПеременная$$ = 8" Истинно	