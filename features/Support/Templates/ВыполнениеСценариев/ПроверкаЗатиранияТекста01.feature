﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA30_Прочие_макеты

@IgnoreOnCIMainBuild
@tree


Функциональность: ПроверкаЗатиранияТекста01


Сценарий: ПроверкаЗатиранияТекста01
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Основная" "Справочник1"
	Тогда открылось окно "Справочник1"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Справочник1 (создание)"
	И я нажимаю на кнопку с именем 'ФормаВключитьТаймерСерверногоВызова'
	И в поле с именем 'Наименование' я ввожу текст "111"
	И пауза 8
	И элемент формы с именем 'Наименование' стал равен '111'
	Тогда в логе сообщений TestClient есть строка "СчетчикОбработчика=1"
