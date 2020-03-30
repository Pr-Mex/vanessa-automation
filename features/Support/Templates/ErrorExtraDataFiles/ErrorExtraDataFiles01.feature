# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA25_Макеты_для_отчетов_о_выполнении

#https://github.com/silverbulleters/vanessa-behavior/issues/34

@IgnoreOnCIMainBuild

Функциональность: ErrorExtraDataFiles
 


Сценарий: ErrorExtraDataFiles
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда я вызываю исключение "Тест"
