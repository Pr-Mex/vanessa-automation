﻿# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@tree



Функционал: Проверка содержимого таблицы

Как разработчик 
Я хочу чтобы у меня была возможность проверять есть ли строка таблицы в таблице
Чтобы использовать это в сових сценариях

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Проверка содержимого таблицы

	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник1"
	Тогда открылось окно "Справочник1"
	И     я нажимаю на кнопку "Создать"
	Тогда открылось окно "Справочник1 (создание)"
	И     я устанавливаю флаг "Реквизит булево"
	И     в таблице "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     в таблице "ТабличнаяЧасть1" я активизирую поле "Реквизит строка"
	И     в таблице "ТабличнаяЧасть1" в поле "Реквизит строка" я ввожу текст "1"
	И     в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
	И     в таблице "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     в таблице "ТабличнаяЧасть1" я активизирую поле "Реквизит строка"
	И     в таблице "ТабличнаяЧасть1" в поле "Реквизит строка" я ввожу текст "2"
	И     в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
	И     в таблице "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     в таблице "ТабличнаяЧасть1" я активизирую поле "Реквизит строка"
	И     в таблице "ТабличнаяЧасть1" в поле "Реквизит строка" я ввожу текст "3"
	И     в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
	
	#это условие истинно и флаг должен быть снят
	Если в таблице "ТабличнаяЧасть1" есть строка Тогда
		| 'Реквизит строка' |
		| '2'               |
		И     я снимаю флаг "Реквизит булево"	
	
	И     элемент формы с именем "РеквизитБулево" стал равен "Нет"
	
	И     я устанавливаю флаг "Реквизит булево"	
	
	#это условие ложно и флаг должен остаться в значении истина
	Если в таблице "ТабличнаяЧасть1" есть строка Тогда
		| 'Реквизит строка' |
		| '4'               |
		И     я снимаю флаг "Реквизит булево"	
		
	И     элемент формы с именем "РеквизитБулево" стал равен "Да"