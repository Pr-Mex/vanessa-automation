# encoding: utf-8
# language: ru

@IgnoreOnCIMainBuild
@DocumentationBuild


Функционал: Открытие формы vanessa-behavoir
	Как Разработчик
	Я Хочу чтобы я мог открыть основную форму обработки Vanessa-behavior.epf 
	Чтобы я мог использовать vanessa-behavior.epf в своей повседневной работе
 

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
 
Сценарий: Открытие основной формы
	Когда Я нажимаю на кнопку диалога выбора файлов
	И в открывшемся окне я указываю путь к обработке Vanessa-behavior.epf 
	Тогда открылось окно "*Vanessa Behavior"

