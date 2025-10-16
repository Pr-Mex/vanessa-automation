# language: ru

@lessons

Функционал: Интерактивная справка. Автоинструкции. Аудио. Общие.

Сценарий: Автоинструкции. Аудио. Общие.

* Hi! In this lesson, I will tell you about the general settings of voice acting. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаАвтоИнструкции' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаАудио' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаАудиоОбщие' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "General audio settings" UI Automation
			| 'Name'                                   |
			| 'ОзвучиватьВыполнениеСценария'          |
			| 'ЗаписьВидеоГруппаШаговКакШаг1'         |
			| 'ЗаписьВидеоКаталогДляВременныхФайлов1' |
	
* This checkbox enables the script execution voicing in real time.
		И я делаю подсветку нескольких элементов VA с их заголовком "Voice the execution of the script" UI Automation
			| 'Name'                          |
			| 'ОзвучиватьВыполнениеСценария' |
	
* This option is convenient when debugging script voiceovers before compiling the video.
* Also, this checkbox can be set and removed using this main panel button.
		И я делаю подсветку нескольких элементов VA с их заголовком "Voice the execution of the script" UI Automation
			| 'Name'                                              |
			| 'ПанельVanessaEditorОзвучиваниеВыполненияСценария' |

* Let's continue. This checkbox enables the mode when a group of script steps is treated as one step for an auto-instruction.
		И я делаю подсветку нескольких элементов VA с их заголовком "Steps group as a step" UI Automation
			| 'Name'                           |
			| 'ЗаписьВидеоГруппаШаговКакШаг1' |
	
* It is recommended to leave this option enabled.

* Let's continue. This field specifies the directory where temporary voiceover files will be generated.
		И я делаю подсветку нескольких элементов VA с их заголовком "Temporary file directory" UI Automation
			| 'Name'                                   |
			| 'ЗаписьВидеоКаталогДляВременныхФайлов1' |
	




* That's it, move on to the next lesson of the interactive help.


