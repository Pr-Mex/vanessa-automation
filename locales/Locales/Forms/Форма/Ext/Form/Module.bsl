﻿
&НаСервере
Функция ПолучитьМакетОбработкиСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета); 
КонецФункции	 

&НаКлиенте
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетОбработкиСервер(ИмяМакета); 
КонецФункции	 