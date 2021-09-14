# language: ru
# encoding: utf-8
#parent uf:
@UF1_загрузка_и_обработка_features
#parent ua:
@UA16_парсить_features

@tree
@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb



Функционал: Проверка тегирования фич и сценариев 1

Как разработчик
Я хочу чтобы я мог помечать тегами фичи и сценарии
Чтобы я мог иcпользовать фильтры по фичам и сценариям


Контекст: 
	Когда Я открываю VanessaAutomation в режиме TestClient 
	Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
		И я перехожу к закладке с именем "ГруппаКаталогиБиблиотек"
		И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
		И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
	И в поле с именем "КаталогФичСлужебный" я указываю путь к каталогу фич "Support\Templates\ФичиДляПровериРаботыТегов"



Сценарий: Исключение по тегу сценария когда идёт загрузка одной фичи
	Когда     я перехожу к закладке "Сервис"
	И я нажимаю кнопку выбора у поля "Список исключаемых тэгов"
	Тогда открылось окно "Список значений"
	И я нажимаю на кнопку "Добавить"
	И в ТЧ "ValueList" в поле "Значение" я ввожу текст "TagScenario"
	И в форме "Список значений" в ТЧ "ValueList" я завершаю редактирование строки
	И я нажимаю на кнопку "ОК"
	И в поле с именем "КаталогФичСлужебный" я указываю путь к каталогу фич "Support\Templates\ФичиДляПровериРаботыТегов\ТегВторойСценарий.feature"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	Когда Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                                                                  |
		| 'ТегВторойСценарий.feature'                                                     |
		|  'Загрузить фичу в vanessa-behavior 13'                                            |
		|  'Первый сценарий без тега'                                                     |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Когда Я запускаю сценарий открытия TestClient или подключаю уже существующий' |
		|  'Дано Я открыл новый сеанс TestClient или подключил уже существующий'          |
		|  'И Я закрываю все окна клиентского приложения'                                |
	
	
	
	
Сценарий: Отбор по тегу фильтру по сценарию когда идёт загрузка одной фичи
	Когда     я перехожу к закладке "Сервис"
	И я нажимаю кнопку выбора у поля "Тэги для запуска"
	Тогда открылось окно "Список значений"
	И я нажимаю на кнопку "Добавить"
	И в ТЧ "ValueList" в поле "Значение" я ввожу текст "TagScenario"
	И в форме "Список значений" в ТЧ "ValueList" я завершаю редактирование строки
	И я нажимаю на кнопку "ОК"
	И в поле с именем "КаталогФичСлужебный" я указываю путь к каталогу фич "Support\Templates\ФичиДляПровериРаботыТегов\ТегВторойСценарий.feature"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	Когда Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                               |
		| 'ТегВторойСценарий.feature'                  |
		|  'Загрузить фичу в vanessa-behavior 13'         |
		|  'Второй сценарий с тегом, а первый без тега' |
		|  'Когда я развернул все ветки дерева VB'      |
	
	
	
	
Сценарий: Проверка работы отбора тега сценария
	Когда     я перехожу к закладке "Сервис"
	И я нажимаю кнопку выбора у поля "Тэги для запуска"
	Тогда открылось окно "Список значений"
	И я нажимаю на кнопку "Добавить"
	И в ТЧ "ValueList" в поле "Значение" я ввожу текст "TagScenario"
	И в форме "Список значений" в ТЧ "ValueList" я завершаю редактирование строки
	И я нажимаю на кнопку "ОК"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	Когда Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                          |
		| 'ФичиДляПровериРаботыТегов'             |
		| 'Загрузить фичу в vanessa-behavior 13'     |
		| 'Второй сценарий с тегом, а первый без тега'  |
		| 'Когда я развернул все ветки дерева VB' |
		| 'Загрузить фичу в vanessa-behavior 14'     |
		| 'Тег только в сценарии'                 |
		| 'Когда я развернул все ветки дерева VB' |
		| 'Загрузить фичу в vanessa-behavior 16'     |
		| 'Тег у фичи и у сценария'               |
		| 'Когда я развернул все ветки дерева VB' |
	
	

Сценарий: Проверка работы отбора тега фичи
	Когда     я перехожу к закладке "Сервис"
	И я нажимаю кнопку выбора у поля "Тэги для запуска"
	Тогда открылось окно "Список значений"
	И я нажимаю на кнопку "Добавить"
	И в ТЧ "ValueList" в поле "Значение" я ввожу текст "TagFeature"
	И в форме "Список значений" в ТЧ "ValueList" я завершаю редактирование строки
	И я нажимаю на кнопку "ОК"
	Когда Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	Когда Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                              |
		| 'ФичиДляПровериРаботыТегов'                 |
		| 'Загрузить фичу в vanessa-behavior 15'         |
		| 'Тег только у фичи'                         |
		| 'Когда я развернул все ветки дерева VB'     |
		| 'Загрузить фичу в vanessa-behavior 16'         |
		| 'Тег у фичи и у сценария'                   |
		| 'Когда я развернул все ветки дерева VB'     |
		| 'У второго сценария нет тега а у фичи есть' |
		| 'Когда я развернул все ветки дерева VB'     |
	
	
	
Сценарий: Проверка работы исключения тега одного сценария
	Когда     я перехожу к закладке "Сервис"
	И я нажимаю кнопку выбора у поля "Список исключаемых тэгов"
	Тогда открылось окно "Список значений"
	И я нажимаю на кнопку "Добавить"
	И в ТЧ "ValueList" в поле "Значение" я ввожу текст "TagScenario"
	И в форме "Список значений" в ТЧ "ValueList" я завершаю редактирование строки
	И я нажимаю на кнопку "ОК"
	Когда Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	Когда Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                                                                 |
		| 'ФичиДляПровериРаботыТегов'                                                    |
		|  'Загрузить фичу в vanessa-behavior 13'                                           |
		|  'Первый сценарий без тега'                                                     |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Когда Я запускаю сценарий открытия TestClient или подключаю уже существующий' |
		|  'Дано Я открыл новый сеанс TestClient или подключил уже существующий'          |
		|  'И Я закрываю все окна клиентского приложения'                                |
		|  'Загрузить фичу в vanessa-behavior 14'                                            |
		|  'Второй сценарий без тега, а первый с тегом'                                   |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Загрузить фичу в vanessa-behavior 15'                                            |
		|  'Тег только у фичи'                                                            |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Загрузить фичу в vanessa-behavior 16'                                            |
		|  'У второго сценария нет тега а у фичи есть'                                    |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Загрузить фичу в vanessa-behavior 17'                                            |
		|  'Сценарий без тегов'                                                           |
		|  'Когда я развернул все ветки дерева VB'                                        |
					
	
	
Сценарий: Проверка работы исключения без тегов
	Когда Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	Когда Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                                                                  |
		| 'ФичиДляПровериРаботыТегов'                                                     |
		|  'Загрузить фичу в vanessa-behavior 13'                                            |
		|  'Первый сценарий без тега'                                                     |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Когда Я запускаю сценарий открытия TestClient или подключаю уже существующий' |
		|  'Дано Я открыл новый сеанс TestClient или подключил уже существующий'          |
		|  'И Я закрываю все окна клиентского приложения'                                |
		|  'Второй сценарий с тегом, а первый без тега'                                   |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Загрузить фичу в vanessa-behavior 14'                                            |
		|  'Тег только в сценарии'                                                        |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Второй сценарий без тега, а первый с тегом'                                   |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Загрузить фичу в vanessa-behavior 15'                                            |
		|  'Тег только у фичи'                                                            |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Загрузить фичу в vanessa-behavior 16'                                            |
		|  'Тег у фичи и у сценария'                                                      |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'У второго сценария нет тега а у фичи есть'                                    |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Загрузить фичу в vanessa-behavior 17'                                            |
		|  'Сценарий без тегов'                                                           |
		|  'Когда я развернул все ветки дерева VB'                                        |

Сценарий: Проверка работы исключения тега всей фичи
	Когда     я перехожу к закладке "Сервис"
	И я нажимаю кнопку выбора у поля "Список исключаемых тэгов"
	Тогда открылось окно "Список значений"
	И я нажимаю на кнопку "Добавить"
	И в ТЧ "ValueList" в поле "Значение" я ввожу текст "TagFeature"
	И в форме "Список значений" в ТЧ "ValueList" я завершаю редактирование строки
	И я нажимаю на кнопку "ОК"
	
	Когда Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	Когда Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                                                                  |
		| 'ФичиДляПровериРаботыТегов'                                                     |
		|  'Загрузить фичу в vanessa-behavior 13'                                            |
		|  'Первый сценарий без тега'                                                     |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Когда Я запускаю сценарий открытия TestClient или подключаю уже существующий' |
		|  'Дано Я открыл новый сеанс TestClient или подключил уже существующий'          |
		|  'И Я закрываю все окна клиентского приложения'                                |
		|  'Второй сценарий с тегом, а первый без тега'                                   |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Загрузить фичу в vanessa-behavior 14'                                            |
		|  'Тег только в сценарии'                                                        |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Второй сценарий без тега, а первый с тегом'                                   |
		|  'Когда я развернул все ветки дерева VB'                                        |
		|  'Загрузить фичу в vanessa-behavior 17'                                            |
		|  'Сценарий без тегов'                                                           |
		|  'Когда я развернул все ветки дерева VB'                                        |
		
		
		