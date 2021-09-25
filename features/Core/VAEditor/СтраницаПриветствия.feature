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

Функциональность: Страница приветствия
    Как пользователь 
    Я хочу чтобы открывалась страница "Добро пожаловать"

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'

Сценарий: Работа страницы приветствия
	И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

	* Нажимаем на кнопку Приветствие
		И я нажимаю на кнопку с именем 'VanessaEditorWelcome'
		И Пауза 1
		Тогда не появилось окно предупреждения системы

	* Проверяем текущую вкладку редактора
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
		"""bsl
		Сообщить(VanessaTabs.current.title);
		Сообщить(Элементы.VanessaEditor.Document.defaultView.document.querySelector("H1").innerText);
		Сообщить(Элементы.VanessaEditor.Document.defaultView.document.querySelector("H2").innerText);
		"""
		И я очищаю окно сообщений пользователю
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		Тогда в логе сообщений TestClient есть строка "Добро пожаловать!"
		Тогда в логе сообщений TestClient есть строка "Vanessa Automation"
		Тогда в логе сообщений TestClient есть строка "Тесты есть!"

	* Нажимаем первую ссылку на странице приветствия
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
		"""bsl
		Элементы.VanessaEditor.Document.defaultView.document.querySelector("a").click();
		Сообщить(VanessaTabs.current.title);
		"""
		И я очищаю окно сообщений пользователю
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		Тогда в логе сообщений TestClient есть строка "Новый сценарий.feature"

