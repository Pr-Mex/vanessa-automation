# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@IgnoreOn837
//т.к. в 8.3.7 исключение формируется другое

@tree


Функциональность: Проверка формирования файла json с ошибкой


	
Сценарий: Проверка формирования файла json с ошибкой
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	Дано    Я закрыл все окна клиентского приложения

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	И я перехожу к закладке "Сервис"
	И я перехожу к закладке "Отчет о запуске сценариев"
	
	И я устанавливаю флаг 'Формировать скриншот при ошибке'
	И в поле каталог скриншотов я указываю путь к относительному каталогу "tools\ScreenShotsTest"
	
	И я устанавливаю флаг 'Создавать JSON для каждой ошибки'
	И в поле 'Имя каталога для лога ошибок' я ввожу текст 'C:\Temp\ЛогОшибокVA'
	И я перехожу к следующему реквизиту
	И я запоминаю значение поля с именем "ИмяКаталогаЛогОшибок" как "КаталогОшибок"
	
	И я перехожу к закладке "Автоинструкции"
	И В открытой форме в поле "Команда создания скриншотов" я ввожу команду для IrfanView 
	
	И я перехожу к закладке "Основные"
	И я перехожу к закладке "Запуск сценариев"
	
	И я загружаю служебную фичу и устанавливаю настройки
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиФормированияФайлаСОшибкой"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
			
	И в каталоге файлов ошибок в json формате появился 1 файл json
	
	И файл "$НайденноеИмяОшибкиJson$" содержит строки
		| 'Описание: Ошибка компиляции при вычислении выражения или выполнении фрагмента кода' |
	
	

	
Сценарий: Закрыть TestClient, который был открыт из второго TestManager. Проверка формирования файла json с ошибкой
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	Дано Я закрыл все окна клиентского приложения кроме "*Vanessa Automation"
	И я загружаю служебную фичу и устанавливаю настройки
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
			И у элемента "Сценарии выполнены" я жду значения "Да" в течение 20 секунд
	И я закрываю TestClient "TM"	
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'