# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@TestClient
@IgnoreOnWeb


Функционал: Проверка запуска приложения в режиме тонкого/толстого клиента

Как разработчик
Я хочу иметь возможность запуска ТестКлиента как в тонком, так и в толстом клиенте
Что бы проверять проверять ограничения прав

# Контекст: 

Сценарий: Запуск толстого клиента
	И Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT

	Когда Я подключаю клиент тестирования с параметрами:
		| 'Имя подключения' | 'Порт'  | 'Тип клиента' |  'Дополнительные параметры строки запуска'  |
		| 'Test 1'          | '48100' | 'Толстый'     |  '/RunModeManagedApplication'               |
	
	И     в ТЧ ДанныеКлиентовТестирования VanessaBehavoir содержиться строка:
		| 'Имя'     |   'Дополнительные параметры строки запуска'  |
		| 'Test 1'  |   '/RunModeManagedApplication'               |
		
	Тогда режим запуска приложения "Толстый клиент"
	И     я закрываю сеанс TESTCLIENT
	И     Пауза 3

Сценарий: Запуск тонкого клиента
	И Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда Я подключаю клиент тестирования с параметрами:
		| 'Имя подключения' | 'Порт'  | 'Тип клиента' |
		| 'Test 2'          | '48101' | 'Тонкий'      |
		
	И     в ТЧ ДанныеКлиентовТестирования VanessaBehavoir содержиться строка:
		| 'Имя'     |
		| 'Test 2'  |
		
	Тогда режим запуска приложения "Тонкий клиент"
	И     я закрываю сеанс TESTCLIENT
	И     Пауза 3

Сценарий: Запуск тонкого клиента - проверка пустого значения "Тип клиента"
	И Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда Я подключаю клиент тестирования с параметрами:
		| 'Имя подключения' | 'Порт'  |
		| 'Test 3'          | '48102' |
		
	И     в ТЧ ДанныеКлиентовТестирования VanessaBehavoir содержиться строка:
		| 'Имя'     | 
		| 'Test 3'  | 
		
	Тогда режим запуска приложения "Тонкий клиент"
	И     я закрываю сеанс TESTCLIENT