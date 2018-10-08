﻿#Использовать v8runner
#Использовать logos

Перем Лог;


// Перемещаят найденные по маскам файлы с сохранением пути.
//
// Параметры:
//  КаталогКуда - Строка - Путь к каталогу в который переносятся файлы;
//  КаталогиОткуда 		 - Массив - Пути к каталогам в которых осуществляется поиск файлов;
//  МассивМасок 		 - Массив - Маски, по которым осуществляется поиск файлов.
//
// Взято из https://infostart.ru/public/537028/
Процедура СкопироватьФайлыВКаталог(КаталогКуда, КаталогиОткуда, МассивМасок)
 	
 	Для Каждого КаталогПоиска Из КаталогиОткуда Цикл
		КаталогПоискаОбъект = Новый Файл(КаталогПоиска);
		Если НЕ КаталогПоискаОбъект.Существует() Тогда
			Лог.Ошибка(НСтр("ru = 'Каталог не найден.'"));
			Продолжить;
		КонецЕсли;
		
		Для Каждого Маска Из МассивМасок Цикл
		
			МассивФайлов = НайтиФайлы(КаталогПоиска, Маска, Истина); 
			Для Каждого НайденныйФайл Из МассивФайлов Цикл
				
				НовыйПуть = СтрЗаменить(НайденныйФайл.Путь, КаталогПоиска, КаталогКуда);
				НовоеИмя = НайденныйФайл.Имя; 			
				
				Если НЕ ОбеспечитьКаталог(НовыйПуть) Тогда 
					Продолжить; 
				КонецЕсли;
				
				Если НайденныйФайл.ЭтоКаталог() Тогда
					Продолжить;
				КонецЕсли;	 
				
				ИмяФайлаДляПеремещения = ОбъединитьПути(НовыйПуть, НовоеИмя);
				УдалитьФайлы(ИмяФайлаДляПеремещения);
				
				Попытка
					КопироватьФайл(НайденныйФайл.ПолноеИмя,ИмяФайлаДляПеремещения);
				Исключение
					Лог.Ошибка(СтрШаблон(НСтр("ru = 'Не удалось скопировать файл:
						|%1'"), ОписаниеОшибки()));
					Продолжить;
				КонецПопытки;
								
				ФайлНаДиске = Новый Файл(ОбъединитьПути(НовыйПуть, НовоеИмя));
			    Если НЕ ФайлНаДиске.Существует() Тогда
					Лог.Ошибка(НСтр("ru = 'Не удалось корректно скопировать файл.'"));
					Продолжить;
			    КонецЕсли;
			КонецЦикла;	
		
		КонецЦикла;	

  	КонецЦикла;	

КонецПроцедуры

// Проверяет наличия каталога и в случае его отсутствия создает новый.
//
// Параметры:
//  Каталог - Строка - Путь к каталогу, существование которого нужно проверить.
//
// Возвращаемое значение:
//  Булево - признак существования каталога.
//
// Взято из https://infostart.ru/public/537028/
Функция ОбеспечитьКаталог(Знач Каталог)
	
	Файл = Новый Файл(Каталог);
	Если Не Файл.Существует() Тогда
		Попытка 
			СоздатьКаталог(Каталог);
		Исключение
			Лог.Ошибка(СтрШаблон(НСтр("ru = 'Не удалось создать каталог %1.
				|%2'"), Каталог, ИнформацияОбОшибке()));
			Возврат Ложь;
		КонецПопытки;
	ИначеЕсли Не Файл.ЭтоКаталог() Тогда 
		Лог.Ошибка(СтрШаблон(НСтр("ru = 'Каталог %1 не является каталогом.'"), Каталог));
		Возврат Ложь;
	КонецЕсли;
	
	Возврат Истина;
	
КонецФункции

Процедура ОчиститьКаталог(Каталог)
	ТаблицаКаталогов = Новый ТаблицаЗначений;
	ТаблицаКаталогов.Колонки.Добавить("ПолныйПуть");
	ТаблицаКаталогов.Колонки.Добавить("Длина");
	
	//Сообщить("КаталогОткуда="+КаталогОткуда);
	//Сообщить("КаталогКуда="+КаталогКуда);
	
	Файлы = НайтиФайлы(Каталог,"*",Истина);
	Для Каждого Файл Из Файлы Цикл
		Если Файл.ЭтоКаталог() Тогда
			СтрокаТаблицаКаталогов = ТаблицаКаталогов.Добавить();
			СтрокаТаблицаКаталогов.ПолныйПуть = Файл.ПолноеИмя;
			СтрокаТаблицаКаталогов.Длина      = СтрДлина(Файл.ПолноеИмя);
			Продолжить;
		КонецЕсли;	 
		
		УдалитьФайлы(Файл.ПолноеИмя);
	КонецЦикла;	
	
	ТаблицаКаталогов.Сортировать("Длина убыв");
	
	Для Каждого СтрокаТаблицаКаталогов Из ТаблицаКаталогов Цикл
		//Сообщить(СтрокаТаблицаКаталогов.ПолныйПуть);
		УдалитьФайлы(СтрокаТаблицаКаталогов.ПолныйПуть);
	КонецЦикла;	
КонецПроцедуры 

Процедура СоздатьПоставку(КаталогОткуда,КаталогКуда)
	ОчиститьКаталог(КаталогКуда);
	
	//Копируем основные файлы
	МассивМасок = Новый Массив;
	МассивМасок.Добавить("*.epf");
	МассивМасок.Добавить("*.feature");
	МассивМасок.Добавить("*.mxl");
	МассивМасок.Добавить("*.json");
	МассивМасок.Добавить("*.md");
	МассивМасок.Добавить("*.cmd");
	МассивМасок.Добавить("*.os");
	МассивМасок.Добавить("*.xsd");
	МассивМасок.Добавить("LICENSE.txt");
	МассивМасок.Добавить("LICENSE.xunitfor1c.txt");
	
	КаталогиОткуда = Новый Массив;
	КаталогиОткуда.Добавить(КаталогОткуда);
	
	СкопироватьФайлыВКаталог(КаталогКуда,КаталогиОткуда,МассивМасок);
	
	
	
	//копируем VideoTools
	КаталогиОткуда = Новый Массив;
	КаталогиОткуда.Добавить(КаталогОткуда + ПолучитьРазделительПути() + "tools\VideoTools");
	
	МассивМасок = Новый Массив;
	МассивМасок.Добавить("*.txt");
	МассивМасок.Добавить("*.png");
	СкопироватьФайлыВКаталог(КаталогКуда + ПолучитьРазделительПути() + "tools\VideoTools",КаталогиОткуда,МассивМасок);
	
	
	//копируем lib/CF
	КаталогиОткуда = Новый Массив;
	КаталогиОткуда.Добавить(КаталогОткуда + ПолучитьРазделительПути() + "lib\CF");
	
	МассивМасок = Новый Массив;
	МассивМасок.Добавить("*");
	СкопироватьФайлыВКаталог(КаталогКуда + ПолучитьРазделительПути() + "lib\CF",КаталогиОткуда,МассивМасок);
	
	//копируем lib/TemplateEpfUF
	КаталогиОткуда = Новый Массив;
	КаталогиОткуда.Добавить(КаталогОткуда + ПолучитьРазделительПути() + "lib\TemplateEpfUF");
	
	МассивМасок = Новый Массив;
	МассивМасок.Добавить("*");
	СкопироватьФайлыВКаталог(КаталогКуда + ПолучитьРазделительПути() + "lib\TemplateEpfUF",КаталогиОткуда,МассивМасок);
	
	//копируем lib/TemplateEpf
	КаталогиОткуда = Новый Массив;
	КаталогиОткуда.Добавить(КаталогОткуда + ПолучитьРазделительПути() + "lib\TemplateEpf");
	
	МассивМасок = Новый Массив;
	МассивМасок.Добавить("*");
	СкопироватьФайлыВКаталог(КаталогКуда + ПолучитьРазделительПути() + "lib\TemplateEpf",КаталогиОткуда,МассивМасок);
	
	ОчиститьКаталог(КаталогКуда + ПолучитьРазделительПути() + "tools\ServiceBases");
	ОчиститьКаталог(КаталогКуда + ПолучитьРазделительПути() + ".git");
	УдалитьФайлы(КаталогКуда + ПолучитьРазделительПути() + ".git");
КонецПроцедуры 




Лог = Логирование.ПолучитьЛог("vb.decompile.log");
Лог.УстановитьУровень(УровниЛога.Отладка);

Если АргументыКоманднойСтроки.Количество() = 0 Тогда
	Лог.Ошибка("Не переданы параметры!");
ИначеЕсли АргументыКоманднойСтроки.Количество() > 2 Тогда
	Лог.Ошибка("Скрипт принимает только два параметр!");
Иначе
	СоздатьПоставку(АргументыКоманднойСтроки[0],АргументыКоманднойСтроки[1]);
КонецЕсли;




