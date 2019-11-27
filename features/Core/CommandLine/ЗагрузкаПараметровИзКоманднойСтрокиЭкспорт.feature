# language: ru

@IgnoreOnCIMainBuild
@ExportScenarios


Функционал: Для проверки загрузки параметров из командной строки



	
Сценарий: Я запускаю клиент тестирования с эмуляцией запуска из командной строки "ИмяJson"
	И я запоминаю строку "ИмяJson" в переменную "ИмяПеременнойJson"

	И Я запоминаю значение выражения 'ПолучитьСостояниеVanessaAutomation().ТекущаяФича.Каталог + "files\\\\" + $ИмяПеременнойJson$ + ".json"' в переменную "TestJson"
	И Файл "$TestJson$" существует
	
	
	Если 'Ванесса.Объект.ВерсияПоставки = "standart"' Тогда
		И Я запоминаю значение выражения '"vanessa-automation.epf"' в переменную "ИмяEpf"	
	Иначе	
		И Я запоминаю значение выражения '"vanessa-automation-single.epf"' в переменную "ИмяEpf"	
	
	
	И Я запоминаю значение выражения '"""" + КаталогПрограммы() + "1cv8c"" "' в переменную "КаталогПрограммы"	
	И Я запоминаю значение выражения 'СтрЗаменить(СтрокаСоединенияИнформационнойБазы(),"""","""""")' в переменную "СтрокаСоединенияБазы"	
	И Я запоминаю значение выражения '"/IBConnectionString """ + $СтрокаСоединенияБазы$ + """"' в переменную "КомСтрокаСоединенияБазы"	
	
	И Я запоминаю значение выражения '" /TESTCLIENT -TPort 48111 /Execute " + Ванесса.Объект.КаталогИнструментов + "/" + $ИмяEpf$ + " /CStartFeaturePlayer;VBParams=" + $TestJson$' в переменную "ДопПараметр"
	
	И Я запоминаю значение выражения '"Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(Контекст.КаталогПрограммы + Контекст.КомСтрокаСоединенияБазы + Контекст.ДопПараметр,0)"' в переменную "КомандаЗапускаVA3"
	 
	И я выполняю код встроенного языка
		| '$КомандаЗапускаVA3$' |	
		
		
