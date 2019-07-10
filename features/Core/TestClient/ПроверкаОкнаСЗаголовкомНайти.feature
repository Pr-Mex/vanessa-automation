# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds

@tree


Функциональность: Проверка определения окна с заголовком "Найти"

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
Сценарий: Проверка определения окна с заголовком "Найти"
	Дано Я открываю основную форму списка справочника "Справочник1"
	Тогда открылось окно 'Справочник1'
	И я нажимаю на кнопку 'Создать'
	Тогда открылось окно 'Справочник1 (создание)'
	И в поле с именем 'Наименование' я ввожу текст '111'
	И я нажимаю на кнопку 'Записать'
	И я нажимаю кнопку выбора у поля с именем "Реквизит2"
	Тогда открылось окно 'Справочник2'
	И я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылось окно 'Найти'
	И в поле '&Что искать' я ввожу текст 'тест'
	И я нажимаю на кнопку '&Найти'
	Тогда открылось окно 'Справочник2'
	И Я закрываю окно 'Справочник2'
	Тогда открылось окно '* (Справочник1)'
	И Я закрываю окно '* (Справочник1)'
