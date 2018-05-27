﻿//начало текста модуля
&НаКлиенте
Перем Ванесса;

&НаКлиенте
Функция ДобавитьШагВМассивТестов(МассивТестов,Снипет,ИмяПроцедуры,ПредставлениеТеста = Неопределено,Транзакция = Неопределено,Параметр = Неопределено)
	Структура = Новый Структура;
	Структура.Вставить("Снипет",Снипет);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ПредставлениеТеста",ПредставлениеТеста);
	Структура.Вставить("Транзакция",Транзакция);
	Структура.Вставить("Параметр",Параметр);
	МассивТестов.Добавить(Структура);
КонецФункции

&НаКлиенте
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюШагСПараметром(Парам01)","ЯВыполняюШагСПараметром","Когда я выполняю шаг с параметром 1");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПолучаюВПроцедуруПараметрТипа(Парам01)","ЯПолучаюВПроцедуруПараметрТипа","Тогда я получаю в процедуру параметр типа ""Число""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ИЭтотПараметрЯвляетсяПустойДатой()","ИЭтотПараметрЯвляетсяПустойДатой","Тогда И этот параметр является пустой датой");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЭтоЗначениеВВидеСтрокиРавно(Парам01)","ЭтоЗначениеВВидеСтрокиРавно","И это значение в виде строки равно ""0.1""");

	Возврат ВсеТесты;
КонецФункции

&НаКлиенте
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры


&НаКлиенте
//я выполняю шаг с параметром 1
//@ЯВыполняюШагСПараметром(Парам01)
Процедура ЯВыполняюШагСПараметром(Параметр) Экспорт
	ПереданныйТип = ТипЗнч(Параметр);
	Контекст.Вставить("ПереданныйТип",ПереданныйТип);
	Контекст.Вставить("ПереданныйПараметр",Параметр);
КонецПроцедуры

&НаКлиенте
//я получаю в процедуру параметр типа "Число"
//@ЯПолучаюВПроцедуруПараметрТипа(Парам01)
Процедура ЯПолучаюВПроцедуруПараметрТипа(ИмяТипа) Экспорт
	ПереданныйТип = Контекст.ПереданныйТип;
	Ванесса.ПроверитьРавенство(ПереданныйТип,Тип(ИмяТипа),"Был предан параметр нужного типа.");
	
	ЗначениеПараметра     = Строка(Контекст.ПереданныйПараметр);
	ПредставлениеАпостроф = "__&Апостроф__";
	ПредставлениеКавычка  = "__&Кавычка__";
	
	
	ТекстСообщения = "ЗначениеПараметра=%1";
	ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ЗначениеПараметра);
	Сообщить(ТекстСообщения);
	
	Если Найти(ЗначениеПараметра,ПредставлениеАпостроф) > 0 Тогда
		ВызватьИсключение "Не верно обработаны параметры содержащие служебное предаставление апострофа";
	КонецЕсли;	 
	Если Найти(ЗначениеПараметра,ПредставлениеКавычка) > 0 Тогда
		ВызватьИсключение "Не верно обработаны параметры содержащие служебное предаставление кавычки";
	КонецЕсли;	 
	
	Если Найти(ЗначениеПараметра,"строка должна содержать слеш апостроф") = 0 Тогда
		Если Найти(ЗначениеПараметра,"\'") > 0 Тогда
			ВызватьИсключение "Не верно обработаны параметры содержащие экранированный апостроф";
		КонецЕсли;	 
	Иначе	
		Если Найти(ЗначениеПараметра,"\'") = 0 Тогда
			ВызватьИсключение "Не верно обработаны параметры содержащие. Должна быть строка слеш апостроф.";
		КонецЕсли;	 
	КонецЕсли;	 
	
	Если Найти(ЗначениеПараметра,"строка должна содержать слеш кавычка") = 0 Тогда
		Если Найти(ЗначениеПараметра,"\""") > 0 Тогда
			ВызватьИсключение "Не верно обработаны параметры содержащие экранированную кавычку";
		КонецЕсли;	 
	Иначе	
		Если Найти(ЗначениеПараметра,"\""") = 0 Тогда
			ВызватьИсключение "Не верно обработаны параметры содержащие. Должна быть строка слеш кавычка.";
		КонецЕсли;	 
	КонецЕсли;	 
	
	Если Найти(ЗначениеПараметра,"\\") > 0 Тогда
		Если ЗначениеПараметра = "\\Server\Каталог" Тогда
			//это проверка на экранирование двойных слешей в начале строки
		Иначе	
			ВызватьИсключение "Не верно обработаны параметры содержащие двойной слеш";
		КонецЕсли;	 
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Тогда И этот параметр является пустой датой
//@ИЭтотПараметрЯвляетсяПустойДатой()
Процедура ИЭтотПараметрЯвляетсяПустойДатой() Экспорт
	Ванесса.ПроверитьРавенство(Контекст.ПереданныйПараметр,'00010101',"Должная быть пустая дата");
КонецПроцедуры

&НаКлиенте
//И это значение в виде строки равно "0.1"
//@ЭтоЗначениеВВидеСтрокиРавно()
Процедура ЭтоЗначениеВВидеСтрокиРавно(Стр) Экспорт
	//Сообщить("" + Контекст.ПереданныйПараметр);
	Если Строка(Контекст.ПереданныйПараметр) <> Строка(Стр) Тогда
		ТекстСообщения = "Строка(Контекст.ПереданныйПараметр)=%1, а ожидали %2";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Строка(Контекст.ПереданныйПараметр));
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",Стр);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры
