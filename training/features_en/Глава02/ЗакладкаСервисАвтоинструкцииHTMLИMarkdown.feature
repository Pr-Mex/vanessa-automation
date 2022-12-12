# language: ru

@lessons

Функционал: Интерактивная справка. Автоинструкции. HTML и Markdown.

Сценарий: Автоинструкции. HTML и Markdown.

* Hi! In this lesson, I will tell you about the creation of auto-instructions in HTML and Markdown format. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаАвтоИнструкции' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'HTMLИMarkdown' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "HTML and Markdown instructions" UI Automation
			| 'Name'                         |
			| 'СоздаватьИнструкциюHTML'     |
			| 'СоздаватьИнструкциюMarkdown' |
			| 'АвтонумерацияШагов'          |

* This checkbox enables generation of instructions in HTML format.
		И я делаю подсветку нескольких элементов VA с их заголовком "HTML instruction format" UI Automation
			| 'Name'                     |
			| 'СоздаватьИнструкциюHTML' |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СоздаватьИнструкциюHTML' UI Automation
		И Пауза 1

* If the checkbox is set, screenshots for each step or group of steps will be taken when executing the script.
* After the script execution is completed, the final instruction in HTML format will be generated
* This field specifies the directory in which the instruction will be generated.
		И я делаю подсветку нескольких элементов VA с их заголовком "Instructions directory" UI Automation
			| 'Name'                           |
			| 'КаталогВыгрузкиИнструкцийHTML' |

* The formation of instructions in the Markdown format works similarly.
		И я делаю подсветку нескольких элементов VA с их заголовком "Markdown instruction format" UI Automation
			| 'Name'                         |
			| 'СоздаватьИнструкциюMarkdown' |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СоздаватьИнструкциюMarkdown' UI Automation
		И Пауза 1
			
* This field specifies the directory in which Markdown format instruction will be generated.
		И я делаю подсветку нескольких элементов VA с их заголовком "Instructions directory" UI Automation
			| 'Name'                               |
			| 'КаталогВыгрузкиИнструкцийMarkdown' |

* Let's continue. This checkbox adds auto-numbering to the beginning of the step description text.
		И я делаю подсветку нескольких элементов VA с их заголовком "Instructions directory" UI Automation
			| 'Name'                |
			| 'АвтонумерацияШагов' |

* That's it, move on to the next lesson of the interactive help.


