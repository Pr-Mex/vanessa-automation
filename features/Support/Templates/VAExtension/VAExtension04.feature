﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA25_Макеты_для_отчетов_о_выполнении

@IgnoreOnCIMainBuild


Функциональность: VAExtension04
 

Сценарий: VAExtension04

	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

	И я удаляю все элементы справочника "Справочник3"
	И В командном интерфейсе я выбираю 'Основная' 'Справочник3'
	Тогда открылось окно 'Справочник3'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Справочник3 (создание)'
	И в поле с именем 'Наименование' я ввожу текст '111'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно '* (Справочник3)'
	И я нажимаю на кнопку с именем 'СформироватьОтчет'
	
	Дано Табличный документ 'РеквизитТабличныйДокумент' равен макету "ПолучениеМакетаЧерезРасширение"
