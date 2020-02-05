# language: ru
# encoding: utf-8
#parent ua:
@UA24_Макеты_для_условий
#parent uf:
@UF9_Вспомогательные_фичи

@IgnoreOnCIMainBuild


Функциональность: ДляПроверкаРаботыУсловий17

Сценарий: ДляПроверкаРаботыУсловий17
		Если Файл "C:\Temp\Exchange" существует тогда
		Иначе
			Тогда я создаю каталог "C:\Temp\Exchange"

		Если Файл "C:\Temp\Exchange\Settings" существует тогда
		Иначе
			Тогда я создаю каталог "C:\Temp\Exchange\Settings"