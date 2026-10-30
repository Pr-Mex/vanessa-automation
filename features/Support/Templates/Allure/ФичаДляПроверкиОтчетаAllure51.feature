# language: ru
# encoding: utf-8

@IgnoreOnCIMainBuild
@link:https://example.org/task/12

Функциональность: Добавление ссылок из шагов в отчет Allure

Сценарий: Добавление ссылок в отчет Allure
	И я добавляю ссылку в отчет Allure "https://example.org/build/12"
	И я запоминаю строку "https://example.org/report?id=12&name=Тест#details" в переменную "СсылкаДляAllure"
	И я добавляю ссылку в отчет Allure "$СсылкаДляAllure$"
	И я добавляю параметр 'Окружение' со значением 'Тестовая база' в отчёт Allure
