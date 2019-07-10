# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb


@tree

Функционал: Проверка подключения уже подключенного TestClient

Как разработчик
Я хочу чтобы корректно переподключать TestClient
Чтобы TestClient не открывался каждый раз новый


Сценарий: Проверка подключения уже подключенного TestClient
		
		Дано Подключение одного TestClient в специальном сеансе
				#Дано Я запоминаю количество открытых сеансов 1С в переменную "КоличествоНачальное"
			
				Когда я открыл форму VanessaBehavoir в режиме самотестирования
				И я скопировал каталоги библиотек во второй экземпляр VanessaBehavoir
				И я загрузил специальную тестовую фичу "ПроверкаПодключенияTestClient1"
				И в тестируемом экземпляре Ванессы у поля "ФлагСценарииЗагружены" я жду значения "Да" в течение 20 секунд
				И в тестируемом экземпляре я нажал на кнопку "ВыполнитьСценарии"
				#эта фича должна подключить TestClient "Кладовщик"
				И в тестируемом экземпляре Ванессы у поля "ФлагСценарииВыполнены" я жду значения "Да" в течение 20 секунд
				И я запоминаю данные подключения сеанса "Кладовщик" из тестируемого экземпляра в переменную "ДанныеПодключения"
				И я закрываю тестируемый экземпляр VanessaBehavoir

				#И Я запоминаю количество открытых сеансов 1С в переменную "КоличествоНачальноеПлюсОдин"
				#И выражение внутреннего языка "Контекст.КоличествоНачальноеПлюсОдин - Контекст.КоличествоНачальное = 1" Истинно

		
		И затем переподключение того же TestClient в специальном сеансе
				Затем я открыл форму VanessaBehavoir в режиме самотестирования
				И я скопировал каталоги библиотек во второй экземпляр VanessaBehavoir
				И я добавил в таблицу TestClient запись с теми же данными подключения "ДанныеПодключения"
				И я сбросил флаг в тестируемом экземпляре "ПроисходилЗапускTescClient"
				И я загрузил специальную тестовую фичу "ПроверкаПодключенияTestClient1"
				И в тестируемом экземпляре Ванессы у поля "ФлагСценарииЗагружены" я жду значения "Да" в течение 20 секунд
				#тут должно быть переподключеие уже открытого TestClient "Кладовщик"
				И в тестируемом экземпляре я нажал на кнопку "ВыполнитьСценарии"
				И в тестируемом экземпляре Ванессы у поля "ФлагСценарииВыполнены" я жду значения "Да" в течение 20 секунд
				И я убедился, что флаг "ПроисходилЗапускTescClient" снят
				И я закрываю тестируемый экземпляр VanessaBehavoir
				
				#И Я запоминаю значение выражения "Ванесса.ПолучитьМассивPIDОкон1С().Количество()" в переменную "КоличествоНачальноеПлюсОдинВторойРаз"
				#И выражение внутреннего языка "Контекст.КоличествоНачальноеПлюсОдинВторойРаз - Контекст.КоличествоНачальное = 1" Истинно
		
		
		И затем закрытие TestClient в специальном сеансе
				Затем я открыл форму VanessaBehavoir в режиме самотестирования
				И я скопировал каталоги библиотек во второй экземпляр VanessaBehavoir
				И я добавил в таблицу TestClient запись с теми же данными подключения "ДанныеПодключения"
				И я загрузил специальную тестовую фичу "ПроверкаПодключенияTestClient2"
				И в тестируемом экземпляре Ванессы у поля "ФлагСценарииЗагружены" я жду значения "Да" в течение 20 секунд
				#эта фича должна закрыть TestClient "Кладовщик"
				И в тестируемом экземпляре я нажал на кнопку "ВыполнитьСценарии"
				
				#т.к. может окно клиента закрыться, но процесс ещё остаётся в памяти.
				И в тестируемом экземпляре Ванессы у поля "ФлагСценарииВыполнены" я жду значения "Да" в течение 40 секунд
				
				И я закрываю тестируемый экземпляр VanessaBehavoir
						
				#И Я запоминаю количество открытых сеансов 1С в переменную "КоличествоФинальное"
				#И выражение внутреннего языка "Контекст.КоличествоНачальное = Контекст.КоличествоФинальное" Истинно
				
				
				
				
Сценарий: Удаление служебных пользователей. Проверка подключения уже подключенного TestClient
		Когда Я удаляю пользователя "Пользователь1"
		И     Я удаляю пользователя "Пользователь2"
		И в таблице клиентов тестирования я активизирую строку 'Этот клиент'
					