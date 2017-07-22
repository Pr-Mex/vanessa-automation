# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb



Функционал: Проверка работы сценария на другом языке, когда изменен порядок параметров

Как пользователь
Я хочу чтобы я мог получить таблицу перевода на экране
Чтобы я мог сделать перевод шагов на любой язык

	
	

Сценарий: Проверка таблицы перевода
	
	Когда Я подключаю клиент тестирования с параметрами:
		| 'Имя подключения' | 'Порт' | 'Строка соединения'  | 'Логин' | 'Пароль' |  'Дополнительные параметры строки запуска'  |
		| 'TestEN'          | '1538' | ''                   | ''      | ''       |  '/TestManager'                                      |

	Когда Я открываю VanessaBehavior в режиме TestClient со стандартной библиотекой
	
	И     из выпадающего списка "Язык генератора Gherkin" я выбираю "English"
	
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "СлужебнаяФичаEN1"
	И     Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient
	И     Я нажимаю на кнопку выполнить сценарии в Vanessa-Behavior TestClient
	
	Тогда таблица формы с именем "ДеревоТестов" стала равной:
		| 'Статус'  | 'Наименование'                                                         |
		| ''        | 'СлужебнаяФичаEN1.feature'                                             |
		| ''        | 'СлужебнаяФичаEN1'                                                     |
		| ''        | 'Контекст'                                                             |
		| ''        | 'Given I connect to the TestClient or reconnect to existing'           |
		| 'Success' | 'Given I opened a new TestClient session or connected an existing one' |
		| 'Success' | 'And I closed all the windows client application'                      |
		| 'Success' | 'Create record in spr1'                                                |
		| 'Success' | 'When in command interface group I select "Основная"'                  |
		| 'Success' | 'And in the function panel I select "Справочник1"'                     |
		| 'Success' | 'Then I see the window "Справочник1"'                                  |
		| 'Success' | 'And I click on the "Создать" button'                                  |
		| 'Success' | 'Then I see the window "Справочник1 (создание)"'                       |
		| 'Success' | 'And I enter "111" in the field called "Наименование"'                 |
		| 'Success' | 'And I click on the "Записать и закрыть" button'                       |
		| 'Success' | 'Close TestClient'                                                     |
		| 'Success' | 'Given I close the session TESTCLIENT'                                 |

Сценарий: Закрытие слубеного сеанса TestEN
	И я закрываю TestClient "TestEN"
	
