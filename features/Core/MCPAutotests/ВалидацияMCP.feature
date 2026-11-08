# language: ru
# encoding: utf-8

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
