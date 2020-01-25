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


Функционал: Секция сценарий и тег tree



Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Секция сценарий и тег tree
	Когда Я открываю VanessaAutomation в режиме TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиРаботСекцииСценарий_Тег_tree"
	Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
		И я перехожу к закладке с именем "ГруппаКаталогиБиблиотек"
		И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
		И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Снипет'                                                                            |
		| ''                                                                                  |
		| ''                                                                                  |
		| ''                                                                                  |
		| 'ЯРазвернулВсеВеткиДереваVB()'                                                      |
		| 'ПользователюИБВключитьРоль(Парам01,Парам02)'                                       |
		| 'ЯОткрылСеансTestClientОтИмениСПаролемИлиПодключаюУжеСуществующий(Парам01,Парам02)' |
		| ''                                                                                  |
		| 'ЯОткрылСеансTestClientОтИмениСПаролемИлиПодключаюУжеСуществующий(Парам01,Парам02)' |
		| 'ОткрылосьОкно(Парам01)'                                                            |
		| 'ЯНажимаюНаКнопку(Парам01)'                                                         |
		| ''                                                                                  |
		| 'ЯОткрылСеансTestClientОтИмениСПаролемИлиПодключаюУжеСуществующий(Парам01,Парам02)' |
		| 'ВПанелиРазделовЯВыбираю(Парам01)'                                                  |
	
	