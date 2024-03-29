﻿
#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	МакетЗвука = ПолучитьОбщийМакет("Web_ЗвуковойФайл");
	АдресМакетаЗвука = ПоместитьВоВременноеХранилище(МакетЗвука, УникальныйИдентификатор);
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	#Если Не ВебКлиент Тогда
		Отказ = Истина;
	#КонецЕсли
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиКомандФормы

&НаКлиенте
Процедура СообщениеВнешнемуСайту(Команда)
	
	Если ОкноВнешнегоСайтаДоступно Тогда
		
		ДанныеСообщения = Новый Структура;
		ДанныеСообщения.Вставить("command", "ShowAlert");
		ДанныеСообщения.Вставить("Parameter", "Браузер привет тебе от 1С Вэб Клиента!");
		ТекстJSON = РаботаСДанными.ПолучитьОписаниеJSON(ДанныеСообщения);
		
		СообщениеСайту = Новый СообщениеВнешнемуСайту(ТекстJSON);
		ОкноВнешнегоСайта.ОтправитьСообщение(СообщениеСайту);
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ВоспроизвестиЗвук(Команда)
	
	Если ОкноВнешнегоСайтаДоступно Тогда
		
		ДвоичныеДанныеЗвука = ПолучитьИзВременногоХранилища(АдресМакетаЗвука);
		ТекстДвоичныхДанных = Base64Строка(ДвоичныеДанныеЗвука);
		
		ШаблонDataURL = "data:audio/mp3;base64,%1";
		DataURL = СтрШаблон(ШаблонDataURL, ТекстДвоичныхДанных);
		
		ПараметрыСообщения = Новый Структура;
		ПараметрыСообщения.Вставить("command", "PlaySound");
		ПараметрыСообщения.Вставить("Parameter", DataURL);
		
		РаботаСБраузером.СообщениеВнешнемуСайту(ПараметрыСообщения);
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ОстановитьДождь(Команда)
	
	Если ОкноВнешнегоСайтаДоступно Тогда
		
		ПараметрыСообщения = Новый Структура;
		ПараметрыСообщения.Вставить("command", "PlaySound");
		ПараметрыСообщения.Вставить("Parameter", "");
		
		РаботаСБраузером.СообщениеВнешнемуСайту(ПараметрыСообщения);
		
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаКлиенте
Процедура ПоказатьПодсказку(Команда)
	ОтветНаВопрос = "";
	РаботаСБраузером.ПриПолученииСообщенияОтВнешнегоСайта(Новый Структура("Данные", "StartDemo"), Неопределено);
КонецПроцедуры

&НаКлиенте
Процедура ОтветНаВопросПриИзменении(Элемент)
	
	МассивШагов = Новый Массив;
	ПараметрыСообщения = РаботаСБраузером.НовыйПараметрыEnjoyHint();
	
	Если ОтветНаВопрос = "4" Тогда
		
		ПараметрыСообщения = РаботаСБраузером.НовыйПараметрыEnjoyHint();
		ПараметрыСообщения.title = "ПоказатьПодсказку";
		ПараметрыСообщения.description = "Поздравляю, Вы прошли демонстрацию! Для повтора демонстрации в любой момент нажмите на эту кнопку.";
		ПараметрыСообщения.showSkip = Истина;
		
	Иначе
		ПараметрыСообщения.title = "ОтветНаВопрос";
		ПараметрыСообщения.showPrev = Истина;
		ПараметрыСообщения.description = "Не верно! Введите ответ на вопрос: 2*2 = ?";
	КонецЕсли;
	
	МассивШагов.Добавить(ПараметрыСообщения);
	
	РаботаСБраузером.СообщениеВнешнемуСайту(МассивШагов);
	
КонецПроцедуры

#КонецОбласти
