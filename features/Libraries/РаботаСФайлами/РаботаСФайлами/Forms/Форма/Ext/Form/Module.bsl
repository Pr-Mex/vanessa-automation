﻿///////////////////////////////////////////////////
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
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯОчищаюКаталог(Парам01)",
		"ЯОчищаюКаталог",
		"И я очищаю каталог ""ИмяКаталога""",
		"Очищает указанный каталог.",
		"Файлы.Удаление файлов.Очистка каталога");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯСоздаюКаталог(Парам01)",
		"ЯСоздаюКаталог",
		"И я создаю каталог ""ИмяКаталога""",
		"Создает каталог с указанным именем, если его нет, а также все его подкаталоги.",
		"Файлы.Создание каталога");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯСоздаюФайл(Парам01,ТабПарам)",
		"ЯСоздаюФайл",
		"И я создаю файл ""ИмяФайла""
		|	|'Строка1'|
		|	|'Строка2'|",
		"Создает файл с указанным именем и содержимым.",
		"Файлы.Создание файла");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ФайлНеСодержитСтроки(Парам01,ТабПарам)",
		"ФайлНеСодержитСтроки",
		"И файл ""ИмяФайла"" не содержит строки
		|" + Символы.Таб + "|""ПодСтрока1""|
		|" + Символы.Таб + "|""ПодСтрока2""|",
		"Проверяет, что файле нет указанных строк/подстрок.",
		"Файлы.Проверка содержимого файла");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ФайлСодержитСтроки(Парам01,ТабПарам)",
		"ФайлСодержитСтроки",
		"И файл ""ИмяФайла"" содержит строки
		|" + Символы.Таб + "|""ПодСтрока1""|
		|" + Символы.Таб + "|""ПодСтрока2""|",
		"Проверяет, что файле есть указанные строки/подстроки.",
		"Файлы.Проверка содержимого файла");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ФайлСодержитСтрокиТогда(Парам01,ТабПарам)",
		"ФайлСодержитСтрокиТогда",
		"Если файл ""ИмяФайла"" содержит строки тогда
		|" + Символы.Таб + "|""ПодСтрока1""|
		|" + Символы.Таб + "|""ПодСтрока2""|",
		"Условие. Проверяет, что файле есть указанные строки/подстроки.",
		"Файлы.Проверка содержимого файла",
		"Условие");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ФайлСуществует(Парам01)",
		"ФайлСуществует",
		"И Файл ""ИмяФайла"" существует",
		"Проверяет существование файла.",
		"Файлы.Проверка существования файла");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ФайлаНеСуществует(Парам01)",
		"ФайлаНеСуществует",
		"И Файла ""ИмяФайла"" не существует",
		"Проверяет отсутствие файла.",
		"Файлы.Проверка отсутствия файла");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ФайлСуществуетТогда(Парам01)",
		"ФайлСуществуетТогда",
		"Если файл ""ИмяФайла"" существует тогда",
		"Условие. Проверяет существование файла.",
		"Файлы.Проверка существования файла",
		"Условие");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯУдаляюФайл(Парам01)",
		"ЯУдаляюФайл",
		"Тогда я удаляю файл ""ИмяФайла""",
		"Удаляет файл.",
		"Файлы.Удаление файлов.Удаление файла");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯКопируюФайл(Парам01,Парам02)",
		"ЯКопируюФайл",
		"Тогда я копирую файл ""ИмяФайлаИсточник"" ""ИмяФайлаПриемник""",
		"Копирует файл.",
		"Файлы.Копирование файла");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯПеремещаюФайл(Парам01,Парам02)",
		"ЯПеремещаюФайл",
		"Тогда я перемещаю файл ""ИмяФайлаИсточник"" ""ИмяФайлаПриемник""",
		"Перемещает файл.",
		"Файлы.Перемещение файла");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"JsonФайлСодержитЗначенияВУзле(Парам01,Парам02,ТабПарам)",
		"JsonФайлСодержитЗначенияВУзле",
		"И json файл ""ИмяФайла"" содержит значения в узле ""ИмяУзла"".",
		"",
		"");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯЧитаюJsonФайлВПеременную(Парам01,Парам02)",
		"ЯЧитаюJsonФайлВПеременную",
		"И я читаю json файл ""ИмяФайла"" в переменную ""ИмяПеременной""",
		"Читает содержимое json файла в переменную.",
		"Файлы.Чтение JSON");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"КоличествоФайловВКаталогеЯЗапоминаюКак(Парам01,Парам02)",
		"КоличествоФайловВКаталогеЯЗапоминаюКак",
		"Затем количество файлов в каталоге ""ИмяКаталога"" я запоминаю как ""КоличествоФайлов""",
		"Получает количество файлов в каталоге и сохраняет в переменную.",
		"Файлы.Запомнить количество файлов");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯСохраняюСкриншот(Парам01)",
		"ЯСохраняюСкриншот",
		"И я сохраняю скриншот ""ПутьКФайлу""",
		"Снимает скриншот с экрана и сохраняет по указнному пути. В параметре ""ПутьКФайлу"" нужно указать полный путь к файлу будущего скриншота с расширением. Скриншот будет сниматься согласно заданных настроек снятия скриншотов.",
		"Прочее.Скриншоты");	
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯЖдуСуществованияФайлаВТечениеСекунд(Парам01,Парам02)",
		"ЯЖдуСуществованияФайлаВТечениеСекунд",
		"И я жду существования файла ""ИмяФайла"" в течение 20 секунд",
		"Ждёт появления файла в течение указанного числа секунд. В имени файла допустимо использовать символы *.",
		"Файлы.Ожидание существования файла");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯЗаменяюСтрокуВФайле(Парам01,ТабПарам)",
		"ЯЗаменяюСтрокуВФайле",
		"И я заменяю строку в файле ""ИмяФайла""
		|	|'ЧтоЗаменяем'|'НаЧтоЗаменяем'|",
		"Заменяет в файле строки",
		"Файлы.Изменение файла");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ФайлРавенФайлу(Парам01,Парам02)",
		"ФайлРавенФайлу",
		"И файл ""ИмяФайла1"" равен файлу ""ИмяФайла2""",
		"Проверяет равенство файлов",
		"Файлы.Сравнение файлов");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ФайлРавенФайлуПоШаблону(Парам01,Парам02)",
		"ФайлРавенФайлуПоШаблону",
		"И файл ""ИмяФайла1"" равен файлу ""ИмяФайла2"" по шаблону",
		"Проверяет равенство файлов. Символ * в файле будет интерпретироваться как произвольный набор символов.",
		"Файлы.Сравнение файлов");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯЖдуПоявленияФайлаВТечениеСекунд(Парам01,Парам02)",
		"ЯЖдуПоявленияФайлаВТечениеСекунд",
		"И я жду появления файла 'ИмяФайла' в течение 10 секунд",
		"Ожидает появления файла в течение указанного числа секунд.",
		"Файлы.Ожидание появления файла");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯПолучаюДанныеФайлаВКаталоге(Парам01,Парам02)",
		"ЯПолучаюДанныеФайлаВКаталоге",
		"И я получаю данные файла ""ИмяФайла"" в каталоге 'ИмяКаталога'",
		"Ищет файл по указанной маске в каталоге. Поиск в подкаталогах производиться не будет. Если будет найдено ни одного или больше одного файла будет вызвано исключение. Создаёт переменные по данным файла: _Имя, _ПолноеИмя, _ИмяБезРасширения, _Путь, _Расширение.",
		"Файлы.Поиск файла");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯПолучаюДанныеФайлаВКаталогеИПодкаталогах(Парам01,Парам02)",
		"ЯПолучаюДанныеФайлаВКаталогеИПодкаталогах",
		"И я получаю данные файла ""ИмяФайла"" в каталоге 'ИмяКаталога' и подкаталогах",
		"Ищет файл по указанной маске в каталоге и его подкаталогах. Если будет найдено ни одного или больше одного файла будет вызвано исключение. Создаёт переменные по данным файла: _Имя, _ПолноеИмя, _ИмяБезРасширения, _Путь, _Расширение.",
		"Файлы.Поиск файла");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯКопируюКаталогФайлов(Парам01,Парам02)",
		"ЯКопируюКаталогФайлов","Тогда я копирую каталог файлов ""ИмяКаталогаИсточник"" ""ИмяКаталогаПриемник""",
		"Копирует каталог файлов.",
		"Файлы.Копирование каталога файлов");
	
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
// Функция выполняется перед началом каждого сценария
Функция ПередНачаломСценария() Экспорт
	
КонецФункции

&НаКлиенте
// Функция выполняется перед окончанием каждого сценария
Функция ПередОкончаниемСценария() Экспорт
	
КонецФункции


///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//И я очищаю каталог "ИмяКаталога"
//@ЯОчищаюКаталог(Парам01)
Функция ЯОчищаюКаталог(Знач ИмяКаталога) Экспорт
	
	//ИмяКаталога = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяКаталога);
	
	ПроверитьКаталогСуществует(ИмяКаталога);
	
	Ванесса.ОчиститьСодержимоеКаталога(ИмяКаталога);
	
КонецФункции

&НаКлиенте
//И я создаю каталог "ИмяКаталога"
//@ЯСоздаюКаталог(Парам01)
Функция ЯСоздаюКаталог(Знач ИмяКаталога) Экспорт
	
	//ИмяКаталога = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяКаталога);
	
	Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяКаталога) Тогда
		Возврат Неопределено;
	КонецЕсли;
	
	Массив = Новый Массив;
	Массив.Добавить(ИмяКаталога);
	
	Файл = Новый Файл(ИмяКаталога);
	ТекРодитель = Файл.Путь;
	Пока Истина Цикл
		Если Не ЗначениеЗаполнено(ТекРодитель) Тогда
			Прервать;
		КонецЕсли;
		
		Массив.Добавить(ТекРодитель);
		
		Файл = Новый Файл(ТекРодитель);
		
		Если НРег(ТекРодитель) = НРег(Файл.Путь) Тогда
			Прервать;
		КонецЕсли;
		
		ТекРодитель = Файл.Путь;
	КонецЦикла;
	
	Для Индекс = 0 По Массив.Количество() - 1 Цикл
		ТекРодитель = Массив[Массив.Количество() - 1 - Индекс];
		Если Не Ванесса.ФайлСуществуетКомандаСистемы(ТекРодитель) Тогда
			Ванесса.СоздатьКаталогКомандаСистемы(ТекРодитель);
		КонецЕсли;
	КонецЦикла;
	
	Ванесса.СоздатьКаталогКомандаСистемы(ИмяКаталога);
	
КонецФункции

&НаКлиенте
//И я создаю файл "ИмяФайла"
//@ЯСоздаюФайл(Парам01,ТабПарам)
Функция ЯСоздаюФайл(Знач ИмяФайла, ТабПарам) Экспорт
	
	Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайла) Тогда
		Ванесса.УдалитьФайлыКомандаСистемы(ИмяФайла);
	КонецЕсли;
	
	Если ТипЗнч(ТабПарам) = Тип("Строка") Тогда
		Стр = ТабПарам;
	Иначе
		Массив = Новый Массив;
		Для Каждого СтрокаТабПарам Из ТабПарам Цикл
			Массив.Добавить(СтрокаТабПарам.Кол1);
		КонецЦикла;	 
		
		Стр = Ванесса._СтрСоединить(Массив, Символы.ПС);
	КонецЕсли;	 
	
	ЗТ = Новый ЗаписьТекста(ИмяФайла,"UTF-8",,Истина); 
	ЗТ.Записать(Стр); 
	ЗТ.Закрыть();
	
КонецФункции

&НаКлиенте
//И файл "ИмяФайла" не содержит строки
//@ФайлНеСодержитСтроки(Парам01,ТабПарам)
Функция ФайлНеСодержитСтроки(Знач ИмяФайла, ТабПарам) Экспорт
	
	ЧтениеТекста = Новый ЧтениеТекста;
	ЧтениеТекста.Открыть(ИмяФайла, "UTF-8");
	
	Ошибки = Новый Массив;
	Пока Истина Цикл
		Строки = ЧтениеТекста.ПрочитатьСтроку();
		Если Строки = Неопределено Тогда
			Прервать;
		КонецЕсли;
		
		Строки = НРег(Строки);
		
		Для Каждого СтрокаТабПарам Из ТабПарам Цикл
			ИскомаяПодстрока = НРег(СтрокаТабПарам.Кол1);
			Если Найти(Строки, ИскомаяПодстрока) > 0 Тогда
				
				Если Ошибки.Найти(СтрокаТабПарам.Кол1) = Неопределено Тогда
					Ошибки.Добавить(СтрокаТабПарам.Кол1);
				КонецЕсли;
			КонецЕсли;
		КонецЦикла;
	КонецЦикла;
	ЧтениеТекста.Закрыть();
	
	Если Ошибки.Количество() > 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю(
			"В файле <%1> нашли строки, а ожидали, что их нет:"
		);
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайла);
		
		СтрокаОшибки = "";
		Для Каждого Строки Из Ошибки Цикл
			СтрокаОшибки = СтрокаОшибки + Символы.ПС + Строки;
		КонецЦикла;
		
		ПрикрепитьФайлКШагу(ИмяФайла);
		
		ВызватьИсключение ТекстСообщения + СтрокаОшибки;
	КонецЕсли;
	
КонецФункции

&НаКлиенте
Функция ПрикрепитьФайлКШагу(ИмяФайла)
	
	Если НЕ Ванесса.ЗапрещеныСинхронныеВызовы Тогда
		Файл = Новый Файл(ИмяФайла);
		Размер = Файл.Размер();
		Если Размер < 10000000 Тогда
			Ванесса.ДобавитьФайлКШагу(ИмяФайла, СтрЗаменить(Файл.Расширение, ".", ""));
		КонецЕсли;	 
	КонецЕсли;	 
	
КонецФункции 

&НаКлиенте
//И файл "ИмяФайла" содержит строки
//@ФайлСодержитСтроки(Парам01,ТабПарам)
Функция ФайлСодержитСтроки(Знач ИмяФайла, ТабПарам, ЭтоПроверкаУсловия = Ложь) Экспорт
	
	СтрокаОшибки = "";
	БылаОшибка = Ложь;
	
	КоличествоПопыток = Ванесса.ЗначениеКоличествоПопытокВыполненияДействия();
	Для СчетчикПопыток = 1 По КоличествоПопыток Цикл
		БылаОшибка = Ложь;
		СтрокаОшибки = "";
		
		Попытка
			
			ЧтениеТекста = Новый ЧтениеТекста;
			ЧтениеТекста.Открыть(ИмяФайла, "UTF-8");
			ТекстФайла = НРег(ЧтениеТекста.Прочитать());
			ЧтениеТекста.Закрыть();
			
		Исключение
			СтрокаОшибки = ОписаниеОшибки();
			БылаОшибка = Истина;
			Если СчетчикПопыток < КоличествоПопыток Тогда
				Ванесса.sleep(1);
			КонецЕсли;	 
		КонецПопытки;
		
		Если НЕ БылаОшибка Тогда
			Прервать;
		КонецЕсли;	 
	КонецЦикла;
	
	Если БылаОшибка Тогда
		ВызватьИсключение СтрокаОшибки;
	КонецЕсли;	 
	
	СтрокиДляПоиска = Новый Массив;
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		ИскомаяПодстрока = НРег(СтрокаТабПарам.Кол1);
		СтрокиДляПоиска.Добавить(
			Новый Структура("Строка,Оригинал,Найдена", ИскомаяПодстрока, СтрокаТабПарам.Кол1, Ложь)
		);
	КонецЦикла;
	
	Для Каждого ДанныеДляПоиска Из СтрокиДляПоиска Цикл
		ИскомаяПодстрока = ДанныеДляПоиска.Строка;
		Если Найти(ТекстФайла, ИскомаяПодстрока) > 0 Тогда
			ДанныеДляПоиска.Найдена = Истина;
		КонецЕсли;
	КонецЦикла;
	
	Ошибки = Новый Массив;
	
	Для Каждого ДанныеДляПоиска Из СтрокиДляПоиска Цикл
		Если ДанныеДляПоиска.Найдена Тогда
			Продолжить;
		КонецЕсли;
		
		Ошибки.Добавить(ДанныеДляПоиска.Оригинал);
	КонецЦикла;
	
	Если Ошибки.Количество() > 0 Тогда
		Если ЭтоПроверкаУсловия Тогда
			Ванесса.УстановитьРезультатУсловия(Ложь);
		Иначе	
			ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю(
				"В файле <%1> не нашли строки, а ожидали, что они там есть:"
			);
			ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайла);
			
			СтрокаОшибки = "";
			Для Каждого Строка Из Ошибки Цикл
				СтрокаОшибки = СтрокаОшибки + Символы.ПС + Строка;
			КонецЦикла;
			
			ПрикрепитьФайлКШагу(ИмяФайла);
			
			ВызватьИсключение ТекстСообщения + СтрокаОшибки;
		КонецЕсли;
	Иначе
		Если ЭтоПроверкаУсловия Тогда
			Ванесса.УстановитьРезультатУсловия(Истина);
		КонецЕсли;	 
	КонецЕсли;
	
КонецФункции

&НаКлиенте
//Если файл "ИмяФайла" содержит строки тогда
//@ФайлСодержитСтрокиТогда(Парам01,ТабПарам)
Функция ФайлСодержитСтрокиТогда(Знач ИмяФайла, ТабПарам) Экспорт
	ФайлСодержитСтроки(ИмяФайла, ТабПарам, Истина);
КонецФункции

&НаКлиенте
//И Файл "ИмяФайла" существет
//@ФайлСуществует(Парам01)
Функция ФайлСуществует(Знач ИмяФайла) Экспорт
	
	//ИмяФайла = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайла);
	
	Если Не Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайла) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю(
			"Файл <%1> не найден."
		);
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайла);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;
	
КонецФункции

&НаКлиенте
//И Файла "ИмяФайла" не существет
//@ФайлаНеСуществует(Парам01)
Функция ФайлаНеСуществует(Знач ИмяФайла) Экспорт
	
	Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайла) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю(
			"Файл <%1> найден."
		);
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайла);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;
	
КонецФункции

&НаКлиенте
//Если Файл "ИмяФайла" существет тогда
//@ФайлСуществуетТогда(Парам01)
Функция ФайлСуществуетТогда(Знач ИмяФайла) Экспорт
	
	//ИмяФайла = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайла);
	
	Ванесса.УстановитьРезультатУсловия(Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайла));
	
КонецФункции

&НаКлиенте
//Тогда я удаляю файл "ИмяФайла"
//@ЯУдаляюФайл(Парам01)
Функция ЯУдаляюФайл(Знач ИмяФайла) Экспорт
	
	//ИмяФайла = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайла);
	
	Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайла) Тогда
		Ванесса.УдалитьФайлыКомандаСистемы(ИмяФайла);
	КонецЕсли;
	
КонецФункции

&НаКлиенте
//Тогда я копирую файл "ИмяФайлаИсточник" "ИмяФайлаПриемник"
//@ЯКопируюФайл(Парам01)
Функция ЯКопируюФайл(Знач ИмяФайлаИсточник, Знач ИмяФайлаПриемник) Экспорт
	
	//ИмяФайлаИсточник = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайлаИсточник);
	//ИмяФайлаПриемник = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайлаПриемник);
	
	Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайлаПриемник) Тогда
		Ванесса.УдалитьФайлыКомандаСистемы(ИмяФайлаПриемник);
	КонецЕсли;
	
	Ванесса.КопироватьФайлКомандаСистемы(ИмяФайлаИсточник, ИмяФайлаПриемник);
	
КонецФункции

&НаКлиенте
//Тогда я перемещаю файл "ИмяФайлаИсточник" "ИмяФайлаПриемник"
//@ЯПеремещаюФайл(Парам01)
Функция ЯПеремещаюФайл(Знач ИмяФайлаИсточник, Знач ИмяФайлаПриемник) Экспорт
	
	//ИмяФайлаИсточник = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайлаИсточник);
	//ИмяФайлаПриемник = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайлаПриемник);
	
	Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайлаПриемник) Тогда
		Ванесса.УдалитьФайлыКомандаСистемы(ИмяФайлаПриемник);
	КонецЕсли;
	
	Ванесса.ПереместитьФайлКомандаСистемы(ИмяФайлаИсточник, ИмяФайлаПриемник);
	
КонецФункции

&НаКлиенте
//И json файл "$НайденноеИмяФайлаАллюр$" содержит значения в узле "labels"
//@JsonФайлСодержитЗначенияВУзле(Парам01,Парам02,ТабПарам)
Функция JsonФайлСодержитЗначенияВУзле(Знач ИмяФайла, ИмяУзла, ТабПарам) Экспорт
	
	//ИмяФайла = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайла);
	
	ЧтениеJSON = Вычислить("Новый ЧтениеJSON()");
	ЧтениеJSON.ОткрытьФайл(ИмяФайла);
	ДанныеJSON = Вычислить("ПрочитатьJSON(ЧтениеJSON)");
	ЧтениеJSON.Закрыть();
	
	ДанныеУзла = ДанныеJSON[ИмяУзла];
	
	Для Каждого ОжидаемоеЗначение Из ТабПарам Цикл
		Нашли = Ложь;
		
		name = ОжидаемоеЗначение.Кол1;
		value = ОжидаемоеЗначение.Кол2;
		
		Для Каждого Элемент Из ДанныеУзла Цикл
			Если НРег(Элемент.name) = НРег(name) И НРег(Элемент.value) = НРег(value) Тогда
				Нашли = Истина;
				Прервать;
			КонецЕсли;
		КонецЦикла;
		
		Если Не Нашли Тогда
			ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю(
				"Не нашли значения: <%1>, <%2>."
			);
			ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", name);
			ТекстСообщения = СтрЗаменить(ТекстСообщения, "%2", value);
			ВызватьИсключение ТекстСообщения;
		КонецЕсли;
	КонецЦикла;
	
КонецФункции

&НаКлиенте
//Затем количество файлов в каталоге "ИмяКаталога" я запоминаю как "КоличествоФайлов"
//@КоличествоФайловВКаталогеЯЗапоминаюКак(Парам01,Парам02)
Функция КоличествоФайловВКаталогеЯЗапоминаюКак(ИмяКаталога, ИмяПеременной) Экспорт
	
	ПроверитьКаталогСуществует(ИмяКаталога);
	
	СписокКаталогов = Новый СписокЗначений;
	СписокФайлов    = Новый СписокЗначений;
	Ванесса.НайтиФайлыКомандаСистемы(ИмяКаталога,СписокКаталогов,СписокФайлов,Ложь);
	Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной, СписокФайлов.Количество());
	
КонецФункции


///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////


&НаКлиенте
Функция ПроверитьКаталогСуществует(ИмяКаталога)
	
	Если Не Ванесса.ФайлСуществуетКомандаСистемы(ИмяКаталога) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю(
			"Каталог <%1> не найден."
		);
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяКаталога);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;
	
КонецФункции


&НаКлиенте
//И я сохраняю скриншот "ПутьКФайлу"
//@ЯСохраняюСкриншот(Парам01)
Функция ЯСохраняюСкриншот(ИмяФайла) Экспорт
	Если ПустаяСтрока(ИмяФайла) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не указано имя файла.");
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;
	
	Если Найти(ИмяФайла,".") = 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не указано расширение файла.");
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;
	
	Файл = Новый Файл(ИмяФайла);
	Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(Файл.Путь) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Каталог <%1> не существует.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Файл.Путь);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;
	
	Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайла) Тогда
		Ванесса.УдалитьФайлыКомандаСистемы(ИмяФайла);
	КонецЕсли;
	
	Ванесса.ЗапретитьВыполнениеШагов();
	
	ПараметрыСкриншотов = Новый Структура;
	ПараметрыСкриншотов.Вставить("ИмяФайла",ИмяФайла);
	ПараметрыСкриншотов.Вставить("ИмяПроцедуры","ПродолжитьВыполнениеШаговОбработчикОжидания");
	Ванесса.СделатьСкриншот(ПараметрыСкриншотов);
	
	//Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайла) Тогда
	//	ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не найден файл <%1>");
	//	ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяФайла);
	//	ВызватьИсключение ТекстСообщения;
	//КонецЕсли;
	
КонецФункции

&НаКлиенте
Функция ОбработчикОжиданияЯЖдуСуществованияФайлаВТечениеСекунд()
	ИмяОбработчика = "ОбработчикОжиданияЯЖдуСуществованияФайлаВТечениеСекунд";
	
	Если НЕ Ванесса.ИдетВыполнениеСценариев() Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		Возврат Неопределено;
	КонецЕсли;
	
	ФайлСуществует = Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайлаОбработкаОжидания);
	
	Если ФайлСуществует Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		Ванесса.ПродолжитьВыполнениеШагов();
		Возврат Неопределено;
	Иначе
		Если Найти(ИмяФайлаОбработкаОжидания, "*") > 0 Тогда
			СписокКаталогов = Новый СписокЗначений;
			СписокФайлов    = Новый СписокЗначений;
			
			Стр = СтрЗаменить(ИмяФайлаОбработкаОжидания, "\", "/");
			МассивСтрок = Ванесса._СтрРазделить(Стр, "/");
			Если МассивСтрок.Количество() > 2 Тогда
				ИмяФайла = МассивСтрок[МассивСтрок.Количество() - 1];
				МассивСтрок.Удалить(МассивСтрок.Количество() - 1);
				Путь = Ванесса._СтрСоединить(МассивСтрок, "/");
				Если НЕ Ванесса.ЭтоLinux Тогда
					Путь = СтрЗаменить(Путь, "/", "\");
				КонецЕсли;
				
				Ванесса.НайтиФайлыКомандаСистемы(Путь, СписокКаталогов, СписокФайлов, Ложь, ИмяФайла);
				Если СписокФайлов.Количество() > 0 Тогда
					ОтключитьОбработчикОжидания(ИмяОбработчика);
					Ванесса.ПродолжитьВыполнениеШагов();
					Возврат Неопределено;
				КонецЕсли;	
			КонецЕсли;	
			
		КонецЕсли;	
	КонецЕсли;	 
	
	Если (ТекущаяДата() - ДатаНачалаОбработкиОжидания) > КоличествоСекундОбработкаОжидания Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Ожидали существования файла <%1> в течение <%2> секнуд.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяФайлаОбработкаОжидания);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",КоличествоСекундОбработкаОжидания);
		Ванесса.ПродолжитьВыполнениеШагов(Истина,ТекстСообщения);
		Возврат Неопределено;
	КонецЕсли;	 
КонецФункции


&НаКлиенте
//И я жду существования файла "ИмяФайла" в течение 20 секунд
//@ЯЖдуСуществованияФайлаВТечениеСекунд(Парам01,Парам02)
Функция ЯЖдуСуществованияФайлаВТечениеСекунд(ИмяФайла,КоличествоСекунд) Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();
	ДатаНачалаОбработкиОжидания       = ТекущаяДата();
	ИмяФайлаОбработкаОжидания         = ИмяФайла;
	КоличествоСекундОбработкаОжидания = Ванесса.ЗначениеТаймаутаДляАсинхронногоШага(КоличествоСекунд);
	ПодключитьОбработчикОжидания("ОбработчикОжиданияЯЖдуСуществованияФайлаВТечениеСекунд",1,Ложь);
КонецФункции

&НаКлиенте
//И я заменяю строку в файле "ИмяФайла"
//@ЯЗаменяюСтрокуВФайле(Парам01,ТабПарам)
Функция ЯЗаменяюСтрокуВФайле(ИмяФайла,ТабПарам) Экспорт
	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяФайла,"UTF-8");
	Стр = Текст.Прочитать();
	Текст.Закрыть();
	
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Стр = СтрЗаменить(Стр,СтрокаТабПарам.Кол1,СтрокаТабПарам.Кол2);
	КонецЦикла;	
	
	ЗТ = Новый ЗаписьТекста(ИмяФайла,,,Ложь); 
	ЗТ.Записать(Стр); 
	ЗТ.Закрыть();
	
КонецФункции

&НаКлиенте
//И я читаю json файл "ИмяФайла" в переменную "ИмяПеременной"
//@ЯЧитаюJsonФайлВПеременную(Парам01,Парам02)
Функция ЯЧитаюJsonФайлВПеременную(ИмяФайла, ИмяПеременной) Экспорт
	ЧтениеJSON = Вычислить("Новый ЧтениеJSON()");
	ЧтениеJSON.ОткрытьФайл(ИмяФайла);
	ДанныеJSON = Вычислить("ПрочитатьJSON(ЧтениеJSON)");
	ЧтениеJSON.Закрыть();
	
	Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной, ДанныеJSON);
КонецФункции

&НаКлиенте
//И файл "ИмяФайла1" равен файлу "ИмяФайла2"
//@ФайлРавенФайлу(Парам01,Парам02)
Функция ФайлРавенФайлу(ИмяФайла1, ИмяФайла2) Экспорт
	
	СравнитьФайлы(ИмяФайла1, ИмяФайла2, Ложь);
	
КонецФункции

&НаКлиенте
//И файл "ИмяФайла1" равен файлу "ИмяФайла2" по шаблону
//@ФайлРавенФайлуПоШаблону(Парам01,Парам02)
Функция ФайлРавенФайлуПоШаблону(ИмяФайла1, ИмяФайла2) Экспорт
	
	СравнитьФайлы(ИмяФайла1, ИмяФайла2, Истина);
	
КонецФункции

&НаКлиенте
Процедура СравнитьФайлы(ИмяФайла1, ИмяФайла2, ПоШаблону);
	
	Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайла1) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Файл <%1> не существует.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайла1);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайла2) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Файл <%1> не существует.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайла2);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяФайла1, "UTF-8");
	ТекстФайла1 = Текст.Прочитать();
	Текст.Закрыть();
	
	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяФайла2, "UTF-8");
	ТекстФайла2 = Текст.Прочитать();
	Текст.Закрыть();
	
	Если ПоШаблону Тогда
		Если Ванесса.СтрокаСоответствуетШаблону(ТекстФайла1, ТекстФайла2) ИЛИ Ванесса.СтрокаСоответствуетШаблону(ТекстФайла2, ТекстФайла1) Тогда
		Иначе	
			ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Файл <%1> не равен файлу <%2>.");
			ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайла1);
			ТекстСообщения = СтрЗаменить(ТекстСообщения, "%2", ИмяФайла2);
			ВызватьИсключение ТекстСообщения;
		КонецЕсли;	
	Иначе	
		Если ТекстФайла1 <> ТекстФайла2 Тогда
			ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Файл <%1> не равен файлу <%2>.");
			ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайла1);
			ТекстСообщения = СтрЗаменить(ТекстСообщения, "%2", ИмяФайла2);
			ВызватьИсключение ТекстСообщения;
		КонецЕсли;
	КонецЕсли;	
	
КонецПроцедуры

&НаКлиенте
//И я жду появления файла 'C:\Temp\CI\Файлы\Новый1.mxl' в течение 10 секунд
//@ЯЖдуПоявленияФайлаВТечениеСекунд(Парам01,Парам02)
Функция ЯЖдуПоявленияФайлаВТечениеСекунд(Парам01,Парам02) Экспорт
	ЯЖдуСуществованияФайлаВТечениеСекунд(Парам01,Парам02);
КонецФункции

&НаКлиенте
//И я получаю данные файла "ИмяФайла" в каталоге 'ИмяКаталога' и подкаталогах
//@ЯПолучаюДанныеФайлаВКаталогеИПодкаталогах(Парам01,Парам02)
Функция ЯПолучаюДанныеФайлаВКаталогеИПодкаталогах(ИмяФайла, ИмяКаталога, ИскатьВПодкаталогах = Истина) Экспорт
	
	СписокКаталогов = Новый СписокЗначений;
	СписокФайлов    = Новый СписокЗначений;
	Ванесса.НайтиФайлыКомандаСистемы(ИмяКаталога, СписокКаталогов, СписокФайлов, ИскатьВПодкаталогах, ИмяФайла);
	
	Если СписокФайлов.Количество() <> 1 Тогда
		ТекстСообщения = Ванесса.Локализовать("В каталоге <%1> найдено <%2> файлов <%3>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяКаталога);
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%2", СписокФайлов.Количество());
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%3", ИмяФайла);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Файл = СписокФайлов[0].Значение;
	
	Контекст.Вставить("_Имя",Файл.Имя);
	Контекст.Вставить("_ИмяБезРасширения",Файл.ИмяБезРасширения);
	Контекст.Вставить("_ПолноеИмя",Файл.ПолноеИмя);
	Контекст.Вставить("_Путь",Файл.Путь);
	Контекст.Вставить("_Расширение",Файл.Расширение);
	
КонецФункции


&НаКлиенте
//И я получаю данные файла "ИмяФайла" в каталоге 'ИмяКаталога'
//@ЯПолучаюДанныеФайлаВКаталоге(Парам01,Парам02)
Функция ЯПолучаюДанныеФайлаВКаталоге(ИмяФайла, ИмяКаталога) Экспорт
	
	ЯПолучаюДанныеФайлаВКаталогеИПодкаталогах(ИмяФайла, ИмяКаталога, Ложь);
	
КонецФункции

&НаКлиенте
Процедура КопироватьКаталогФайловРекурсивно(ИмяКаталогаИсточник, ИмяКаталогаПриемник);
	
	СписокКаталогов = Новый СписокЗначений;
	СписокФайлов    = Новый СписокЗначений;
	Ванесса.НайтиФайлыКомандаСистемы(ИмяКаталогаИсточник,СписокКаталогов,СписокФайлов,Ложь);
	
	Для Каждого Элем Из СписокФайлов Цикл
		Файл = Элем.Значение;
		ИмяФайлаПриемник = Ванесса.ДополнитьСлешВПуть(ИмяКаталогаПриемник) + Файл.Имя; 
		Ванесса.КопироватьФайлКомандаСистемы(Файл.ПолноеИмя, ИмяФайлаПриемник);
	КонецЦикла;
	
	Для Каждого Элем Из СписокКаталогов Цикл
		Каталог = Элем.Значение;
		КаталогПриемник = Ванесса.ДополнитьСлешВПуть(ИмяКаталогаПриемник) + Каталог.Имя;
		Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(КаталогПриемник) Тогда
			Ванесса.СоздатьКаталогКомандаСистемы(КаталогПриемник);
		КонецЕсли;	
		КопироватьКаталогФайловРекурсивно(Каталог.ПолноеИмя, КаталогПриемник)
	КонецЦикла;	
	
КонецПроцедуры

&НаКлиенте
//Тогда я копирую каталог файлов "ИмяКаталогаИсточник" "ИмяКаталогаПриемник"
//@ЯКопируюКаталогФайлов(Парам01,Парам02)
Функция ЯКопируюКаталогФайлов(ИмяКаталогаИсточник, ИмяКаталогаПриемник) Экспорт
	
	Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(ИмяКаталогаПриемник) Тогда
		Ванесса.СоздатьКаталогКомандаСистемы(ИмяКаталогаПриемник);
	КонецЕсли;	
	КопироватьКаталогФайловРекурсивно(ИмяКаталогаИсточник, ИмяКаталогаПриемник);
	
КонецФункции
