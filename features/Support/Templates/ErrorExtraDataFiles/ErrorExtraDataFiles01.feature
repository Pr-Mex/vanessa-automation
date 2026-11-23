# language: ru
# encoding: utf-8

#https://github.com/silverbulleters/vanessa-behavior/issues/34

@IgnoreOnCIMainBuild

Функциональность: ErrorExtraDataFiles
 


Сценарий: ErrorExtraDataFiles
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда я вызываю исключение "Тест"
