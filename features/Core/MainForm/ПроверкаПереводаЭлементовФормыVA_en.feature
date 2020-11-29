# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA44_Прочая_активность_по_проверке

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316
@tree

Функционал: Проверка перевода элементов формы VA en
 


Сценарий: Проверка перевода элементов формы VA en
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	
	Когда в базе есть пользователь "VanessaUserEN" с паролем "1" с языком "English"
	Когда Я копирую текущий профиль TestClient с установкой параметров:
		| 'Имя подключения' | 'Порт' | 'Логин'         | 'Пароль' |  'Дополнительные параметры строки запуска'  |
		| 'VanessaUserEN'   | '1'    | 'VanessaUserEN' | '1'      |   '/Len /Vlen'                              |	
	
	И Я подключаю клиент тестирования "VanessaUserEN" из таблицы клиентов тестирования

	И В командном интерфейсе я выбираю 'Main' 'Open vanessa automation'
	Тогда открылось окно '*Vanessa Automation*'
		

	И в форме VA в заголовке элементов нет русских букв



Сценарий: Активизация основного клиента
	Когда Я удаляю пользователя "VanessaUserEN"
	И я закрываю TestClient "VanessaUserEN"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'