# language: ru

@IgnoreOnCIMainBuild
@ExportScenarios
@tree


Функциональность: ДляПроверкаАпострофИПараметрПодсценария

 
Сценарий: Для проверка апостроф и параметр подсценария один "Параметр1"
	И шаг принимающий параметр "Параметр1"

Сценарий: Для проверка апостроф и параметр подсценария два "Пара\'метр2"
	И шаг принимающий параметр "Пара\'метр2"

Сценарий: Для проверка апостроф и параметр подсценария три 'Пара\'метр3'
	И шаг принимающий параметр 'Пара\'метр3'


Сценарий: Для проверка апостроф и параметр подсценария

	И Для проверка апостроф и параметр подсценария один "It\'s time"
	И Для проверка апостроф и параметр подсценария два  "It\'s time"
	И Для проверка апостроф и параметр подсценария три  "It\'s time"
