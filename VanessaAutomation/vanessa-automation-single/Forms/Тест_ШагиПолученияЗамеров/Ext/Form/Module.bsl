﻿
///////////////////////////////////////////////////
// Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

Перем ВыполнятьЗамерИнициализирован;

// Делает отключение модуля
&НаКлиенте
Функция ОтключениеМодуля() Экспорт

	Ванесса = Неопределено;
	Контекст = Неопределено;
	КонтекстСохраняемый = Неопределено;

КонецФункции

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;
	
	Ванесса.ДобавитьШагВМассивТестов(
		ВсеТесты, 
		"ЯБудуВыполнятьЗамерПроизводительности(Парам01)",
		"ЯБудуВыполнятьЗамерПроизводительности",
		"Допустим я буду выполнять замер производительности 'ВыполнятьЗамер''",
		"",
		"");
	Ванесса.ДобавитьШагВМассивТестов(
		ВсеТесты,
		"ЯНачинаюЗамерПроизводительности()",
		"ЯНачинаюЗамерПроизводительности",
		"Допустим Я начинаю замер производительности",
		"",
		"");
	Ванесса.ДобавитьШагВМассивТестов(
		ВсеТесты,
		"ЯЗавершаюЗамерПроизводительности()",
		"ЯЗавершаюЗамерПроизводительности",
		"Допустим Я завершаю замер производительности",
		"",
		"");
		
	Возврат ВсеТесты;
	
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
// Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Функция выполняется перед началом каждого сценария
Функция ПередНачаломСценария() Экспорт
	
КонецФункции

&НаКлиенте
// Функция выполняется перед окончанием каждого сценария
Функция ПередОкончаниемСценария() Экспорт
	
КонецФункции


///////////////////////////////////////////////////
// Реализация шагов
///////////////////////////////////////////////////

//Допустим Я буду выполнять замер производительности
//@ЯБудуВыполнятьЗамерПроизводительности()
&НаКлиенте
Функция ЯБудуВыполнятьЗамерПроизводительности(ВыполнятьЗамер = Истина) Экспорт
	
	 ВыполнятьЗамер = Булево(ВыполнятьЗамер);
	 УстановитьВыполнятьЗамер(ВыполнятьЗамер);
	 ИнициализироватьПараметрыЗамера();
	 
	 Возврат "";

КонецФункции

&НаКлиенте
//Допустим Я начинаю замер производительности
//@ЯНачинаюЗамерПроизводительности()
Функция ЯНачинаюЗамерПроизводительности() Экспорт
				
	Если НЕ ВыполнятьЗамер() Тогда
		Возврат Неопределено;
	КонецЕсли;
	
	Если НЕ ЗамерИнициализирован() Тогда
		ИнициализироватьПараметрыЗамера();
	КонецЕсли;	
		
	ПараметрыСоединенияОтладки = ПараметрыСоединенияОтладки();
	ЯНачинаюЗамерПроизводительностиПоАдресуПорт(ПараметрыСоединенияОтладки.Адрес, ПараметрыСоединенияОтладки.Порт);
	
	Возврат "";

КонецФункции

&НаКлиенте
//Допустим Я завершаю замер производительности
//@ЯЗавершаюЗамерПроизводительности()
Функция ЯЗавершаюЗамерПроизводительности() Экспорт
				
	Если НЕ ВыполнятьЗамер() 
		ИЛИ НЕ ЗамерИнициализирован() Тогда
		Возврат Неопределено;
	КонецЕсли;
	
	ПараметрыСоединенияОтладки = ПараметрыСоединенияОтладки();
	ЯЗавершаюЗамерПроизводительностиПоАдресуПорт(ПараметрыСоединенияОтладки.Адрес, ПараметрыСоединенияОтладки.Порт);
	
	Возврат "";
	
КонецФункции

&НаКлиенте
Функция ЯНачинаюЗамерПроизводительностиПоАдресуПорт(АдресХоста, Порт)
	
	HTTPСоединение = Новый HTTPСоединение(АдресХоста, Порт, , , , 5);
	
	Заголовки = Новый Соответствие();
	Заголовки.Вставить("accept-charset", "utf-8");
	Заголовки.Вставить("content-type", "application/xml");
	
	HTTPЗапрос = Новый HTTPЗапрос("/e1crdbg/rdbg?cmd=setMeasureMode", Заголовки);
	HTTPЗапрос.УстановитьТелоИзСтроки(ТелоЗапросаВключитьЗамер());
	
	Попытка
		Результат = HTTPСоединение.ОтправитьДляОбработки(HTTPЗапрос);
	Исключение
		ТекстСообщения = Ванесса.Локализовать("Не получилось запустить замер. Ошибка соединения с сервером отладки. Выполенние замеров прекращено");
		Ванесса.СообщитьПользователю(ТекстСообщения);
		УстановитьВыполнятьЗамер(Ложь);
	КонецПопытки;
	
	Возврат "";
	
КонецФункции

&НаКлиенте
Функция ЯЗавершаюЗамерПроизводительностиПоАдресуПорт(АдресХоста, Порт) 
	
	HTTPСоединение = Новый HTTPСоединение(АдресХоста, Порт, , , , 5);
		
	Заголовки = Новый Соответствие();
	Заголовки.Вставить("accept-charset", "utf-8");
	Заголовки.Вставить("content-type", "application/xml");
	
	HTTPЗапрос = Новый HTTPЗапрос("/e1crdbg/rdbg?cmd=setMeasureMode", Заголовки);
	HTTPЗапрос.УстановитьТелоИзСтроки(ТелоЗапросаВыключитьЗамер());
	
	Попытка
		Результат = HTTPСоединение.ОтправитьДляОбработки(HTTPЗапрос);
	Исключение
		УстановитьВыполнятьЗамер(Ложь);
		ТекстСообщения = Ванесса.Локализовать("Ошибка соединения с сервером отладки. Выполнение замеров прекращено.");
		Ванесса.СообщитьПользователю(ТекстСообщения);
	КонецПопытки;
	
	Возврат "";
	
КонецФункции

&НаКлиенте
Функция ПараметрыСоединенияОтладки()
	
	ПараметрыСоединенияОтладки = Неопределено;
	Ванесса.Объект.ДополнительныеПараметры.Свойство("ПараметрыСоединенияОтладки", ПараметрыСоединенияОтладки);
	
	Если ПараметрыСоединенияОтладки = Неопределено Тогда
		ПараметрыСоединенияОтладки = ПараметрыСоединенияОтладкиПоУмолчанию();
	КонецЕсли;	
	
	Возврат ПараметрыСоединенияОтладки;

КонецФункции

&НаКлиенте
Функция ПараметрыСоединенияОтладкиПоУмолчанию()
	
	Возврат Новый Структура("Адрес, Порт", "localhost", 1550);
 	
КонецФункции	

&НаКлиенте
Функция ВыполнятьЗамер()
	
	ВыполнятьЗамер = Ванесса.Объект.ДополнительныеПараметры.Свойство("ВыполнятьЗамер")       
		И Ванесса.Объект.ДополнительныеПараметры.ВыполнятьЗамер;
		
	Возврат ВыполнятьЗамер;	
	
КонецФункции	

&НаКлиенте
Функция УстановитьВыполнятьЗамер(ВыполнятьЗамер)
	
	Ванесса.Объект.ДополнительныеПараметры.Вставить("ВыполнятьЗамер", ВыполнятьЗамер);       
	
КонецФункции

&НаКлиенте
Функция ТелоЗапросаВключитьЗамер()
	
	ТелоHTTPЗапроса = "<?xml version=""1.0"" encoding=""UTF-8""?>
		|<request xmlns=""http://v8.1c.ru/8.3/debugger/debugBaseData""
		|    xmlns:cfg=""http://v8.1c.ru/8.1/data/enterprise/current-config""
		|    xmlns:debugRDBGRequestResponse=""http://v8.1c.ru/8.3/debugger/debugRDBGRequestResponse"" 
		|    xmlns:debugRTEFilter=""http://v8.1c.ru/8.3/debugger/debugRTEFilter"" 
		|    xmlns:v8=""http://v8.1c.ru/8.1/data/core"" 
		|    xmlns:xs=""http://www.w3.org/2001/XMLSchema"" 
		|    xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"">
		|	<debugRDBGRequestResponse:infoBaseAlias>DefAlias</debugRDBGRequestResponse:infoBaseAlias>
		|   <debugRDBGRequestResponse:idOfDebuggerUI>a99bb725-e768-4136-998c-4d33550f6c5a</debugRDBGRequestResponse:idOfDebuggerUI>
		|   <debugRDBGRequestResponse:measureModeSeanceID>7606ec99-923f-446a-bf5e-2f44c6fd2823</debugRDBGRequestResponse:measureModeSeanceID>
		|</request>";
	
	Возврат ТелоHTTPЗапроса; 
	 	
КонецФункции

&НаКлиенте
Функция ТелоЗапросаВыключитьЗамер()
	
	ТелоHTTPЗапроса = "<?xml version=""1.0"" encoding=""UTF-8""?>
		|<request xmlns=""http://v8.1c.ru/8.3/debugger/debugBaseData""
		|    xmlns:cfg=""http://v8.1c.ru/8.1/data/enterprise/current-config"" 
		|    xmlns:debugRDBGRequestResponse=""http://v8.1c.ru/8.3/debugger/debugRDBGRequestResponse"" 
		|    xmlns:debugRTEFilter=""http://v8.1c.ru/8.3/debugger/debugRTEFilter"" 
		|    xmlns:v8=""http://v8.1c.ru/8.1/data/core"" 
		|    xmlns:xs=""http://www.w3.org/2001/XMLSchema"" 
		|    xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"">
		|    <debugRDBGRequestResponse:infoBaseAlias>DefAlias</debugRDBGRequestResponse:infoBaseAlias>
		|    <debugRDBGRequestResponse:idOfDebuggerUI>a99bb725-e768-4136-998c-4d33550f6c5a</debugRDBGRequestResponse:idOfDebuggerUI>
		|</request>";
	
	Возврат ТелоHTTPЗапроса; 
	
КонецФункции

&НаКлиенте
Функция ЗамерИнициализирован()
	
	Инициализирован = Ложь;
	Если Ванесса.Объект.ДополнительныеПараметры.Свойство("ПараметрыЗамера")
		И Ванесса.Объект.ДополнительныеПараметры.ПараметрыЗамера.Свойство("ЗамерИнициализирован")
		И Ванесса.Объект.ДополнительныеПараметры.ПараметрыЗамера.ЗамерИнициализирован Тогда
		
		Инициализирован = Истина;
		
	КонецЕсли;	
		
	Возврат Инициализирован;
	
КонецФункции	
	
&НаКлиенте
Функция ИнициализироватьПараметрыЗамера()
	
	Если НЕ ВыполнятьЗамер() Тогда
		Возврат Неопределено;
	КонецЕсли;	        
	
	ПараметрыЗамера = Новый Структура;
	 
	ПараметрыЗамера.Вставить("ЗамерИнициализирован", Истина);
	Ванесса.Объект.ДополнительныеПараметры.Вставить("ПараметрыЗамера", ПараметрыЗамера);
	
	ПараметрыИзСтроки = РазложитьСтрокуАдресОтладчика(Ванесса.Объект.АдресОтладчика);
	УстановитьПараметрыСоединенияОтладки(ПараметрыИзСтроки.Адрес, ПараметрыИзСтроки.Порт);
	
КонецФункции	

&НаКлиенте
Функция УстановитьПараметрыСоединенияОтладки(Адрес, Порт)
	
	ОписаниеТипа = Новый ОписаниеТипов("Число");
	ПортЧислом = ОписаниеТипа.ПривестиЗначение(Порт);
	
	ПараметрыСоединенияОтладки = Новый Структура;
	ПараметрыСоединенияОтладки.Вставить("Адрес", Строка(Адрес));
	ПараметрыСоединенияОтладки.Вставить("Порт", ПортЧислом);
	
	Ванесса.Объект.ДополнительныеПараметры.Вставить("ПараметрыСоединенияОтладки", ПараметрыСоединенияОтладки);
	
КонецФункции

&НаКлиенте
Функция РазложитьСтрокуАдресОтладчика(АдресОтладчика)
	
	ПараметрыОтладки = ПараметрыСоединенияОтладки();
	
	СтрокаОтладки = СтрЗаменить(НРег(АдресОтладчика), "http://", "");
	ПозицияРазделителя = Найти(СтрокаОтладки, ":");
	Адрес = Лев(СтрокаОтладки, ПозицияРазделителя - 1);
	Порт = Сред(СтрокаОтладки, ПозицияРазделителя + 1);
	
	Если ЗначениеЗаполнено(Адрес) Тогда
		ПараметрыОтладки.Адрес = Адрес;
	КонецЕсли;
	
	Если ЗначениеЗаполнено(Порт) Тогда
		ПараметрыОтладки.Порт = Порт;
	КонецЕсли;
	
	
	Возврат ПараметрыОтладки;
	
КонецФункции	
	
