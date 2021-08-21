# language: ru
# encoding: utf-8
#parent uf:
@UF8_Turbo_Gherkin
#parent ua:
@UA39_использовать_экспортные_и_параметризованные_сценарии

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb



Функционал: Проверка вызова подсценария на другом языке


	

Сценарий: Проверка вызова подсценария на другом языке
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	
	И Я запоминаю значение выражения 'ИмяПользователя()' в переменную "ИмяПользователя"
	
	Когда Я подключаю клиент тестирования с параметрами:
		| 'Имя подключения' | 'Порт' | 'Строка соединения'  | 'Логин'             | 'Пароль' |  'Дополнительные параметры строки запуска'  |
		| 'TestEN'          | '1538' | ''                   | '$ИмяПользователя$' | ''       |  '/TestManager'                             |

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	И     из выпадающего списка "Язык генератора Gherkin" я выбираю "English"
	
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "СлужебнаяФичаEN4"
	И я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	И в таблице "ДеревоТестов" я разворачиваю строку:
		| 'Наименование' |
		| 'Background'   |
	И в таблице "ДеревоТестов" я разворачиваю строку:
		| 'Наименование'                                                         |
		| 'Given I launch TestClient opening script or connect the existing one' |
	И в таблице "ДеревоТестов" я разворачиваю строку:
		| 'Наименование'                         |
		| 'And I call english subscenario "222"' |


	
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                         | 'Статус'  |
		| 'СлужебнаяФичаEN4.feature'                                             | ''        |
		| 'СлужебнаяФичаEN4'                                                     | ''        |
		| 'Background'                                                           | ''        |
		| 'Given I launch TestClient opening script or connect the existing one' | ''        |
		| 'Given I open new TestClient session or connect the existing one'      | 'Success' |
		| 'And I close all client application windows'                           | 'Success' |
		| 'СлужебнаяФичаEN4'                                                     | 'Success' |
		| 'And In the command interface I select "Основная" "Справочник1"'       | 'Success' |
		| 'Then "Справочник1" window is opened'                                  | 'Success' |
		| 'And I click the button named "ФормаСоздать"'                          | 'Success' |
		| 'Then "Справочник1 (create)" window is opened'                         | 'Success' |
		| 'And I input "111" text in the field named "Наименование"'             | 'Success' |
		| 'And I move to the next attribute'                                     | 'Success' |
		| 'Then the form attribute named "Наименование" became equal to \'111\'' | 'Success' |
		| 'And I call english subscenario "222"'                                 | ''        |
		| 'And I input \'222\' text in the field named "Наименование"'           | 'Success' |
		| 'And I move to the next attribute'                                     | 'Success' |
		| 'Then the form attribute named "Наименование" became equal to \'222\'' | 'Success' |
		| 'And I close "Справочник1 (create)*" window'                           | 'Success' |
		| 'Then "1C:Enterprise" window is opened'                                | 'Success' |
		| 'And I click "No" button'                                              | 'Success' |





	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	
	
	
Сценарий: Закрытие служебного сеанса TestEN
	И я закрываю TestClient "TestEN"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'
	