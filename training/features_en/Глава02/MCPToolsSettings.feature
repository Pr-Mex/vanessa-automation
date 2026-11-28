# language: ru

@lessons

Функционал: Интерактивная справка. Настройка инструментов MCP.

Сценарий: Настройка инструментов MCP

	* This lesson explains how to choose which MCP tools Vanessa Automation registers. The set is configured on the MCP tab in VA settings.
		И я открываю Vanessa Automation в режиме обучения
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаAIИнструментыMCP' UI Automation
		И Пауза 1

	* The tree ТаблицаНастроекMCPИнструментов lists available tools. The first level is a group, the second level is the tools. Groups: "Scenario authoring", "Manual testing", "UI Automation", "Event log", "Vanessa settings", "Voice", "Clipboard", "OS processes", "Other". The first column ТаблицаНастроекMCPИнструментовВключен controls registration. The columns ТаблицаНастроекMCPИнструментовИмя and ТаблицаНастроекMCPИнструментовОписание show the group or tool name and a short description. Tools hard-disabled in VA are not shown.
		И я делаю подсветку нескольких элементов VA с их заголовком "MCP tools tree" UI Automation
			| 'Имя'                                         |
			| 'ТаблицаНастроекMCPИнструментов'              |
			| 'ТаблицаНастроекMCPИнструментовВключен'       |
			| 'ТаблицаНастроекMCPИнструментовИмя'           |
			| 'ТаблицаНастроекMCPИнструментовОписание'      |

	* The buttons on the tree command bar are shown as pictures, and a tooltip appears on hover. MCPУстановитьВсе enables all available tools, MCPСнятьВсе disables them. MCPОбновитьСписок rebuilds the tree from the current registry. The group checkbox enables or disables all tools in that group at once. Tree rows cannot be deleted: the "Delete" context menu command is rejected.
		И я делаю подсветку нескольких элементов VA с их заголовком "MCP tools settings commands" UI Automation
			| 'Имя'                    |
			| 'MCPУстановитьВсе'       |
			| 'MCPСнятьВсе'            |
			| 'MCPОбновитьСписок'      |

	* MCPПрименитьВMCP re-registers the set in a running server. MCPЗагрузитьИзФайла and MCPСохранитьВФайл load and save settings as JSON. The settings are also saved by the gear "Save settings" button and can be passed through VAParams.
		И я делаю подсветку нескольких элементов VA с их заголовком "Apply and files" UI Automation
			| 'Имя'                    |
			| 'MCPПрименитьВMCP'       |
			| 'MCPЗагрузитьИзФайла'    |
			| 'MCPСохранитьВФайл'      |

	* That is all. Continue with the next interactive help lesson.
		И Пауза 1
