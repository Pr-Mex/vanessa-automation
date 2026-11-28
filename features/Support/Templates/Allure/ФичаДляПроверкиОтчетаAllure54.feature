# language: ru
# encoding: utf-8

@IgnoreOnCIMainBuild
@tree

Функциональность: Маскирование секретов в отчёте Allure

Сценарий: Литеральный пароль и строка соединения
	И я добавляю информацию в лог 'Пароль: "SECRET_LEAK_12345"'
	И я добавляю информацию в лог 'File="base";Ur="Admin";Pwd="SECRET_LEAK_12345";'
	И я добавляю информацию в лог 'json {"password": "SECRET_LEAK_12345"}'
	И я вызываю исключение 'Пароль: "SECRET_LEAK_12345"'
