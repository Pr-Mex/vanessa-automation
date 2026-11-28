# language: ru
# encoding: utf-8

@uf-part2
@mcp
@mcp-noclient
@IgnoreOnWeb
@IgnoreOnOFBuilds

// Проверки execute_form_actions с actions_file.
// Фикстуры лежат в репозитории: features/Core/MCPAutotests/files.
// В actions_file передаётся путь относительно каталога проекта: обработчик
// проверяет его как указано, затем от КаталогПроекта, и читает файл на машине
// менеджера Vanessa Automation.
// Режим "Выполнить" используется потому, что в режиме "Проверка"
// execute_form_actions запрещён: валидный вызов выполнил бы действие.
// Невалидный источник отсекается до проверки клиента тестирования,
// поэтому сценарии не требуют подключённого клиента.

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
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "\'get_list\', \'get\', \'add\', \'edit\', \'delete\'"

	@mcp-validation
	Сценарий: manage_test_client_profiles отвергает неизвестный параметр
		# Проверка неизвестных параметров стоит до проверки action, поэтому
		# action можно не передавать: режим "Проверка" разрешает только
		# отсутствующий или заведомо неверный action.
		Когда я вызываю MCP-инструмент "manage_test_client_profiles" в режиме "Проверка" с параметрами
			| Имя | Значение |
			| connectionString | x |
			| additionalParameters | x |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "connectionString"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "additionalParameters"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "infobase_path"

	@mcp-validation
	Сценарий: manage_test_client_profiles требует confirm для delete
		# Режим "Намерение": проверка confirm стоит до boundary-guard,
		# поэтому ошибка возвращается без реального удаления профиля.
		Когда я вызываю MCP-инструмент "manage_test_client_profiles" в режиме "Намерение" с параметрами
			| Имя | Значение |
			| action | delete |
			| name | __nonexistent__ |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "confirm"

	@mcp-validation
	Сценарий: manage_test_client_profiles отвергает неверный confirm
		Когда я вызываю MCP-инструмент "manage_test_client_profiles" в режиме "Намерение" с параметрами
			| Имя | Значение |
			| action | delete |
			| name | __nonexistent__ |
			| confirm | maybe |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "confirm"

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

	@mcp-validation
	Сценарий: execute_form_actions требует ровно один источник
		Когда я вызываю MCP-инструмент "execute_form_actions" в режиме "Выполнить"
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "actions_json или actions_file"

	@mcp-validation
	Сценарий: execute_form_actions отвергает два источника
		Когда я вызываю MCP-инструмент "execute_form_actions" в режиме "Выполнить" с параметрами
			| Имя | Значение |
			| actions_json | [] |
			| actions_file | features/Core/MCPAutotests/files/actions_click_hyperlink.json |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "только один параметр"

	@mcp-validation
	Сценарий: execute_form_actions считает пустой actions_file отсутствующим
		Когда я вызываю MCP-инструмент "execute_form_actions" в режиме "Выполнить" с параметрами
			| Имя | Значение |
			| actions_file |  |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "Укажите параметр actions_json или actions_file"

	@mcp-validation
	Сценарий: execute_form_actions отвергает несуществующий actions_file
		Когда я вызываю MCP-инструмент "execute_form_actions" в режиме "Выполнить" с параметрами
			| Имя | Значение |
			| actions_file | features/Core/MCPAutotests/files/no_such_file.json |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "не был найден"

	@mcp-validation
	Сценарий: execute_form_actions отвергает каталог в actions_file
		Когда я вызываю MCP-инструмент "execute_form_actions" в режиме "Выполнить" с параметрами
			| Имя | Значение |
			| actions_file | features/Core/MCPAutotests/files |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "а не каталог"

	@mcp-validation
	Сценарий: execute_form_actions отвергает пустой файл действий
		Когда я вызываю MCP-инструмент "execute_form_actions" в режиме "Выполнить" с параметрами
			| Имя | Значение |
			| actions_file | features/Core/MCPAutotests/files/actions_empty.json |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "Файл с действиями пуст."

	@mcp-validation
	Сценарий: execute_form_actions отвергает файл из пробелов
		Когда я вызываю MCP-инструмент "execute_form_actions" в режиме "Выполнить" с параметрами
			| Имя | Значение |
			| actions_file | features/Core/MCPAutotests/files/actions_whitespace.json |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "Файл с действиями пуст."

	@mcp-validation
	Сценарий: execute_form_actions отвергает битый JSON в файле
		Когда я вызываю MCP-инструмент "execute_form_actions" в режиме "Выполнить" с параметрами
			| Имя | Значение |
			| actions_file | features/Core/MCPAutotests/files/actions_bad.json |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "Ошибка парсинга JSON из файла"

	@mcp-validation
	Сценарий: execute_form_actions отвергает объект вместо массива
		Когда я вызываю MCP-инструмент "execute_form_actions" в режиме "Выполнить" с параметрами
			| Имя | Значение |
			| actions_file | features/Core/MCPAutotests/files/actions_object.json |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "должен содержать массив"

	@mcp-validation
	Сценарий: execute_form_actions отвергает пустой массив в файле
		Когда я вызываю MCP-инструмент "execute_form_actions" в режиме "Выполнить" с параметрами
			| Имя | Значение |
			| actions_file | features/Core/MCPAutotests/files/actions_empty_array.json |
		Тогда MCP-инструмент вернул ошибку "INVALID_PARAMS"
		И MCP-инструмент вернул ошибку "INVALID_PARAMS" с текстом, содержащим "Массив действий пуст."
