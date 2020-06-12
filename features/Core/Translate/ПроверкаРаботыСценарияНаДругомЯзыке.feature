# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA44_Прочая_активность_по_проверке

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@SingleCodeCoverage




Функционал: Проверка работы сценария на другом языке, когда изменен порядок параметров

Как пользователь
Я хочу чтобы я мог получить таблицу перевода на экране
Чтобы я мог сделать перевод шагов на любой язык

	
	

Сценарий: Проверка таблицы перевода
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	
	И Я запоминаю значение выражения 'ИмяПользователя()' в переменную "ИмяПользователя"
	
	Когда Я подключаю клиент тестирования с параметрами:
		| 'Имя подключения' | 'Порт' | 'Строка соединения'  | 'Логин'             | 'Пароль' |  'Дополнительные параметры строки запуска'  |
		| 'TestEN'          | '1538' | ''                   | '$ИмяПользователя$' | ''       |  '/TestManager'                             |

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	И     из выпадающего списка "Язык генератора Gherkin" я выбираю "English"
	
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "СлужебнаяФичаEN1"
	И я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И в таблице "ДеревоТестов" я разворачиваю строку:
		| 'Наименование' |
		| 'Background'   |
	И в таблице "ДеревоТестов" я разворачиваю строку:
		| 'Наименование'                                                         |
		| 'Given I launch TestClient opening script or connect the existing one' |
		
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                                         | 'Статус'  |
		| 'СлужебнаяФичаEN1.feature'                                                             | ''        |
		| 'For test english feature'                                                             | ''        |
		| 'Background'                                                                           | ''        |
		| 'Given I launch TestClient opening script or connect the existing one'                 | ''        |
		| 'Given I open new TestClient session or connect the existing one'                      | 'Success' |
		| 'And I close all client application windows'                                           | 'Success' |
		| 'Create record in spr1'                                                                | 'Success' |
		| 'And In the command interface I select "Основная" "Справочник1"'                       | 'Success' |
		| 'Then "Справочник1" window is opened'                                                  | 'Success' |
		| 'And I click the button named "ФормаСоздать"'                                          | 'Success' |
		| 'Then "Справочник1 (create)" window is opened'                                         | 'Success' |
		| 'And I input "NewElementEN1" text in the field named "Наименование"'                   | 'Success' |
		| 'And I click "Save and close" button'                                                  | 'Success' |
		| 'And I save "1" in "variable" variable'                                                | 'Success' |
		| 'If the field named "Наименование" in "Список" table is set to \'NewElementEN1\' Then' | 'Success' |
		| 'And I save "2" in "variable" variable'                                                | 'Success' |
		| 'Then "variable" variable is equal to 2'                                               | 'Success' |
		| 'Close TestClient'                                                                     | 'Success' |
		| 'And I close TestClient session'                                                       | 'Success' |







Сценарий: Закрытие служебного сеанса TestEN
	И я закрываю TestClient "TestEN"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'
	