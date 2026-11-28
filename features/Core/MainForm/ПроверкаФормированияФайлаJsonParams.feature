# language: ru
# encoding: utf-8

@uf-part2
@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316
@IgnoreOnServer
@tree

Функционал: Проверка формирования файла JsonParams
 
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Проверка формирования файла JsonParams
	Когда Я открываю VanessaAutomation в режиме TestClient

	И я создаю каталог "C:\Temp\JsonParams"
	И я копирую файл "$КаталогИнструментов$\docs\JsonParams\JsonParamsRU.md" "C:\Temp\JsonParams\JsonParamsRU.md"

	И я перехожу к закладке с именем "ГруппаСлужебная"
	Попытка
		И я нажимаю на кнопку с именем 'СоздатьИнструкциюПоОписаниюЭлементов'
		И Пауза 3
	Исключение
		И я запоминаю текст ошибки в переменную "ТекстОшибкиФормированияJsonParams"
		Если файл "C:\Temp\JsonParams\JsonParamsRU.md" существует тогда
			И я копирую файл "C:\Temp\JsonParams\JsonParamsRU.md" "$КаталогИнструментов$\docs\JsonParams\JsonParamsRU.md"
		И я вызываю исключение '$ТекстОшибкиФормированияJsonParams$'

	Если файл "C:\Temp\JsonParams\JsonParamsRU.md" существует тогда
		И я копирую файл "C:\Temp\JsonParams\JsonParamsRU.md" "$КаталогИнструментов$\docs\JsonParams\JsonParamsRU.md"
	Иначе
		И я вызываю исключение 'Не найдена резервная копия JsonParamsRU.md — файл не восстановлен.'
	Тогда не появилось окно предупреждения системы
	
	
	



