# language: ru
# encoding: utf-8
#parent uf:
@UF1_загрузка_и_обработка_features
#parent ua:
@UA16_парсить_features

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb



Функционал: Проверка чтения тега tree, когда язык фичи на другом языке

Как разработчик
Я хочу чтобы корректно читался тег tree для фич на любых языках
Чтобы я мог использовать тег tree

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	
Сценарий: Проверка чтения тега tree, когда язык фичи на другом языке
	Когда Я открываю VanessaAutomation в режиме TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкаТегаTreeПеревод"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	Тогда таблица формы с именем "ДеревоТестов" содержит строки:
		| 'Наименование'                         |
		| 'ДляПроверкаТегаTreeПеревод.feature'   |
		| '<descrierea funcționalității>'        |
		| '<descrierea scenariului>'             |
		| 'Și Eu butonez "Salvare şi închidere"' |
		| 'Comentariu 001'                       |