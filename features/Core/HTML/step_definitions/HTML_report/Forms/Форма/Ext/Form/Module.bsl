﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
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

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВПолеКаталогОтчетаHTMLЯУказываюПутьКОтносительномуКаталогу(Парам01)","ВПолеКаталогОтчетаHTMLЯУказываюПутьКОтносительномуКаталогу","И     в поле каталог отчета HTML я указываю путь к относительному каталогу ""tools\HTML""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВКаталогеHTMLПоявилсяФайлHtml(Парам01)","ВКаталогеHTMLПоявилсяФайлHtml","И в каталоге HTML появился 1 файл html","","");

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
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//И     в поле каталог отчета HTML я указываю путь к относительному каталогу "tools\HTML"
//@ВПолеКаталогОтчетаHTMLЯУказываюПутьКОтносительномуКаталогу(Парам01)
Процедура ВПолеКаталогОтчетаHTMLЯУказываюПутьКОтносительномуКаталогу(ЧастьПути) Экспорт
	Каталог = Ванесса.Объект.КаталогИнструментов + "\" + ЧастьПути;
	Контекст.Вставить("КаталогHTML",Каталог);
	
	Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(Каталог) Тогда
		Ванесса.СоздатьКаталогКомандаСистемы(Каталог);
	Иначе
		Ванесса.УдалитьКаталогКомандаСистемы(Каталог);
		Ванесса.Sleep(1);
		Ванесса.СоздатьКаталогКомандаСистемы(Каталог);
	КонецЕсли;	 
	
	Поле = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("КаталогВыгрузкиИнструкцийHTML",Истина);
	Поле.ВвестиТекст(Каталог);
	
	//Ванесса.Шаг("И В открытой форме в поле с именем ""КаталогOutputИнструкцияHTML"" я ввожу текст """ + Каталог + """");
КонецПроцедуры

&НаКлиенте
//И в каталоге HTML появился 1 файл html
//@ВКаталогеHTMLПоявилсяФайлHtml(Парам01)
Процедура ВКаталогеHTMLПоявилсяФайлHtml(ДолжноБытьФайлов) Экспорт
	ЛогФайл = ПолучитьИмяВременногоФайла("txt");
	Команда = "DIR " + Контекст.КаталогHTML + " > """ + ЛогФайл + """";
	
	КомандаСистемы(Команда);
	
	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ЛогФайл,"Windows-1251");
	
	КолФайлов = 0;
	
	БылФайлAllure = Ложь;
	Пока Истина Цикл
		Стр = Текст.ПрочитатьСтроку();
		Если Стр = Неопределено Тогда
			Прервать;
		КонецЕсли;
		
		Стр = НРег(Стр);
		
		Если Найти(Стр,".html") > 0 Тогда
			БылФайлAllure = Истина;
			КолФайлов = КолФайлов + 1;
		КонецЕсли;	 
	КонецЦикла;	
	
	Текст.Закрыть();
	
	Если Не БылФайлAllure Тогда
		ТекстСообщения = "В каталоге %1 не найдено ни одного файла html.";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Контекст.КаталогHTML);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	
	
	Если КолФайлов <> ДолжноБытьФайлов Тогда
		ТекстСообщения = "Найдено %1, а должно быть %2 файлов";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",КолФайлов);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",ДолжноБытьФайлов);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

