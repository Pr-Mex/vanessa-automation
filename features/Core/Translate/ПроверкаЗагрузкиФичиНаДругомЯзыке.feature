# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837




Функционал: Загрузка фичи на другом языке

Как пользователь
Я хочу чтобы я мог загрузить фичу на любом языке
Чтобы я мог её выполнить на библиотеке стандартных шагов не переключая яызк в настройках

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	
Сценарий: Проверка загрузки структуры сценария на другом языке
	Когда Я открываю VanessaBehavior в режиме TestClient со стандартной библиотекой
	
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "СлужебнаяФичаEN3"
	И     Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                         |
		| 'СлужебнаяФичаEN3.feature'                                             |
		| 'СлужебнаяФичаEN3'                                                     |
		| 'Контекст'                                                             |
		| 'Given I launch TestClient opening script or connect the existing one' |
		| 'Given I open new TestClient session or connect the existing one'      |
		| 'And I close all client application windows'                           |
		| 'Indeplinire catalogului Parteneri'                                    |
		| 'And I close "Clienți" window'                                         |
		| 'Примеры'                                                              |
		| '\| CUI       \|'                                                      |
		| '\| RO9335522 \|'                                                      |
		| 'And I close "Clienți" window'                                         |


	
	
	
Сценарий: Проверка загрузки фичи
	Когда Я открываю VanessaBehavior в режиме TestClient со стандартной библиотекой
	
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "СлужебнаяФичаEN2"
	И     Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                         |
		| 'СлужебнаяФичаEN2.feature'                                             |
		| 'СлужебнаяФичаEN2'                                                     |
		| 'Контекст'                                                             |
		| 'Given I launch TestClient opening script or connect the existing one' |
		| 'Given I open new TestClient session or connect the existing one'      |
		| 'And I close all client application windows'                           |
		| '<script description>'                                                 |
		| 'And In the command interface I select "Основная" "Справочник1"'       |





	
	

Сценарий: Проверка таблицы перевода
	Когда Я открываю VanessaBehavior в режиме TestClient со стандартной библиотекой
	
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "СлужебнаяФичаEN1"
	И     Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Строка процедуры вызова шага'                           |
		| ''                                                       |
		| ''                                                       |
		| ''                                                       |
		| ''                                                       |
		| 'ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий' |
		| 'ЯЗакрылВсеОкнаКлиентскогоПриложения'                    |
		| ''                                                       |
		| 'ВКомандномИнтерфейсеЯВыбираю'                           |
		| 'ОткрылосьОкно'                                          |
		| 'ЯНажимаюНаКнопкуСИменем'                                |
		| 'ОткрылосьОкно'                                          |
		| 'ВПолеСИменемЯВвожуТекст'                                |
		| 'ЯНажимаюНаКнопку'                                       |
		| ''                                                       |
		| 'ЯЗакрываюСеансTESTCLIENT'                               |


