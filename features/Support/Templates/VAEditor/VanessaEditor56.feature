﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA25_Макеты_для_отчетов_о_выполнении

@IgnoreOnCIMainBuild


Функциональность: VAEditor56

Сценарий: VAEditor56
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения
	
	И В командном интерфейсе я выбираю "Основная" "Справочник1"
	Тогда открылось окно "Справочник1"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Справочник1 (создание)"

	И я перехожу к закладке "ТЧ"
	И в таблице 'ТабличнаяЧасть1' я нажимаю на кнопку с именем 'ТабличнаяЧасть1Добавить'
	И в таблице 'ТабличнаяЧасть1' я активизирую поле с именем 'ТабличнаяЧасть1РеквизитСтрока'
	И в таблице 'ТабличнаяЧасть1' в поле с именем 'ТабличнаяЧасть1РеквизитСтрока' я ввожу текст "111"
	И в таблице 'ТабличнаяЧасть1' я завершаю редактирование строки
		

	
	И я устанавливаю флаг с именем 'РеквизитЧисло1'
	И я меняю значение переключателя с именем 'РеквизитПереключатель' на "Первое значение"
	И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1РеквизитСтрока' я ввожу текст "111"
	И в таблице 'ТабличнаяЧасть1' я завершаю редактирование строки
		
		