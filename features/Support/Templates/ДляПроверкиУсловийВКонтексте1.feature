#language: ru

@IgnoreOnCIMainBuild
@tree


Функционал: тест воспроизведения неотработки запуска одного сценария

Контекст:
	Если "НЕ Истина" тогда
		И Я запоминаю значение выражения "1" в переменную "СлужебнаяПеременная" глобально

Сценарий: Сценарий1
	Дано Я запоминаю значение выражения "2" в переменную "СлужебнаяПеременная" глобально
	Дано Я запоминаю значение выражения "3" в переменную "СлужебнаяПеременная" глобально
	
