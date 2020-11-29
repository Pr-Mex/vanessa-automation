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


Функциональность: Кнопка сбросить раскраску строк

    Как разработчик
    Я хочу чтобы в редакторе была возможность сбросить раскраску строк
    Чтобы я мог управлять раскраской строк

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'




Сценарий: Кнопка сбросить раскраску строк

	
	И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	И я нажимаю на кнопку с именем 'VanessaEditorОчиститьРаскраскуСтрок'
	Тогда не появилось окно предупреждения системы
	


