# language: ru
#parent uf:
@UF1_загрузка_фиче-файлов
#parent ua:
@UA9_загружать_фиче-файлы

@IgnoreOnCIMainBuild
@ExportScenarios


Функционал: Загрузка одного feature файла интерактивно
	Как Разработчик
	Я Хочу чтобы я мог загрузить один feature файл интерактивно
	Чтобы я мог потом его запустить на выполнение
 
	
Сценарий: Я загружаю один feature файл "ИмяФайла"

	Когда Я нажимаю на кнопку Загрузить одну фичу
	Тогда в открывшемся окне я указываю путь к фиче "ИмяФайла"