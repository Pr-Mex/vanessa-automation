# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA25_Макеты_для_отчетов_о_выполнении

@IgnoreOnCIMainBuild
@ExportScenarios

Функциональность: Тестовая фича, проверяющая генерацию отчета Allure часть 26 Export
 

Сценарий: AllureСценарий26Export
	* Группа3
			Если 'Истина'Тогда
				Попытка
					И Я вызываю исключение "Текст исключения"
				Исключение	
					И Я запоминаю значение выражения 'Строка(2+2)' в переменную "ИмяПеременной2"
