# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311

Функциональность: Проверка оптимизации загрузки фич

 
Контекст: 
	Если Файл "C:\Temp\Optimization" существует тогда
	Иначе
		Тогда я создаю каталог "C:\Temp\Optimization"
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой


Сценарий: Проверка оптимизации загрузки фич ru
	Если Файл "C:\Temp\Optimization\Test.feature" существует тогда
		Тогда я удаляю файл "C:\Temp\Optimization\Test.feature"
		
	И Я запоминаю значение выражения 'ПолучитьСостояниеVanessaAutomation().ТекущаяФича.Каталог + "files\Test1_1.feature"' в переменную "TestFeature"	
	Тогда я копирую файл "$TestFeature$" "C:\Temp\Optimization\Test.feature"

	И я перехожу к закладке "Служебная"
	И в поле 'Каталог фич (служебный)' я ввожу текст 'C:\Temp\Optimization\Test.feature'
	
	И     Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И     Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	Тогда в логе сообщений TestClient есть строка "Hellow world1"
	Тогда в логе сообщений TestClient есть строка "Текст исключения1"
	
	И я очищаю окно сообщений пользователю

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Статус'  | 'Снипет'                                 |
		| ''        | ''                                       |
		| ''        | ''                                       |
		| 'Failed'  | ''                                       |
		| 'Success' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)' |
		| ''        | ''                                       |
		| 'Failed'  | 'ЯВызываюИсключение(Парам01)'            |
		| ''        | 'ЯВызываюИсключение(Парам01)'            |



	Если Файл "C:\Temp\Optimization\Test.feature" существует тогда
		Тогда я удаляю файл "C:\Temp\Optimization\Test.feature"
	И Я запоминаю значение выражения 'ПолучитьСостояниеVanessaAutomation().ТекущаяФича.Каталог + "files\Test1_2.feature"' в переменную "TestFeature"	
	Тогда я копирую файл "$TestFeature$" "C:\Temp\Optimization\Test.feature"

	И     Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И     Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	Тогда в логе сообщений TestClient есть строка "Hellow world2"
	Тогда в логе сообщений TestClient есть строка "Текст исключения2"
	Тогда в логе сообщений TestClient есть строка "ВозможнаОптимизацияЗагрузкиФичи=Да"


	Тогда таблица "ДеревоТестов" стала равной:
		| 'Статус'  | 'Снипет'                                 |
		| ''        | ''                                       |
		| ''        | ''                                       |
		| 'Failed'  | ''                                       |
		| 'Success' | 'ЯВыполняюКодВстроенногоЯзыка(ТабПарам)' |
		| ''        | ''                                       |
		| 'Failed'  | 'ЯВызываюИсключение(Парам01)'            |
		| ''        | 'ПростоШагБезСниппета()'                 |


	И     элемент формы с именем "Статистика" стал равен '1/1/3(1), 1/1/0'
	
	
	

Сценарий: Проверка оптимизации загрузки фич en
	Если Файл "C:\Temp\Optimization\Test.feature" существует тогда
		Тогда я удаляю файл "C:\Temp\Optimization\Test.feature"
		
	И Я запоминаю значение выражения 'ПолучитьСостояниеVanessaAutomation().ТекущаяФича.Каталог + "files\Test2_1.feature"' в переменную "TestFeature"	
	Тогда я копирую файл "$TestFeature$" "C:\Temp\Optimization\Test.feature"

	И я перехожу к закладке "Служебная"
	И в поле 'Каталог фич (служебный)' я ввожу текст 'C:\Temp\Optimization\Test.feature'
	
	И     Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И     Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	Тогда в логе сообщений TestClient есть строка "Hellow world1"
	Тогда в логе сообщений TestClient есть строка "Текст исключения1"
	
	И я очищаю окно сообщений пользователю

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Статус'  | 'Снипет'                               |
		| ''        | ''                                     |
		| ''        | ''                                     |
		| 'Failed'  | ''                                     |
		| 'Success' | 'IExecute1CEnterpriseScript(ТабПарам)' |
		| ''        | ''                                     |
		| 'Failed'  | 'IRaiseException(Парам01)'             |








	Если Файл "C:\Temp\Optimization\Test.feature" существует тогда
		Тогда я удаляю файл "C:\Temp\Optimization\Test.feature"
	И Я запоминаю значение выражения 'ПолучитьСостояниеVanessaAutomation().ТекущаяФича.Каталог + "files\Test2_2.feature"' в переменную "TestFeature"	
	Тогда я копирую файл "$TestFeature$" "C:\Temp\Optimization\Test.feature"

	И     Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И     Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	Тогда в логе сообщений TestClient есть строка "Hellow world2"
	Тогда в логе сообщений TestClient есть строка "Текст исключения2"
	Тогда в логе сообщений TestClient есть строка "ВозможнаОптимизацияЗагрузкиФичи=Да"


	Тогда таблица "ДеревоТестов" стала равной:
		| 'Статус'  | 'Снипет'                               |
		| ''        | ''                                     |
		| ''        | ''                                     |
		| 'Failed'  | ''                                     |
		| 'Success' | 'IExecute1CEnterpriseScript(ТабПарам)' |
		| ''        | ''                                     |
		| 'Failed'  | 'IRaiseException(Парам01)'             |




	И     элемент формы с именем "Статистика" стал равен '1/1/2, 1/1/0'
	
