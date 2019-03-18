# language: ru

@tree

@IgnoreOnOFBuilds
@IgnoreOn82Builds
@IgnoreOnWeb

Функциональность: Подключение экспортных сценариев на других языках
 

	
	
Сценарий: Подключение экспортного сценария на английском языке
	Дано Я открываю VanessaAutomation в режиме TestClient 
	
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ПроверкаExportScenariosEN"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                               |
		| 'ПроверкаExportScenariosEN.feature'                                          |
		| '<feature description>'                                                      |
		| '<script description>'                                                       |
		| 'And In the command interface I select "Основная" "Справочник1"'             |
		| 'And I call export scenario en "Param1"'                                     |
		| 'And In the command interface I select "ComandPanel" "FunctionalPanel"'      |


	
