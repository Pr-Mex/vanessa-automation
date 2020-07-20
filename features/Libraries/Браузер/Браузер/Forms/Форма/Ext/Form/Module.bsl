﻿///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Automation
Перем Ванесса;

&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;

&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Automation.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;
	
	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯПоказываюПодсказкуEnjoyHintУЭлемента(Парам01,Парам02,ТабПарам)",
		"ЯПоказываюПодсказкуEnjoyHintУЭлемента",
		"И я показываю подсказку ""ТекстПодсказки"" EnjoyHint у элемента ""ИмяЭлемента""
		|		|'shape'|'rect'|
		|		|'timeout'|'5000'|",
		"Рисует фигуры в барузере. Параметры описаны тут: https://github.com/xbsoftware/enjoyhint/blob/master/README.md",
		"Прочее.Браузер");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯРисуюСтрелкуОтКВБраузере(Парам01,Парам02,ТабПарам)",
		"ЯРисуюСтрелкуОтКВБраузере",
		"И я рисую стрелку от ""ИмяЭлемента1"" к ""ИмяЭлемента2"" в браузере
		|		|'color'|'red'|
		|		|'size'|'3'|
		|		|'startSocket'|'up'|
		|		|'endSocket'|'down'|
		|		|'startSocketGravity'|' 160, -80'|
		|		|'endSocketGravity'|' 160, 80'|
		|		|'dropShadow'|'true'|
		|		|'middleLabel'|''|
		|		|'timeout'|'5000'|",
		"Рисует стрелку в барузере. В качестве параметров могут быть как имена элементов формы, так и выражения на js, например:
		|rect('Заполните поле ""Комментарий""', 5000) - текст на экране
		|border('Комментарий', 5000) - рамка вокруг элемента
		|Если имя элемента не указано, то он считается текущим элементом. Дополнительные возможности тут: https://github.com/anseki/leader-line",
		"Прочее.Браузер");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯРисуюРамкуВокругЭлементаВБраузере(Парам01,ТабПарам)",
		"ЯРисуюРамкуВокругЭлементаВБраузере",
		"И я рисую рамку вокруг элемента ""ИмяЭлемента"" в браузере
		|		|'color'|'red'|
		|		|'size'|'3'|
		|		|'timeout'|'5000'|",
		"Рисует рамку вокруг элемента в браузере. Элемент формы ищется по имени.",
		"Прочее.Браузер");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯРисуюРамкуВокругНесколькихЭлементовВБраузере(ТабПарам)",
		"ЯРисуюРамкуВокругНесколькихЭлементовВБраузере",
		"И я рисую рамку вокруг нескольких элементов в браузере
		|		|'elem'|'ИмяЭлемента1'|
		|		|'elem'|'ИмяЭлемента2'|
		|		|'color'|'red'|
		|		|'size'|'3'|
		|		|'timeout'|'5000'|",
		"Рисует рамку вокруг нескольких элементов в браузере. Элементы формы ищутся по имени.",
		"Прочее.Браузер");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯРисуюРамкуВокругЭлементаПанелиРазделовВБраузере(Парам01,ТабПарам)",
		"ЯРисуюРамкуВокругЭлементаПанелиРазделовВБраузере",
		"И я рисую рамку вокруг элемента панели разделов ""ИмяЭлемента"" в браузере
		|		|'color'|'red'|
		|		|'size'|'3'|
		|		|'timeout'|'5000'|",
		"Рисует рамку вокруг элемента в браузере. Элемент формы ищется по имени.",
		"Прочее.Браузер");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯПоказываюТекстНадПолемВБраузере(Парам01,Парам02,ТабПарам)",
		"ЯПоказываюТекстНадПолемВБраузере",
		"И я показываю текст ""НужныйТекст"" над полем ""ИмяПоля"" в браузере
		|		|'borderColor'|'red'|
		|		|'backgroundColor'|'white'|
		|		|'timeout'|'5000'|
		|		|'offsetup'|'80'|",
		"Рисует надо полем текст.",
		"Прочее.Браузер");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯПоказываюЗаставкуВБраузере(Парам01,ТабПарам)",
		"ЯПоказываюЗаставкуВБраузере",
		"И я показываю заставку ""НужныйТекст"" в браузере
		|		|'backgroundColor'|'blue'|
		|		|'color'|'white'|
		|		|'count'|10|
		|		|'effect'|1|
		|		|'fontSize'|'200%'|
		|		|'duration'|2000|
		|		|'timeout'|'5000'|",
		"Показывает заставку с указанной надписью, сопровождая показ одним из предопределённых видео эффектов.",
		"Прочее.Браузер");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯАктивизируюТекущееОкноБраузера()",
		"ЯАктивизируюТекущееОкноБраузера",
		"И Я активизирую текущее окно браузера",
		"Активизируется текущее окно браузера",
		"Прочее.Браузер");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯВыполняюКалибровкуМышиВБраузере()",
		"ЯВыполняюКалибровкуМышиВБраузере",
		"И я выполняю калибровку мыши в браузере",
		"Уточняет координаты окна браузера",
		"Прочее.Браузер");
	
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
Процедура ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам)
	Если ТабПарам = Неопределено Тогда
		Возврат;
	КонецЕсли;
	
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		ДанныеПараметров.Вставить(СтрокаТабПарам.Кол1, СтрокаТабПарам.Кол2);
	КонецЦикла;
КонецПроцедуры

&НаКлиенте
Функция ОбернутьВАпострофы(Стр)
	Если Прав(СокрП(Стр), 1) = ")" Тогда
		Возврат Стр;
	КонецЕсли;
	
	Возврат "'" + Стр + "'";
КонецФункции

&НаКлиенте
//И я показываю подсказку EnjoyHint у элемента "ИмяЭлемента"
//@ЯПоказываюПодсказкуEnjoyHintУЭлемента(Парам01,ТабПарам)
Функция ЯПоказываюПодсказкуEnjoyHintУЭлемента(Текст, ИмяЭлемента, ТабПарам = Неопределено) Экспорт
	
	shape = "rect";
	timeout = 5000;
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("shape", "rect");
	ДанныеПараметров.Вставить("timeout", 5000);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	ДанныеПараметров.Вставить("text", Текст);
	ДанныеПараметров.Вставить("name", ИмяЭлемента);
	
	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|let enjoyhint = new EnjoyHint();
		|enjoyhint.set([{
		|	selector: elem(p.name), 
		|	description: p.text, 
		|	showSkip: false, 
		|	shape: p.shape
		|}]);
		|enjoyhint.run(); 
		|$('.enjoyhint_close_btn').hide();
		|setTimeout(() => (enjoyhint.stop()), p.timeout);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции

&НаКлиенте
//И я рисую стрелку от "ИмяЭлемента1" к "ИмяЭлемента2" в браузере
//@ЯРисуюСтрелкуОтКВБраузере(Парам01,ТабПарам)
Функция ЯРисуюСтрелкуОтКВБраузере(Знач ИмяЭлемента1, Знач ИмяЭлемента2, ТабПарам = Неопределено) Экспорт
	
	color = "red";
	size = 3;
	timeout = 5000;
	startSocket = "up";
	endSocket = "down";
	startSocketGravity = "";
	endSocketGravity = "";
	dropShadow = "true";
	middleLabel = "";
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", color);
	ДанныеПараметров.Вставить("size", size);
	ДанныеПараметров.Вставить("timeout", timeout);
	ДанныеПараметров.Вставить("startSocket", startSocket);
	ДанныеПараметров.Вставить("endSocket", endSocket);
	ДанныеПараметров.Вставить("startSocketGravity", startSocketGravity);
	ДанныеПараметров.Вставить("endSocketGravity", endSocketGravity);
	ДанныеПараметров.Вставить("dropShadow", dropShadow);
	ДанныеПараметров.Вставить("middleLabel", middleLabel);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	ДанныеПараметров.Вставить("name1", ИмяЭлемента1);
	ДанныеПараметров.Вставить("name2", ИмяЭлемента2);
	
	startSocketGravity = ДанныеПараметров.Получить("startSocketGravity");
	Если ЗначениеЗаполнено(startSocketGravity) Тогда
		ДанныеПараметров.Вставить("startSocketGravity", Ванесса.РазложитьСтрокуВМассивПодстрокКлиент(startSocketGravity, ","));
	ИначеЕсли startSocketGravity <> Неопределено Тогда
		ДанныеПараметров.Удалить("startSocketGravity");
	КонецЕсли;
	
	endSocketGravity = ДанныеПараметров.Получить("endSocketGravity");
	Если ЗначениеЗаполнено(endSocketGravity) Тогда
		ДанныеПараметров.Вставить("endSocketGravity", Ванесса.РазложитьСтрокуВМассивПодстрокКлиент(endSocketGravity, ","));
	ИначеЕсли endSocketGravity <> Неопределено Тогда
		ДанныеПараметров.Удалить("endSocketGravity");
	КонецЕсли;
	
	Если ПустаяСтрока(ИмяЭлемента1) Тогда
		ИмяЭлемента1 = "selected()";
	КонецЕсли;
	
	Если ПустаяСтрока(ИмяЭлемента2) Тогда
		ИмяЭлемента2 = "selected()";
	КонецЕсли;
	
	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|arrow(
		|" + ?(ПустаяСтрока(ИмяЭлемента1), "selected()", "p.name1") + ", 
		|" + ?(ПустаяСтрока(ИмяЭлемента2), "selected()", "p.name2") + ", 
		|p.timeout, p).setOptions(p);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции

&НаКлиенте
//И я рисую рамку вокруг элемента "ИмяЭлемента" в браузере
//@ЯРисуюРамкуВокругЭлементаВБраузере(Парам01,ТабПарам)
Функция ЯРисуюРамкуВокругЭлементаВБраузере(ИмяЭлемента, ТабПарам = Неопределено) Экспорт
	
	color = "red";
	size = 3;
	timeout = 5000;
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", color);
	ДанныеПараметров.Вставить("size", size);
	ДанныеПараметров.Вставить("timeout", timeout);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	ДанныеПараметров.Вставить("name", ИмяЭлемента);
	
	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|border(p.name, p.timeout, p);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции

&НаКлиенте
//И я рисую рамку вокруг нескольких элементов в браузере
//@ЯРисуюРамкуВокругНесколькихЭлементовВБраузере(Парам01,ТабПарам)
Функция ЯРисуюРамкуВокругНесколькихЭлементовВБраузере(ТабПарам) Экспорт
	
	color = "red";
	size = 3;
	timeout = 5000;
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", color);
	ДанныеПараметров.Вставить("size", size);
	ДанныеПараметров.Вставить("timeout", timeout);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	
	МассивИменЭлементов = Новый Массив;
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Если Нрег(СтрокаТабПарам.Кол1) = "elem" Тогда
			МассивИменЭлементов.Добавить(СтрокаТабПарам.Кол2);
		КонецЕсли;
	КонецЦикла;
	ДанныеПараметров.Вставить("elem", МассивИменЭлементов);
	
	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|border(p.elem, p.timeout, p);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции

&НаКлиенте
//И я рисую рамку вокруг элемента панели разделов "ИмяЭлемента" в браузере
//@ЯРисуюРамкуВокругЭлементаПанелиРазделовВБраузере(Парам01,ТабПарам)
Функция ЯРисуюРамкуВокругЭлементаПанелиРазделовВБраузере(ИмяЭлемента, ТабПарам = Неопределено) Экспорт
	
	color = "red";
	size = 3;
	timeout = 5000;
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", color);
	ДанныеПараметров.Вставить("size", size);
	ДанныеПараметров.Вставить("timeout", timeout);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	ДанныеПараметров.Вставить("name", ИмяЭлемента);
	
	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|let r = theme(p.name).getBoundingClientRect();
		|let coordinates = {left: r.x - 5, top: r.y - 5, width: r.width + 5, height: r.height + 5};
		|border(coordinates, p.timeout, p);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции


&НаКлиенте
//И я показываю текст "НужныйТекст" над полем "ИмяПоля" в браузере
//@ЯПоказываюТекстНадПолемВБраузере(Парам01,ТабПарам)
Функция ЯПоказываюТекстНадПолемВБраузере(Текст, ИмяЭлемента, ТабПарам = Неопределено) Экспорт
	
	borderColor = "red";
	backgroundColor = "white";
	timeout = 5000;
	offsetup = 80;
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("borderColor", borderColor);
	ДанныеПараметров.Вставить("backgroundColor", backgroundColor);
	ДанныеПараметров.Вставить("timeout", timeout);
	ДанныеПараметров.Вставить("offsetup", offsetup);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	ДанныеПараметров.Вставить("name", ИмяЭлемента);
	ДанныеПараметров.Вставить("text", Текст);
	
	Скрипт = "
		|{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|let e = elem(p.name);
		|let r = e.getBoundingClientRect();
		|function rect(text, timeout, options) {
		|	let px = value => (typeof value == 'number' ? value + 'px' : value);
		|	let node = document.createElement('div');
		|	node.innerHTML = text;
		|	node.style.fontSize = '140%';
		|	node.style.position = 'fixed';
		|	node.style.zIndex = 999999;
		|	node.style.borderWidth = '0.2em';
		|	node.style.borderStyle = 'solid';
		|	node.style.borderColor = options.borderColor;
		|	node.style.boxShadow = '0 0 1em #333333';
		|	node.style.backgroundColor = options.backgroundColor;
		|	node.style.padding = '1em';
		|	node.style.borderRadius = '1em';
		|	window.top.document.body.appendChild(node);
		|	if (timeout) setTimeout(() => { if (node) node.remove() }, timeout);
		|	customDrawElements.push(node);
		|	return node;
		|};
		|let t = rect(p.text, p.timeout, p);
		|t.style.left = r.left + 'px';
		|t.style.top = (r.top - p.offsetup) + 'px';
		|}				
		|";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции

&НаКлиенте
//"И я показываю заставку ""НужныйТекст"" в браузере
Функция ЯПоказываюЗаставкуВБраузере(Текст, ТабПарам = Неопределено) Экспорт
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", "white");
	ДанныеПараметров.Вставить("backgroundColor", "blue");
	ДанныеПараметров.Вставить("effect", 1);
	ДанныеПараметров.Вставить("timeout", 3000);
	ДанныеПараметров.Вставить("delay", 2000);
	ДанныеПараметров.Вставить("count", 10);
	ДанныеПараметров.Вставить("fontSize", "200%");
	ДанныеПараметров.Вставить("text", Текст);
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	
	delay = ДанныеПараметров.Получить("delay");
	timeout = Число(ДанныеПараметров.Получить("timeout"));
	
	Если ТипЗнч(delay) = Тип("Строка") Тогда
		Попытка
			delay = Число(delay);
		Исключение
			delay = 2000;
		КонецПопытки;
	КонецЕсли;
	
	Если ТипЗнч(timeout) = Тип("Строка") Тогда
		Попытка
			timeout = Число(timeout);
		Исключение
			timeout = 3000;
		КонецПопытки;
	КонецЕсли;
	
	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|VanessaVisualEffect.show(p.text, p.timeout, p);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	Ванесса.ВнешняяКомпонентаДляСкриншотов.Пауза(delay * 2 + timeout + 2000);
	
КонецФункции

&НаКлиенте
//И Я активизирую текущее окно браузера
//@ЯАктивизируюТекущееОкноБраузера()
Процедура ЯАктивизируюТекущееОкноБраузера() Экспорт
	Ванесса.АктивизироватьОкноБраузера();
КонецПроцедуры

&НаКлиенте
//И я выполняю калибровку мыши в браузере
//@ЯВыполняюКалибровкуМышиВБраузере()
Функция ЯВыполняюКалибровкуМышиВБраузере() Экспорт
	
	Скрипт = "{
		|window.VanessaMouse = {
		|  empty: true,
		|  x: 0, y: 0, handler: (e) => {
		|    VanessaMouse.empty = false;
		|    VanessaMouse.x = e.pageX;
		|    VanessaMouse.y = e.pageY;
		|  },
		|  get: () => {
		|    let result = JSON.stringify({
		|      empty: VanessaMouse.empty,
		|      x: VanessaMouse.x,
		|      y: VanessaMouse.y,
		|    });
		|    VanessaMouse.empty = true;
		|    VanessaMouse.x = 0;
		|    VanessaMouse.y = 0;
		|    return result;
		|  }};
		|document.addEventListener('mousemove', window.VanessaMouse.handler, false);
		|document.addEventListener('mouseenter', window.VanessaMouse.handler, false);
		|JSON.stringify({
		|    devicePixelRatio: window.devicePixelRatio,
		|    screenLeft: window.screenLeft,
		|    screenTop: window.screenTop,
		|    outerWidth: window.outerWidth,
		|    outerHeight: window.outerHeight,
		|    innerWidth: window.innerWidth,
		|    innerHeight: window.innerHeight,
		|});
		|}";
	
	КоэфОтступа = 0.3;
	КоординатыОкна = Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	СтрокаКоординаты = КоординатыОкна.result.result.value;
	КоординатыОкна = Ванесса.ПрочитатьОбъектJSON(СтрокаКоординаты);
	
	Ванесса.АктивизироватьОкноБраузера();

	НачальнаяПозицияТекст = Ванесса.ВнешняяКомпонентаДляСкриншотов.ПолучитьПозициюКурсора();
	НачальнаяПозиция = Ванесса.ПрочитатьОбъектJSON(НачальнаяПозицияТекст);

	X1 = Окр((КоординатыОкна.screenLeft + КоординатыОкна.outerWidth * КоэфОтступа) * КоординатыОкна.devicePixelRatio);
	Y1 = Окр((КоординатыОкна.screenLeft + КоординатыОкна.outerHeight * КоэфОтступа) * КоординатыОкна.devicePixelRatio);
	Ванесса.ВнешняяКомпонентаДляСкриншотов.УстановитьПозициюКурсора(X1, Y1);
	Ванесса.ВнешняяКомпонентаДляСкриншотов.Пауза(100);
	
	Скрипт = "VanessaMouse.get()";
	КоординатыТочки1 = Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	СтрокаКоординаты = КоординатыТочки1.result.result.value;
	КоординатыТочки1 = Ванесса.ПрочитатьОбъектJSON(СтрокаКоординаты);
	XX1 = КоординатыТочки1.x;
	YY1 = КоординатыТочки1.y;

	КоэфОтступа = 0.8;
	X2 = Окр((КоординатыОкна.screenLeft + КоординатыОкна.outerWidth * КоэфОтступа) * КоординатыОкна.devicePixelRatio);
	Y2 = Окр((КоординатыОкна.screenLeft + КоординатыОкна.outerHeight * КоэфОтступа) * КоординатыОкна.devicePixelRatio);
	Ванесса.ВнешняяКомпонентаДляСкриншотов.УстановитьПозициюКурсора(X2, Y2);
	Ванесса.ВнешняяКомпонентаДляСкриншотов.Пауза(100);
	
	Скрипт = "VanessaMouse.get()";
	КоординатыТочки2 = Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	СтрокаКоординаты = КоординатыТочки2.result.result.value;
	КоординатыТочки2 = Ванесса.ПрочитатьОбъектJSON(СтрокаКоординаты);
	XX2 = КоординатыТочки2.x;
	YY2 = КоординатыТочки2.y;
	
	Скрипт = "{
		|document.removeEventListener('mousemove', window.VanessaMouse.handler);
		|document.removeEventListener('mouseenter', window.VanessaMouse.handler);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);

	Ванесса.ВнешняяКомпонентаДляСкриншотов.УстановитьПозициюКурсора(НачальнаяПозиция.X, НачальнаяПозиция.Y);
	
	Если КоординатыТочки1.empty ИЛИ КоординатыТочки2.empty Тогда
		ВызватьИсключение Ванесса.Локализовать("Не удалось выполнить калибровку мыши в браузере.");
	КонецЕсли;	 

	Ванесса.КоординатыОкнаБраузера = Новый Структура("Left,Top,Right,Bottom,Width,Height,devicePixelRatio");
	Ванесса.КоординатыОкнаБраузера.Zoom = КоординатыОкна.devicePixelRatio;
	Ванесса.КоординатыОкнаБраузера.Left = Окр(X2 - (X2 - X1) / (XX2 - XX1) * (XX2 - 0));
	Ванесса.КоординатыОкнаБраузера.Top = Окр(Y2 - (Y2 - Y1) / (YY2 - YY1) * (YY2 - 0));
	Ванесса.КоординатыОкнаБраузера.Right = Окр(X1 + (X2 - X1) / (XX2 - XX1) * (КоординатыОкна.innerWidth - XX1));
	Ванесса.КоординатыОкнаБраузера.Bottom = Окр(Y1 + (Y2 - Y1) / (YY2 - YY1) * (КоординатыОкна.innerHeight - YY1));
	Ванесса.КоординатыОкнаБраузера.Width = Ванесса.КоординатыОкнаБраузера.Right - Ванесса.КоординатыОкнаБраузера.Left;
	Ванесса.КоординатыОкнаБраузера.Height = Ванесса.КоординатыОкнаБраузера.Bottom - Ванесса.КоординатыОкнаБраузера.Top;

КонецФункции
