# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312

//Фича корректно работает только на 8.3.13 и выше.

@tree


Функциональность: Проверка только просмотр полей с учетом родителя

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
Сценарий: Проверка доступности полей с учетом родителя
	И В командном интерфейсе я выбираю 'Основная' 'Справочник1'
	Тогда открылось окно 'Справочник1'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Справочник1 (создание)'
	И я перехожу к закладке "Только просмотр элементов"
	И элемент с именем "ЭлементТолькоПросмотр1" доступен не только для просмотра
	И я нажимаю на кнопку 'Сделать группе только просмотр'
	И я включаю проверку только просмотр элементов с учётом групп элементов
	И элемент с именем "ЭлементТолькоПросмотр1" доступен только для просмотра
	
	
	И Я запоминаю значение выражения "1" в переменную "ТолькоПросмотр"
	И Я запоминаю значение выражения "1" в переменную "НеТолькоПросмотр"
	Если элемент "ЭлементТолькоПросмотр1" доступен только для просмотра Тогда
		И Я запоминаю значение выражения "2" в переменную "ТолькоПросмотр"
	Если элемент "ЭлементТолькоПросмотр1" доступен не только для просмотра Тогда
		И Я запоминаю значение выражения "2" в переменную "НеТолькоПросмотр"
	И выражение внутреннего языка "$ТолькоПросмотр$=2" Истинно
	И выражение внутреннего языка "$НеТолькоПросмотр$=1" Истинно
	
	И я выключаю проверку только просмотр элементов с учётом групп элементов

