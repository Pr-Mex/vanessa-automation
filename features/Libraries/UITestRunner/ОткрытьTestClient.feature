﻿# language: ru

@ExportScenarios
@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@TestClient


Функциональность: Я хочу работать с командным интерфейсом 1С 8.3.x

Как Разработчик я хочу
Чтобы у меня был стандартный сценарий для открытия TestClient
чтобы я мог использовать его как вложенный сценарий


Сценарий: Я запускаю сценарий открытия TestClient с определенным пользователем
	Дано Я открыл сеанс TestClient от имени "" с паролем "" или подключаю уже существующий
	И   Я закрыл все окна клиентского приложения

Сценарий: Я открываю и закрываю TestClient
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	Тогда я закрываю TestClient "Этот клиент"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'