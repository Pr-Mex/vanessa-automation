# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316

@ServerCodeCoverage


Функциональность: Работа с кнопками поиска

    Как разработчик
    Я хочу чтобы в редакторе корректно работали кнопки поиска
    Чтобы я мог использовать эти кнопки

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'




Сценарий: Работа с кнопками поиска

	
	И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

	* Нажимаем на кнопки поиска и проверяем что не появилось окно исключения

		И я нажимаю на кнопку с именем 'VanessaEditorEditFind'
		И Пауза 1
		И я нажимаю на кнопку с именем 'VanessaEditorEditFindPrevious'
		И Пауза 1
		И я нажимаю на кнопку с именем 'VanessaEditorEditFindNext'
		И Пауза 1
		И я нажимаю на кнопку с именем 'VanessaEditorEditReplace'
		И Пауза 1
		Тогда не появилось окно предупреждения системы
		

	* Закрытие клиента тестирования
		И я закрыл все окна клиентского приложения
		И я закрываю сеанс TESTCLIENT
