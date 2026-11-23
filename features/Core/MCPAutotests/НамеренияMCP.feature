# language: ru
# encoding: utf-8

@uf-part2
@mcp
@mcp-noclient
@IgnoreOnWeb
@IgnoreOnOFBuilds

Функционал: MCP-инструменты: намерения

	Контекст:
		Дано я подготавливаю тестовый транспорт MCP

@mcp-registry
	Сценарий: Контракт реестра MCP
		Тогда контракт реестра MCP соблюдён

@mcp-metatest
	Сценарий: Каждый MCP-инструмент покрыт тестом
		Тогда я проверяю, что каждый MCP-инструмент покрыт тестом

@mcp-smoke
	Сценарий: Все MCP-инструменты сообщают намерение
		Тогда все MCP-инструменты сообщают намерение

@tool:get_all_steps_in_json_format
	Сценарий: get_all_steps_in_json_format сообщает намерение
		Когда я вызываю MCP-инструмент "get_all_steps_in_json_format" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "mcp.steps.read"
		И MCP-инструмент не выполнял реальных действий

@tool:search_for_steps_by_keywords
	Сценарий: search_for_steps_by_keywords сообщает намерение
		Когда я вызываю MCP-инструмент "search_for_steps_by_keywords" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "mcp.steps.read"
		И MCP-инструмент не выполнял реальных действий

@tool:get_current_date
	Сценарий: get_current_date сообщает намерение
		Когда я вызываю MCP-инструмент "get_current_date" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "mcp.date.read"
		И MCP-инструмент не выполнял реальных действий

@tool:get_vanessa_automation_state
	Сценарий: get_vanessa_automation_state сообщает намерение
		Когда я вызываю MCP-инструмент "get_vanessa_automation_state" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.state.read"
		И MCP-инструмент не выполнял реальных действий

@tool:check_syntax
	Сценарий: check_syntax сообщает намерение
		Когда я вызываю MCP-инструмент "check_syntax" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.editor.read"
		И MCP-инструмент не выполнял реальных действий

@tool:open_feature_file
	Сценарий: open_feature_file сообщает намерение
		Когда я вызываю MCP-инструмент "open_feature_file" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.editor.write"
		И MCP-инструмент не выполнял реальных действий

@tool:load_features
	Сценарий: load_features сообщает намерение
		Когда я вызываю MCP-инструмент "load_features" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.editor.write"
		И MCP-инструмент не выполнял реальных действий

@tool:get_editor_state
	Сценарий: get_editor_state сообщает намерение
		Когда я вызываю MCP-инструмент "get_editor_state" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.editor.read"
		И MCP-инструмент не выполнял реальных действий

@tool:manage_editor
	Сценарий: manage_editor сообщает намерение
		Когда я вызываю MCP-инструмент "manage_editor" в режиме "Намерение" с параметрами
			| Имя | Значение |
			| action | activate_tab |
		Тогда MCP-инструмент вернул намерение "va.editor.write"
		И в намерении MCP-инструмента поле "action" равно "activate_tab"
		И MCP-инструмент не выполнял реальных действий

@tool:select_scenario
	Сценарий: select_scenario сообщает намерение
		Когда я вызываю MCP-инструмент "select_scenario" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.editor.write"
		И MCP-инструмент не выполнял реальных действий

@tool:select_step
	Сценарий: select_step сообщает намерение
		Когда я вызываю MCP-инструмент "select_step" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.editor.write"
		И MCP-инструмент не выполнял реальных действий

@tool:get_active_window_data
	Сценарий: get_active_window_data сообщает намерение
		Когда я вызываю MCP-инструмент "get_active_window_data" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "client.window.read"
		И MCP-инструмент не выполнял реальных действий

@tool:get_window_list_testclient
	Сценарий: get_window_list_testclient сообщает намерение
		Когда я вызываю MCP-инструмент "get_window_list_testclient" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "client.window.list"
		И MCP-инструмент не выполнял реальных действий

@tool:window_management
	Сценарий: window_management сообщает намерение
		Когда я вызываю MCP-инструмент "window_management" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "client.window.manage"
		И MCP-инструмент не выполнял реальных действий

@tool:get_form_analysis
	Сценарий: get_form_analysis сообщает намерение
		Когда я вызываю MCP-инструмент "get_form_analysis" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "client.form.read"
		И MCP-инструмент не выполнял реальных действий

@tool:execute_step_from_text
	Сценарий: execute_step_from_text сообщает намерение
		Когда я вызываю MCP-инструмент "execute_step_from_text" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "client.step.execute"
		И MCP-инструмент не выполнял реальных действий

@tool:execute_feature_step
	Сценарий: execute_feature_step сообщает намерение
		Когда я вызываю MCP-инструмент "execute_feature_step" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "client.step.execute"
		И MCP-инструмент не выполнял реальных действий

@tool:manage_test_client
	Сценарий: manage_test_client сообщает намерение
		Когда я вызываю MCP-инструмент "manage_test_client" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "client.connect"
		И MCP-инструмент не выполнял реальных действий

@tool:run_scenario
	Сценарий: run_scenario сообщает намерение
		Когда я вызываю MCP-инструмент "run_scenario" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.run"
		И MCP-инструмент не выполнял реальных действий

@tool:stop_scenario
	Сценарий: stop_scenario сообщает намерение
		Когда я вызываю MCP-инструмент "stop_scenario" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.stop"
		И MCP-инструмент не выполнял реальных действий

@tool:get_test_results
	Сценарий: get_test_results сообщает намерение
		Когда я вызываю MCP-инструмент "get_test_results" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.state.read"
		И MCP-инструмент не выполнял реальных действий

@tool:get_window_list_os
	Сценарий: get_window_list_os сообщает намерение
		Когда я вызываю MCP-инструмент "get_window_list_os" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "os.screenshot"
		И MCP-инструмент не выполнял реальных действий

@tool:get_window_screenshot_os
	Сценарий: get_window_screenshot_os сообщает намерение
		Когда я вызываю MCP-инструмент "get_window_screenshot_os" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "os.screenshot"
		И MCP-инструмент не выполнял реальных действий

@tool:manage_variables
	Сценарий: manage_variables сообщает намерение
		Когда я вызываю MCP-инструмент "manage_variables" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.variables.read"
		И MCP-инструмент не выполнял реальных действий

@tool:get_va_settings
	Сценарий: get_va_settings сообщает намерение
		Когда я вызываю MCP-инструмент "get_va_settings" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.settings.read"
		И MCP-инструмент не выполнял реальных действий

@tool:manage_va_settings
	Сценарий: manage_va_settings сообщает намерение
		Когда я вызываю MCP-инструмент "manage_va_settings" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.settings.write"
		И MCP-инструмент не выполнял реальных действий

@tool:manage_breakpoints
	Сценарий: manage_breakpoints сообщает намерение
		Когда я вызываю MCP-инструмент "manage_breakpoints" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.breakpoints.write"
		И MCP-инструмент не выполнял реальных действий

@tool:get_info_about_line_scenario
	Сценарий: get_info_about_line_scenario сообщает намерение
		Когда я вызываю MCP-инструмент "get_info_about_line_scenario" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.editor.read"
		И MCP-инструмент не выполнял реальных действий

@tool:get_data_from_knowledge_base
	Сценарий: get_data_from_knowledge_base сообщает намерение
		Когда я вызываю MCP-инструмент "get_data_from_knowledge_base" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "mcp.knowledge.read"
		И MCP-инструмент не выполнял реальных действий

@tool:frequently_used_steps
	Сценарий: frequently_used_steps сообщает намерение
		Когда я вызываю MCP-инструмент "frequently_used_steps" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "mcp.steps.read"
		И MCP-инструмент не выполнял реальных действий

@tool:manage_command_interface
	Сценарий: manage_command_interface сообщает намерение
		Когда я вызываю MCP-инструмент "manage_command_interface" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "client.window.manage"
		И MCP-инструмент не выполнял реальных действий

@tool:get_extension_list
	Сценарий: get_extension_list сообщает намерение
		Когда я вызываю MCP-инструмент "get_extension_list" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "mcp.extension.list"
		И MCP-инструмент не выполнял реальных действий

@tool:manage_test_client_profiles
	Сценарий: manage_test_client_profiles сообщает намерение
		Когда я вызываю MCP-инструмент "manage_test_client_profiles" в режиме "Намерение" с параметрами
			| Имя | Значение |
			| action | add |
		Тогда MCP-инструмент вернул намерение "mcp.client.manage"
		И в намерении MCP-инструмента поле "action" равно "add"
		И MCP-инструмент не выполнял реальных действий

@tool:get_environment_data
	Сценарий: get_environment_data сообщает намерение
		Когда я вызываю MCP-инструмент "get_environment_data" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "mcp.state.read"
		И MCP-инструмент не выполнял реальных действий

@tool:voice_notification
	Сценарий: voice_notification сообщает намерение
		Когда я вызываю MCP-инструмент "voice_notification" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "audio.play"
		И MCP-инструмент не выполнял реальных действий

@tool:get_object_attributes
	Сценарий: get_object_attributes сообщает намерение
		Когда я вызываю MCP-инструмент "get_object_attributes" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "db.read"
		И MCP-инструмент не выполнял реальных действий

@tool:get_table_data
	Сценарий: get_table_data сообщает намерение
		Когда я вызываю MCP-инструмент "get_table_data" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "db.read"
		И MCP-инструмент не выполнял реальных действий

@tool:save_table_document_to_file
	Сценарий: save_table_document_to_file сообщает намерение
		Когда я вызываю MCP-инструмент "save_table_document_to_file" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "file.write"
		И MCP-инструмент не выполнял реальных действий

@tool:get_form_element_data
	Сценарий: get_form_element_data сообщает намерение
		Когда я вызываю MCP-инструмент "get_form_element_data" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "client.form.read"
		И MCP-инструмент не выполнял реальных действий

@tool:manage_form_elements
	Сценарий: manage_form_elements сообщает намерение
		Когда я вызываю MCP-инструмент "manage_form_elements" в режиме "Намерение" с параметрами
			| Имя | Значение |
			| action | click_button |
			| element_name | КнопкаОК |
		Тогда MCP-инструмент вернул намерение "client.form.action"
		И в намерении MCP-инструмента поле "action" равно "click_button"
		И в намерении MCP-инструмента поле "element_name" равно "КнопкаОК"
		И MCP-инструмент не выполнял реальных действий

@tool:execute_form_actions
	Сценарий: execute_form_actions сообщает намерение
		Когда я вызываю MCP-инструмент "execute_form_actions" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "client.form.chain"
		И MCP-инструмент не выполнял реальных действий

@tool:user_actions_recording
	Сценарий: user_actions_recording сообщает намерение
		Когда я вызываю MCP-инструмент "user_actions_recording" в режиме "Намерение" с параметрами
			| Имя | Значение |
			| action | start |
		Тогда MCP-инструмент вернул намерение "mcp.client.manage"
		И в намерении MCP-инструмента поле "action" равно "start"
		И MCP-инструмент не выполнял реальных действий

@tool:close_test_client
	Сценарий: close_test_client сообщает намерение
		Когда я вызываю MCP-инструмент "close_test_client" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "client.connect"
		И MCP-инструмент не выполнял реальных действий

@tool:get_process_list_os
	Сценарий: get_process_list_os сообщает намерение
		Когда я вызываю MCP-инструмент "get_process_list_os" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "os.process.list"
		И MCP-инструмент не выполнял реальных действий

@tool:activate_process_os
	Сценарий: activate_process_os сообщает намерение
		Когда я вызываю MCP-инструмент "activate_process_os" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "os.window.activate"
		И MCP-инструмент не выполнял реальных действий

@tool:manage_uiautomation
	Сценарий: manage_uiautomation сообщает намерение
		Когда я вызываю MCP-инструмент "manage_uiautomation" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "os.uiautomation.click"
		И MCP-инструмент не выполнял реальных действий

@tool:speak_text
	Сценарий: speak_text сообщает намерение
		Когда я вызываю MCP-инструмент "speak_text" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "audio.synthesize"
		И MCP-инструмент не выполнял реальных действий

@tool:input_text_to_active_field
	Сценарий: input_text_to_active_field сообщает намерение
		Когда я вызываю MCP-инструмент "input_text_to_active_field" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "os.input.text"
		И MCP-инструмент не выполнял реальных действий

@tool:manage_clipboard
	Сценарий: manage_clipboard сообщает намерение
		Когда я вызываю MCP-инструмент "manage_clipboard" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "clipboard.write"
		И MCP-инструмент не выполнял реальных действий

@tool:manage_app
	Сценарий: manage_app сообщает намерение
		Когда я вызываю MCP-инструмент "manage_app" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "mcp.app.manage"
		И MCP-инструмент не выполнял реальных действий

@tool:get_event_log_manager
	Сценарий: get_event_log_manager сообщает намерение
		Когда я вызываю MCP-инструмент "get_event_log_manager" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "db.read"
		И MCP-инструмент не выполнял реальных действий

@tool:get_event_log_test_client
	Сценарий: get_event_log_test_client сообщает намерение
		Когда я вызываю MCP-инструмент "get_event_log_test_client" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "mcp.client.read"
		И MCP-инструмент не выполнял реальных действий

@tool:find_form_elements
	Сценарий: find_form_elements сообщает намерение
		Когда я вызываю MCP-инструмент "find_form_elements" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "client.form.read"
		И MCP-инструмент не выполнял реальных действий

@tool:get_form_element_steps
	Сценарий: get_form_element_steps сообщает намерение
		Когда я вызываю MCP-инструмент "get_form_element_steps" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "mcp.steps.read"
		И MCP-инструмент не выполнял реальных действий

@tool:restart_vanessa
	Сценарий: restart_vanessa сообщает намерение
		Когда я вызываю MCP-инструмент "restart_vanessa" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "va.restart"
		И MCP-инструмент не выполнял реальных действий

@tool:get_active_form_element
	Сценарий: get_active_form_element сообщает намерение
		Когда я вызываю MCP-инструмент "get_active_form_element" в режиме "Намерение"
		Тогда MCP-инструмент вернул намерение "client.form.read"
		И MCP-инструмент не выполнял реальных действий

