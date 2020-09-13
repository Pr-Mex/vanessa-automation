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


Функциональность: Работа с кнопками смены темы

    Как разработчик
    Я хочу чтобы в редакторе корректно работали кнопки смены темы
    Чтобы я мог использовать эти кнопки

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'




Сценарий: Работа с кнопками смены темы

	
	И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

	И я нажимаю на кнопку с именем 'VanessaEditorТема_1c'
	И Пауза 1
	И я нажимаю на кнопку с именем 'VanessaEditorТема_vs'
	И Пауза 1
	И я нажимаю на кнопку с именем 'VanessaEditorТема_vsdark'
	И Пауза 1
	И я нажимаю на кнопку с именем 'VanessaEditorТема_hcblack'
	И Пауза 1
	И я нажимаю на кнопку с именем 'VanessaEditorТема_vs'
	И Пауза 1
	
	Тогда не появилось окно предупреждения системы
	
