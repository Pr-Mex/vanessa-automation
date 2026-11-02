# language: ru

@lessons

Функционал: Интерактивная справка. Закладка AI.

Сценарий: Закладка AI

* Hi! In this lesson, I will tell you about the AI tab settings. They control the automatic start of the Vanessa Automation MCP server. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаAI' UI Automation
		И Пауза 1
		
		И я делаю подсветку нескольких элементов VA с их заголовком "AI tab settings" UI Automation
			| 'Name'                           |
			| 'ЗапускатьСерверMCPПриЗапускеVA' |
			| 'ПортСервераMCP'                 |
	
* This checkbox determines whether to start the MCP server automatically at Vanessa Automation startup if it is not running yet. The server starts after MCP tools registration and only if the client_mcp extension is installed. If an external plugin has installed its own MCP transport, the setting has no effect.
		И я делаю подсветку нескольких элементов VA с их заголовком "Start MCP server at VA startup" UI Automation
			| 'Name'                           |
			| 'ЗапускатьСерверMCPПриЗапускеVA' |
	
* This field specifies the port on which the MCP server is started at automatic startup. If the port is not set or is invalid, port 9874 is used.
		И я делаю подсветку нескольких элементов VA с их заголовком "MCP server port" UI Automation
			| 'Name'            |
			| 'ПортСервераMCP' |
	
* That's it, move on to the next lesson of the interactive help.
