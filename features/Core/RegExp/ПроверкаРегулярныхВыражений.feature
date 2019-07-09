# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree


Функциональность: Проверка регулярных выражений

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Проверка регулярных выражений с переносом строки
	И В командном интерфейсе я выбираю 'Основная' 'Справочник1'
	Тогда открылось окно 'Справочник1'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Справочник1 (создание)'
	И в таблице "ТабличнаяЧасть1" я нажимаю на кнопку с именем 'ТабличнаяЧасть1Добавить'
	И в таблице "ТабличнаяЧасть1" я активизирую поле "Многострочная строка"
	И в таблице "ТабличнаяЧасть1" в поле 'Многострочная строка' я ввожу текст 
		|'_Многострочная строка w503HlzLT+c/Ap6Z6wfcDpVN8+c='|
		|'_Многострочная строка eHZ4AYuKUVQ+WG4M/XY83RytGpI='|
		|'_Многострочная строка'|
	И в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
	Тогда таблица "ТабличнаяЧасть1" стала равной по шаблону
		| 'Многострочная строка'         |
		| '*Многострочная строка*\n*\n*' |
	Тогда таблица "ТабличнаяЧасть1" стала равной по шаблону
		| 'Многострочная строка'   |
		| '*Многострочная строка*' |
	И в поле с именем 'Наименование' я ввожу текст '111'
	И я перехожу к следующему реквизиту
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Справочник1 (создание) *' в течение 20 секунд
