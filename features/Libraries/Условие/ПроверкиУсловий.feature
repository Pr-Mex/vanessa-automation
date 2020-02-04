# language: ru
# encoding: utf-8
#parent uf:
@UF8_Turbo_Gherkin
#parent ua:
@UA23_Использовать_условия_в_сценариях

@IgnoreOnOFBuilds
@IgnoreOn82Builds
@IgnoreOnWeb


@tree



Функциональность: Проверка работы условий базовая 1

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий




Сценарий: Проверка работы условий 19
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий19"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюСвернутьДоШагов' на элементе формы с именем "ДеревоТестов"
	И пауза 1
	
	И я перехожу к закладке "Служебная"
	И я нажимаю на кнопку 'Развернуть все строки дерева служебный'
	
	И я перехожу к закладке с именем "ГруппаЗапускТестов"


	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                         | 'Статус'  |
		| 'ДляПроверкаРаботыУсловий19.feature'                                   | ''        |
		| 'ДляПроверкаРаботыУсловий19'                                           | ''        |
		| 'ДляПроверкаРаботыУсловий19'                                           | 'Success' |
		| 'Если "Истина" тогда'                                                  | 'Success' |
		| 'Иначе'                                                                | ''        |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной1"' | ''        |
		| 'Если "Истина" тогда'                                                  | 'Success' |
		| 'Иначе'                                                                | ''        |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной1"' | ''        |
		| 'Если "Истина" тогда'                                                  | 'Success' |
		| 'Иначе'                                                                | ''        |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной1"' | ''        |







Сценарий: Проверка работы условий 18
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий18"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюСвернутьДоШагов' на элементе формы с именем "ДеревоТестов"
	И пауза 1
	
	И я перехожу к закладке "Служебная"
	И я нажимаю на кнопку 'Развернуть все строки дерева служебный'
	
	И я перехожу к закладке с именем "ГруппаЗапускТестов"


	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                         | 'Статус'  |
		| 'ДляПроверкаРаботыУсловий18.feature'                                   | ''        |
		| 'ДляПроверкаРаботыУсловий18'                                           | ''        |
		| 'Контекст'                                                             | ''        |
		| 'Если "Истина" тогда'                                                  | 'Success' |
		| 'Иначе'                                                                | ''        |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной1"' | ''        |
		| 'ДляПроверкаРаботыУсловий18'                                           | 'Success' |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной2"' | 'Success' |






Сценарий: Проверка работы условий 17
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий17"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюСвернутьДоШагов' на элементе формы с именем "ДеревоТестов"
	И пауза 1
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                           | 'Статус'  |
		| 'ДляПроверкаРаботыУсловий17.feature'                     | ''        |
		| 'ДляПроверкаРаботыУсловий17'                             | ''        |
		| 'ДляПроверкаРаботыУсловий17'                             | 'Success' |
		| 'Если Файл "C:\Temp\Exchange" существует тогда'          | 'Success' |
		| 'Иначе'                                                  | ''        |
		| 'Если Файл "C:\Temp\Exchange\Settings" существует тогда' | 'Success' |
		| 'Иначе'                                                  | ''        |







Сценарий: Проверка работы условий 16
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий16"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляПроверкаРаботыУсловий16.feature'                                  | ''        |
		| 'ДляПроверкаРаботыУсловий16'                                          | ''        |
		| 'ДляПроверкаРаботыУсловий16'                                          | 'Success' |
		| 'Если "Ложь" Тогда'                                                   | 'Success' |
		| 'ИначеЕсли "Ложь" Тогда'                                              | 'Success' |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | ''        |









Сценарий: Проверка работы условий 15
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий15"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляПроверкаРаботыУсловий15.feature'                                  | ''        |
		| 'ДляПроверкаРаботыУсловий15'                                          | ''        |
		| 'ДляПроверкаРаботыУсловий15'                                          | 'Success' |
		| 'Если "Ложь" Тогда'                                                   | 'Success' |
		| 'ИначеЕсли "Ложь" Тогда'                                              | 'Success' |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | 'Success' |






Сценарий: Проверка работы условий 14
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий14"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляПроверкаРаботыУсловий14.feature'                                  | ''        |
		| 'ДляПроверкаРаботыУсловий14'                                          | ''        |
		| 'ДляПроверкаРаботыУсловий14'                                          | 'Success' |
		| 'Если "Ложь" Тогда'                                                   | 'Success' |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | 'Success' |







Сценарий: Проверка работы условий 13
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий13"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляПроверкаРаботыУсловий13.feature'                                  | ''        |
		| 'ДляПроверкаРаботыУсловий13'                                          | ''        |
		| 'ДляПроверкаРаботыУсловий13'                                          | 'Success' |
		| 'Если "Ложь" Тогда'                                                   | 'Success' |
		| '* Группа'                                                            | ''        |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | ''        |
		| 'Иначе'                                                               | ''        |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' | 'Success' |
		| 'И Я запоминаю значение выражения \'3\' в переменную "ИмяПеременной"' | 'Success' |






Сценарий: Проверка работы условий 12
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий12"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляПроверкаРаботыУсловий12.feature'                                  | ''        |
		| 'ДляПроверкаРаботыУсловий12'                                          | ''        |
		| 'ДляПроверкаРаботыУсловий12'                                          | 'Success' |
		| 'Если "Истина" Тогда'                                                 | 'Success' |
		| '* Группа'                                                            | ''        |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | 'Success' |
		| 'Иначе'                                                               | ''        |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' | ''        |
		| 'И Я запоминаю значение выражения \'3\' в переменную "ИмяПеременной"' | 'Success' |







Сценарий: Проверка работы условий 11
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий11"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляПроверкаРаботыУсловий11.feature'                                  | ''        |
		| 'ДляПроверкаРаботыУсловий11'                                          | ''        |
		| 'ДляПроверкаРаботыУсловий11'                                          | 'Success' |
		| 'Если "Истина" Тогда'                                                 | 'Success' |
		| '* Группа'                                                            | ''        |
		| 'Иначе'                                                               | ''        |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' | ''        |
		| 'И Я запоминаю значение выражения \'3\' в переменную "ИмяПеременной"' | 'Success' |





	
Сценарий: Проверка работы условий 10
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий10"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляПроверкаРаботыУсловий10.feature'                                  | ''        |
		| 'ДляПроверкаРаботыУсловий10'                                          | ''        |
		| 'ДляПроверкаРаботыУсловий10'                                          | 'Success' |
		| 'Если "Истина" Тогда'                                                 | 'Success' |
		| 'Иначе'                                                               | ''        |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' | ''        |
		| 'И Я запоминаю значение выражения \'3\' в переменную "ИмяПеременной"' | 'Success' |





	
	
	
Сценарий: Проверка работы условий 9
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий9"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляПроверкаРаботыУсловий9.feature'                                   | ''        |
		| 'ДляПроверкаРаботыУсловий9'                                           | ''        |
		| 'ДляПроверкаРаботыУсловий9'                                           | 'Success' |
		| 'Если "Ложь" Тогда'                                                   | 'Success' |
		| 'Иначе'                                                               | ''        |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' | 'Success' |




	
	
Сценарий: Проверка работы условий 8
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий8"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляПроверкаРаботыУсловий8.feature'                                   | ''        |
		| 'ДляПроверкаРаботыУсловий8'                                           | ''        |
		| 'ДляПроверкаРаботыУсловий8'                                           | 'Success' |
		| 'Если "Истина" Тогда'                                                 | 'Success' |
		| 'Иначе'                                                               | ''        |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' | ''        |





	
	
	
Сценарий: Проверка работы условий 7
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий7"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                        | 'Статус'  |
		| 'ДляПроверкаРаботыУсловий7.feature'                                   | ''        |
		| 'ДляПроверкаРаботыУсловий7'                                           | ''        |
		| 'ДляПроверкаРаботыУсловий7'                                           | 'Success' |
		| 'Если "Истина" Тогда'                                                 | 'Success' |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной"' | 'Success' |
		| 'Иначе'                                                               | ''        |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной"' | ''        |




	
	
	
	
Сценарий: Проверка работы условий 6
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий6"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Имя процедуры'                          | 'Статус'  |
		| ''                                       | ''        |
		| ''                                       | ''        |
		| ''                                       | 'Success' |
		| ''                                       | ''        |
		| 'Условие'                                | 'Success' |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | 'Success' |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | 'Success' |




		
	

Сценарий: Проверка работы условий 5
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий5"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Имя процедуры'                          | 'Статус'  |
		| ''                                       | ''        |
		| ''                                       | ''        |
		| ''                                       | 'Success' |
		| 'ЯДелаюРаз'                              | 'Success' |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | 'Success' |
		| 'Условие'                                | 'Success' |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | 'Success' |
		| ''                                       | ''        |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | ''        |



	
	
	

Сценарий: Проверка работы условий 4
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий4"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Имя процедуры'                          | 'Статус'  |
		| ''                                       | ''        |
		| ''                                       | ''        |
		| ''                                       | 'Success' |
		| ''                                       | ''        |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | 'Success' |
		| 'Условие'                                | 'Success' |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | 'Success' |
		| 'ДляКаждойСтрокиТаблицыЯВыполняю'        | 'Success' |
		| ''                                       | ''        |
		| ''                                       | ''        |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | 'Success' |
		| ''                                       | ''        |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | ''        |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | 'Success' |




		
	
	
Сценарий: Проверка работы условий 3
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий3"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Имя процедуры'                                  | 'Статус'  |
		| ''                                               | ''        |
		| ''                                               | ''        |
		| ''                                               | 'Success' |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную'         | 'Success' |
		| 'СлужебноеУсловиеПринимающееТаблицуGherkinТогда' | 'Success' |
		| ''                                               | ''        |
		| 'ЯВыполняюКодВстроенногоЯзыка'                   | 'Success' |
		| ''                                               | ''        |
		| ''                                               | ''        |
		| 'Условие'                                        | ''        |
		| 'ЯВыполняюКодВстроенногоЯзыка'                   | ''        |
		| ''                                               | ''        |
		| ''                                               | ''        |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную'         | 'Success' |
		| 'ЯВывожуЗначениеПеременной'                      | 'Success' |



	

	

	
	
Сценарий: Проверка работы условий 2
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий2"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Имя процедуры'                          | 'Статус'  |
		| ''                                       | ''        |
		| ''                                       | ''        |
		| ''                                       | 'Success' |
		| 'Условие'                                | 'Success' |
		| 'Условие'                                | 'Success' |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | 'Success' |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | 'Success' |
		| 'Условие'                                | 'Success' |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | ''        |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | ''        |
		| ''                                       | ''        |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | ''        |
		| 'Условие'                                | 'Success' |
		| 'ЯВызываюИсключение'                     | ''        |



	
	
	
Сценарий: Проверка работы условий 1
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаРаботыУсловий1"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Имя процедуры'                          | 'Статус'  |
		| ''                                       | ''        |
		| ''                                       | ''        |
		| ''                                       | 'Success' |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | 'Success' |
		| 'Условие'                                | 'Success' |
		| 'Условие'                                | 'Success' |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | 'Success' |
		| ''                                       | ''        |
		| 'ЯЗапоминаюЗначениеВыраженияВПеременную' | ''        |
		| 'Условие'                                | 'Success' |
		| 'ЯВызываюИсключение'                     | ''        |



	