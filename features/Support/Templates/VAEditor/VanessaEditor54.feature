﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA25_Макеты_для_отчетов_о_выполнении

@IgnoreOnCIMainBuild


Функциональность: VAEditor54

Сценарий: VAEditor54

	И Я запоминаю значение выражения '1' в переменную "ИмяПеременной2"

	Попытка
		И Я запоминаю значение выражения '2' в переменную "ИмяПеременной2"
		И ПодсценарийКоторыйБудетВызыватьсяВнутриПопыткиИсключения
		И Я запоминаю значение выражения '3' в переменную "ИмяПеременной2"
	Исключение
		И я регистрирую ошибку "Ошибка прав доступа к справочнику" по данным исключения
		
	И Я запоминаю значение выражения '4' в переменную "ИмяПеременной2"