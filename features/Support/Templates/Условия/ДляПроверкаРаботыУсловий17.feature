# language: ru

@IgnoreOnCIMainBuild


Функциональность: ДляПроверкаРаботыУсловий17

Сценарий: ДляПроверкаРаботыУсловий17
		Если Файл "C:\Temp\Exchange" существует тогда
		Иначе
			Тогда я создаю каталог "C:\Temp\Exchange"

		Если Файл "C:\Temp\Exchange\Settings" существует тогда
		Иначе
			Тогда я создаю каталог "C:\Temp\Exchange\Settings"