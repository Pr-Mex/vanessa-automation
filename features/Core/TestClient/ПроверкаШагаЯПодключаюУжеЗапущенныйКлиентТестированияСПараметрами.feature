# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836





Функциональность: Проверка шагов, которые переподключают клиент тестирования

Сценарий: Проверка подключения шага: Я подключаю уже запущенный клиент тестирования 
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе


	//проверка исключения когда клиента тестирования нет
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И я загружаю служебную фичу и устанавливаю настройки и выполняю сценарий
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиПодключенияЗапущенногоTestClient3"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	Тогда в логе сообщений TestClient есть строки:
		| 'Не получилось подключиться к ранее запущенному клиенту тестирования' |
			
	И затем я выполняю код встроенного языка
		| 'ЗапуститьСистему(" /TestClient -Tport 48052")' |	
	И пауза 20	
		
	И я активизирую TestClient "TM"
	И Я закрыл все окна клиентского приложения
	
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И я загружаю служебную фичу и устанавливаю настройки и выполняю сценарий
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиПодключенияЗапущенногоTestClient4"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
			
	//установка порта
	Когда открылось окно '*Vanessa Automation'
	И я перехожу к закладке с именем "ГруппаНесколькоКлиентовТестирования"
	
	И в таблице "ДанныеКлиентовТестирования" я перехожу к строке:
		| 'Имя'         |
		| 'Этот клиент' |
	И я запоминаю значение таблицы "ДанныеКлиентовТестирования" поля с именем "ДанныеКлиентовТестированияПутьКИнфобазе" как "ДанныеКлиентовТестированияПутьКИнфобазе"
	И в таблице "ДанныеКлиентовТестирования" я нажимаю на кнопку с именем 'ТестКлиентДобавить'
	И в таблице "ДанныеКлиентовТестирования" в поле с именем 'ДанныеКлиентовТестированияИмя' я ввожу текст 'ПроверкаШагаЯПодключаюУжеЗапущенныйКлиентТестированияСПараметрами'
	И в таблице "ДанныеКлиентовТестирования" я активизирую поле с именем "ДанныеКлиентовТестированияПутьКИнфобазе"
	И в таблице "ДанныеКлиентовТестирования" в поле с именем 'ДанныеКлиентовТестированияПутьКИнфобазе' я ввожу текст '$ДанныеКлиентовТестированияПутьКИнфобазе$'
	И в таблице "ДанныеКлиентовТестирования" я активизирую поле с именем "ДанныеКлиентовТестированияТипКлиента"
	И в таблице "ДанныеКлиентовТестирования" из выпадающего списка с именем "ДанныеКлиентовТестированияТипКлиента" я выбираю точное значение 'Тонкий'
	И в таблице "ДанныеКлиентовТестирования" я завершаю редактирование строки
	
	
	И в таблице "ДанныеКлиентовТестирования" я перехожу к строке:
		| 'Имя'                                                               |
		| 'ПроверкаШагаЯПодключаюУжеЗапущенныйКлиентТестированияСПараметрами' |
	И в таблице "ДанныеКлиентовТестирования" я активизирую поле с именем "ДанныеКлиентовТестированияПорт"
	И я запоминаю значение таблицы "ДанныеКлиентовТестирования" поля с именем "ДанныеКлиентовТестированияИмя" как "ДанныеКлиентовТестированияИмя"
	
	И в таблице "ДанныеКлиентовТестирования" я активизирую поле с именем "ДанныеКлиентовТестированияПутьКИнфобазе"
	И я запоминаю значение таблицы "ДанныеКлиентовТестирования" поля с именем "ДанныеКлиентовТестированияПутьКИнфобазе" как "ДанныеКлиентовТестированияПутьКИнфобазе"
	
	И в таблице 'ДанныеКлиентовТестирования' я удаляю строку
	
	
	И в таблице "ДанныеКлиентовТестирования" я нажимаю на кнопку с именем 'ТестКлиентДобавить'
	И в таблице "ДанныеКлиентовТестирования" в поле с именем 'ДанныеКлиентовТестированияИмя' я ввожу текст '$ДанныеКлиентовТестированияИмя$'
	И в таблице "ДанныеКлиентовТестирования" в поле с именем 'ДанныеКлиентовТестированияПутьКИнфобазе' я ввожу текст '$ДанныеКлиентовТестированияПутьКИнфобазе$'
	И в таблице "ДанныеКлиентовТестирования" в поле с именем 'ДанныеКлиентовТестированияПорт' я ввожу текст '48052'
	И в таблице "ДанныеКлиентовТестирования" я завершаю редактирование строки
	

	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	Тогда в логе сообщений TestClient есть строки:
		| 'Уже открытый TestClient подключен' |
	
Сценарий: Активизация основного клиента
	И я закрываю TestClient "TM"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'


Сценарий: Проверка подключения шага: Я подключаю уже запущенный клиент тестирования с параметрами
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе


	//проверка исключения когда клиента тестирования нет
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И я загружаю служебную фичу и устанавливаю настройки и выполняю сценарий
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиПодключенияЗапущенногоTestClient1"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	Тогда в логе сообщений TestClient есть строки:
		| 'Не получилось подключиться к ранее запущенному клиенту тестирования' |
			
	И затем я выполняю код встроенного языка
		| 'ЗапуститьСистему(" /TestClient -Tport 48051")' |	
	И пауза 20	
		
	И я активизирую TestClient "TM"
	И Я закрыл все окна клиентского приложения
	
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И я загружаю служебную фичу и устанавливаю настройки и выполняю сценарий
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиПодключенияЗапущенногоTestClient2"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
			
	//установка порта
	Когда открылось окно '*Vanessa Automation'
	И я перехожу к закладке с именем "ГруппаНесколькоКлиентовТестирования"
	И в таблице "ДанныеКлиентовТестирования" я перехожу к строке:
		| 'Имя'                                                               |
		| 'ПроверкаШагаЯПодключаюУжеЗапущенныйКлиентТестированияСПараметрами' |
	И в таблице "ДанныеКлиентовТестирования" я активизирую поле с именем "ДанныеКлиентовТестированияПорт"
	И я запоминаю значение таблицы "ДанныеКлиентовТестирования" поля с именем "ДанныеКлиентовТестированияИмя" как "ДанныеКлиентовТестированияИмя"
	
	И в таблице "ДанныеКлиентовТестирования" я активизирую поле с именем "ДанныеКлиентовТестированияПутьКИнфобазе"
	И я запоминаю значение таблицы "ДанныеКлиентовТестирования" поля с именем "ДанныеКлиентовТестированияПутьКИнфобазе" как "ДанныеКлиентовТестированияПутьКИнфобазе"
	
	И в таблице 'ДанныеКлиентовТестирования' я удаляю строку
	
	
	И в таблице "ДанныеКлиентовТестирования" я нажимаю на кнопку с именем 'ТестКлиентДобавить'
	И в таблице "ДанныеКлиентовТестирования" в поле с именем 'ДанныеКлиентовТестированияИмя' я ввожу текст '$ДанныеКлиентовТестированияИмя$'
	И в таблице "ДанныеКлиентовТестирования" в поле с именем 'ДанныеКлиентовТестированияПутьКИнфобазе' я ввожу текст '$ДанныеКлиентовТестированияПутьКИнфобазе$'
	И в таблице "ДанныеКлиентовТестирования" в поле с именем 'ДанныеКлиентовТестированияПорт' я ввожу текст '48051'
	И в таблице "ДанныеКлиентовТестирования" я завершаю редактирование строки
	

	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	Тогда в логе сообщений TestClient есть строки:
		| 'Уже открытый TestClient подключен' |
	
Сценарий: Активизация основного клиента
	И я закрываю TestClient "TM"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'