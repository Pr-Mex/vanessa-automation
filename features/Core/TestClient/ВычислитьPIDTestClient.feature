# language: ru
# encoding: utf-8
#parent uf:
@UF2_запуск_сценариев_на_выполнение
#parent ua:
@UA13_управлять_Test_clients

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree


Функционал: Вычисление PID сеанса TestClient

	Как Разработчик я хочу
	Чтобы у меня была возможность вычислить PID сеанса TestClient
	Чтобы я мог знать PID всех сеансов TestClient, которые я запускал



Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	
Сценарий: Вычисление PID TestClient
	Дано Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	И я перехожу к закладке "PID"
	И я нажимаю на кнопку "Вычислить PID"
	И пауза 1
	И поле "PID этого сеанса" заполнено