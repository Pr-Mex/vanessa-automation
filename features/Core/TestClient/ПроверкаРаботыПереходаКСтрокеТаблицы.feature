﻿# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree


Функционал: Проверка работы перехода к строке таблицы




Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	
	
Сценарий: Проверка работы перехода к строке таблицы
	Дано В командном интерфейсе я выбираю 'Основная' 'Справочник1'
	Тогда открылось окно 'Справочник1'
	И     я нажимаю на кнопку с именем "ФормаСоздать"
	Тогда открылось окно 'Справочник1 (создание)'
	И     в таблице "ТабличнаяЧасть1" я нажимаю на кнопку с именем "ТабличнаяЧасть1Добавить"
	И     в таблице "ТабличнаяЧасть1" я активизирую поле с именем "ТабличнаяЧасть1РеквизитСтрока"
	И     в таблице "ТабличнаяЧасть1" в поле "Реквизит строка" я ввожу текст 
		|'111'|
		|'222'|
	И     в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
	И     в таблице "ТабличнаяЧасть1" я нажимаю на кнопку с именем "ТабличнаяЧасть1Добавить"
	И     в таблице "ТабличнаяЧасть1" я активизирую поле с именем "ТабличнаяЧасть1РеквизитСтрока"
	И     в таблице "ТабличнаяЧасть1" в поле "Реквизит строка" я ввожу текст 
		|'333'|
		|'444'|
	И     в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
	И     в таблице "ТабличнаяЧасть1" я перехожу к строке:
		| 'Реквизит строка' |
		| '111\n222'        |

	Тогда текст ячейки таблицы "ТабличнаяЧасть1" "ТабличнаяЧасть1РеквизитСтрока" стал равен
		| '111' |
		| '222' |
		
	И     в таблице "ТабличнаяЧасть1" в поле "Реквизит строка" я ввожу текст 
		|'1\|1'|
		|'2\|2'|
	И     в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
	
	И     в таблице "ТабличнаяЧасть1" я перехожу к строке:
		| 'Реквизит строка' |
		| '333\n444'        |
	
	И     в таблице "ТабличнаяЧасть1" я перехожу к строке:
		| 'Реквизит строка' |
		| '1\|1\n2\|2'      |
	