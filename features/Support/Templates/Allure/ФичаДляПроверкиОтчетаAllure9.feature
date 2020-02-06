# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA42_Тестовые_фичи

@IgnoreOnCIMainBuild
@critical

Функциональность: Тестовая фича, проверяющая прикрепление файла к шагу
 


Сценарий: Тестовый сценарий, проверяющий прикрепление файла к шагу
	И Я добавляю к шагу файл из "$КаталогИнструментов$/features/Support/Templates/Allure/ФичаДляПроверкиОтчетаAllure9.feature" с типом "feature"
