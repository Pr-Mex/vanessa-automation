# language: ru
# encoding: utf-8

@IgnoreOnCIMainBuild


Функциональность: TestClient03
 


Сценарий: TestClient03
	Тогда Я копирую текущий профиль TestClient с установкой параметров:
		| 'Имя подключения'            |
		| 'ПрофильСЗапретомРегЗаданий' |

	И я подключаю профиль TestClient "ПрофильСЗапретомРегЗаданий"
