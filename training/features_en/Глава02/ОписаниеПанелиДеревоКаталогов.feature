# language: ru

@lessons

Функционал: Интерактивная справка. Панель "Дерево каталогов"

Сценарий: Панель "Дерево каталогов"

* Hi! In this lesson, I will tell you about the "Directory Tree" panel. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
	
* Excellent. Look. The panel for working with feature files directories is located here. This button shows and hides the directories panel.
		И Пауза 1
		И Я делаю подсветку кнопки VA с именем "VanessaEditorПоказатьСкрытьДеревоКаталогов" и переход к ней "Panel for working with directories"

* It allows navigation through the file tree or quickly search for the required feature by file name or its contents.
		И я перемещаю мышь в центр экрана
		И я делаю подсветку нескольких элементов VA с их заголовком "File panel" UI Automation
			| 'Name'                       | 'Type'  | 'РодительЭлемента'  |
			| 'ПутьКПапкеСФичами'         | ''     | ''                  |
			| 'СтрокаДляПоискаВнутриФичи' | ''     | ''                  |
			| 'ДревоФайлаФич'             | 'List' | 'ПутьКПапкеСФичами' |

* To display the file tree, enter the path to the directory in which the feature files are located in the first field. For example, let's specify here the path to the features that are used when testing Vanessa Automation.
		И Я делаю подсветку элемента VA "ПутьКПапкеСФичами" "Feature files directory"
		И я ввожу текст в поле VA "ПутьКПапкеСФичами" "$КаталогИнструментов$\training"
		И Пауза 2
	
* Now the directory tree is filled. Let's open a feature file in the editor.
		И я запоминаю элемент "features" с типом "" процесса "ЭтотСеанс" в переменную "IDЭлемента" UI Automation
		И я делаю клик в поле "$IDЭлемента$" UI Automation
		И Пауза 0.1
		И я нажимаю сочетание клавиш "RIGHT"
		И Пауза 0.1
		И я нажимаю сочетание клавиш "DOWN"
		И Пауза 0.1
		И я нажимаю сочетание клавиш "DOWN"
		И Пауза 0.1
		И я нажимаю сочетание клавиш "RIGHT"
		И Пауза 0.1
		И я нажимаю сочетание клавиш "DOWN"
		И Пауза 0.1
		И я делаю клик по элементу формы 'ЭтотСеанс' 'ЗнакомствоСVanessaAutomationОсновныеЭлементыФормы' '' UI Automation
		И я нажимаю сочетание клавиш "ENTER"
		И Пауза 1

* Feature file has loaded. In this case, the line became highlighted in bold, because this file is currently active in the editor.
		И выражение внутреннего языка 'КонтекстСохраняемый.ФормаVAВРежимеОбучения.ФлагСценарииЗагружены' стало Истинно в течение 20 секунд
		И я запоминаю элемент "ЗнакомствоСVanessaAutomationОсновныеЭлементыФормы" с типом "ListItem" процесса "ЭтотСеанс" в переменную "IDЭлемента" UI Automation
		И я делаю подсказку балун у элемента "$IDЭлемента$" UI Automation
			| 'text' | 'Opened file' |

* We will talk about the structure of the feature file and scripts syntax in another lesson.

* Now let's try to search for a feature file by its name or content. To do this, enter a search string in this field. For example, let's search for files by the line: Parameters.
		И Я делаю подсветку элемента VA "СтрокаДляПоискаВнутриФичи" "Filter"
		И я ввожу текст в поле VA "СтрокаДляПоискаВнутриФичи" "Параметры"
		И Пауза 1
		
* At that there was a selection. Files with the specified string in their name are at the top of the list.
		И я запоминаю элемент "ПараметрыШагов" с типом "" процесса "ЭтотСеанс" в переменную "IDЭлемента" UI Automation
		И я делаю подсказку балун у элемента "$IDЭлемента$" UI Automation
			| 'text' | 'There is a string "Parameters" in the file name' |

* Next are the files containing this line.
	
* Thus, you can quickly find the required feature file.

* That's it, move on to the next lesson of the interactive help.
	
