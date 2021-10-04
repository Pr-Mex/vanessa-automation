# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA25_Макеты_для_отчетов_о_выполнении

#https://github.com/silverbulleters/vanessa-behavior/issues/34

@IgnoreOnCIMainBuild

Функциональность: ErrorExtraDataFiles02
 


Сценарий: ErrorExtraDataFiles02
	И Я запоминаю значение выражения '1' в переменную "ИмяПеременной"
	Тогда я вызываю исключение "Текст исключения"