# language: ru

@lessons

Функционал: Интерактивная справка. Логирование и оповещение.

Сценарий: Логирование и оповещение

* Hi! In this lesson, I will tell you about logging and notification settings. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаВыполнениеСценариев' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаВыполнениеСценариевЛогирование' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Logging and notification settings" UI Automation
			| 'Name'                                              |
			| 'DebugLog'                                         |
			| 'ЗвуковоеОповещениеПриОкончанииВыполненияСценария' |
			| 'ДелатьЛогВыполненияСценариевВЖР'                  |
			| 'ОставлятьТолькоПоследнююИтерациюЦикла'            |

* This checkbox enables the output of additional information to the user's message window.
		И я делаю подсветку нескольких элементов VA с их заголовком "Output of additional messages" UI Automation
			| 'Name'                                              |
			| 'DebugLog'                                         |
* This can help, for example, if the feature file loading has failed. Then message window will contain detailed information why the download is failed.


* This checkbox enables an audio notification when the script is completed.
		И я делаю подсветку нескольких элементов VA с их заголовком "Sound notification" UI Automation
			| 'Name'                                              |
			| 'ЗвуковоеОповещениеПриОкончанииВыполненияСценария' |
* This setting does not require any additional settings for voicing.
* This option is useful when, for example, a script is being executed in a minimized terminal window and you need the notification about scripts completion.
* It is recommended to set this checkbox.
		И я делаю подсветку нескольких элементов VA с их заголовком "Sound notification" UI Automation
			| 'Name'                                              |
			| 'ЗвуковоеОповещениеПриОкончанииВыполненияСценария' |


* Let's continue. This checkbox enables some events to be logged.
		И я делаю подсветку нескольких элементов VA с их заголовком "Log entry" UI Automation
			| 'Name'                             |
			| 'ДелатьЛогВыполненияСценариевВЖР' |
* It is recommended to set this checkbox when running tests in the CI framework.


* This checkbox keeps only the last loop iteration in the step execution results.
		И я делаю подсветку нескольких элементов VA с их заголовком "Keep only the last loop iteration" UI Automation
			| 'Name'                                  |
			| 'ОставлятьТолькоПоследнююИтерациюЦикла' |
* Previous iterations are deleted together with their nested steps, and the Allure2 report shows the number of collapsed iterations in the loop step name.
* The setting can be switched on and off during scenario execution, so one loop can keep all iterations and another only the last one.
* Note: iterations that failed inside Try/Except disappear from the results together with their attachments, and files attached to the scenario (event log, mxl, etc.) are still exported in full. In single-step execution mode the collapse is not performed.


* That's it, move on to the next lesson of the interactive help.




