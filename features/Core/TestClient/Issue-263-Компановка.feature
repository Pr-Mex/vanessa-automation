# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds

@tree

Функционал: Проверка редактирования настроек компановки данных

Как разработчик
Я хочу чтобы поля настроек компановки данных редактировались корректно
Чтобы генератор фич из воздуха создавал корректный текст Gherkin

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда я удаляю все элементы Справочника "Справочник1"
	Когда я удаляю все элементы Справочника "Справочник2"
	Когда я удаляю все элементы Справочника "Справочник3"
	Когда я создаю fixtures по макету "Макет"

	
Сценарий: Проверка состава колонок	
	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник1"
	И Я запоминаю значение выражения "0" в переменную "ВременноеЗначение"
	Если в таблице "Список" есть колонки Тогда
		|'Код'          |
		|'Наименование' |
		|'Реквизит1'    |
		И Я запоминаю значение выражения "1" в переменную "ВременноеЗначение"
	
	
	Если переменная "ВременноеЗначение" имеет значение 0 Тогда
		Тогда я вызываю исключение "Не сработал шаг проверки состава колонок таблицы."
	
	
Сценарий: Проверка редактирования настроек компановки данных

	
	Когда В панели разделов я выбираю "Основная"
	Когда В панели функций я выбираю "Компоновка тест"
	Тогда открылось окно "Компоновка тест"
	И     В открытой форме я нажимаю кнопку очистить у поля с заголовком "Отбор"	
	И     В открытой форме я нажимаю на кнопку с заголовком "Сформировать"
	#Тогда Я задаю системные параметры считывания макета НачСтр 1 НачКол 1 КолСтр 5 КолКол 3
	Затем Я задаю параметры чтения области макета "R1C1:R5C3"
	
	
	Тогда табличный документ формы с именем "Результат" стал равен:
		| 'Версия данных' | 'Код'       | 'Наименование'       |
		|     '*'         | '000000001' | 'Тестовый Элемент 1' |
		|     '*'         | '000000002' | 'Тестовый Элемент 2' |

		
	И     В открытой форме я нажимаю кнопку выбора у поля с заголовком "Отбор"
	Тогда открылось окно "Редактирование отбора"
	И     В форме "Редактирование отбора" в таблице "FilterAvailableFields" я перехожу к строке:
	| 'Доступные поля' |
	| 'Ссылка'        |
	И     В форме "Редактирование отбора" в ТЧ "FilterAvailableFields" я выбираю текущую строку
	И     В форме "Редактирование отбора" в ТЧ "Data" я выбираю текущую строку
	И     В открытой форме в ТЧ "Data" я выбираю значение реквизита с заголовком "Значение" из формы списка
	Тогда открылось окно "Справочник1"
	И     В форме "Справочник1" в ТЧ "Список" я выбираю текущую строку
	Тогда открылось окно "Редактирование отбора"
	И     В форме "Редактирование отбора" в ТЧ "Data" я завершаю редактирование строки
	И     В открытой форме я нажимаю на кнопку с заголовком "OK"
	Тогда открылось окно "Компоновка тест"
	И     В открытой форме я нажимаю на кнопку с заголовком "Сформировать"
		
	Тогда Я задаю системные параметры считывания макета НачСтр 1 НачКол 1 КолСтр 5 КолКол 3
	Тогда табличный документ формы с именем "Результат" стал равен:
		| 'Отбор:'        | 'Ссылка Равно "Тестовый Элемент 1"' | ''                   |
		| ''              | ''                                  | ''                   |
		| 'Версия данных' | 'Код'                               | 'Наименование'       |
		|      '*'        | '000000001'                         | 'Тестовый Элемент 1' |
		