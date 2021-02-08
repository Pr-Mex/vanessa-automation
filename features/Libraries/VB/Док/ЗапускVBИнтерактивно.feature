# language: ru
# encoding: utf-8
#parent uf:
@UF10_Запуск_VA
#parent ua:
@UA35_запускать_интерактивно

@IgnoreOnCIMainBuild
@ExportScenarios


Функционал: Запуск Vanessa-Behavior интерактивно
	Как Разработчик
	Я Хочу чтобы я мог открыть обработку Vanessa-Behavior интерактивно
	Чтобы я мог потом в ней запускать feature файлы
 
	
Сценарий: Я запускаю Vanessa-Behavior интерактивно

	Когда Я нажимаю на кнопку диалога выбора файлов
	И в открывшемся окне я указываю путь к обработке Vanessa-behavior.epf 