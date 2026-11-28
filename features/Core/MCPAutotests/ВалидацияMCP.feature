# language: ru
# encoding: utf-8

@uf-part2
@mcp
@mcp-noclient
@IgnoreOnWeb
@IgnoreOnOFBuilds

Функционал: MCP-инструменты: валидация параметров

	Контекст:
		Дано я подготавливаю тестовый транспорт MCP

	@mcp-validation
	Сценарий: manage_editor требует action
		Когда я вызываю MCP-инструмент "manage_editor" в режиме "Проверка"
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"

	@mcp-validation
	Сценарий: manage_form_elements требует action
		Когда я вызываю MCP-инструмент "manage_form_elements" в режиме "Проверка"
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"

	@mcp-validation
	Сценарий: manage_test_client_profiles требует action
		Когда я вызываю MCP-инструмент "manage_test_client_profiles" в режиме "Проверка"
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"

	@mcp-validation
	Сценарий: manage_test_client_profiles отвергает неизвестное действие
		Когда я вызываю MCP-инструмент "manage_test_client_profiles" в режиме "Проверка" с параметрами
			| Имя | Значение |
			| action | __unknown__ |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"

	@mcp-validation
	Сценарий: user_actions_recording отвергает неизвестное действие
		Когда я вызываю MCP-инструмент "user_actions_recording" в режиме "Проверка" с параметрами
			| Имя | Значение |
			| action | __unknown__ |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "Недопустимое значение action"

	@mcp-validation
	Сценарий: manage_variables отвергает неизвестное действие
		Когда я вызываю MCP-инструмент "manage_variables" в режиме "Проверка" с параметрами
			| Имя | Значение |
			| action | __unknown__ |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"

	@mcp-validation
	Сценарий: get_form_analysis не принимает only_visible для gherkin
		Когда я вызываю MCP-инструмент "get_form_analysis" в режиме "Проверка" с параметрами
			| Имя | Значение |
			| format | gherkin |
			| only_visible | true |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "only_visible"

	@mcp-validation
	Сценарий: get_form_analysis не принимает max_depth для buttons
		Когда я вызываю MCP-инструмент "get_form_analysis" в режиме "Проверка" с параметрами
			| Имя | Значение |
			| format | buttons |
			| max_depth | 1 |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "max_depth"

	@mcp-validation
	Сценарий: find_form_elements отвергает небулево only_visible
		Когда я вызываю MCP-инструмент "find_form_elements" в режиме "Проверка" с параметрами
			| Имя | Значение |
			| search_string | * |
			| only_visible | maybe |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "only_visible"
