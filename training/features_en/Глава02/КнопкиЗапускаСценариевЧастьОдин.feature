# language: ru

@lessons

Функционал: Интерактивная справка. Основные кнопки работы со сценариями. Часть один.

Сценарий: Основные кнопки работы со сценариями. Часть один.

* Hi! In this lesson, I will tell you about the buttons that control the creation, saving and launching of scripts. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		

* Excellent. Look. We will talk about this toolkit.
		И Я делаю подсветку группы элементов VA 'ЭтотСеанс' "ГруппаVanessaEditorВыполнениеСценариев" "Main buttons for working with scripts"
		И Пауза 5
		
		
* Here are buttons to create, save and run scripts.

* Let's look at them in details.

* This button creates a new script. Let's click it.
		И Я делаю подсветку элемента VA "ФормаVanessaEditorСоздатьНовыйСценарий" "Create new script" и перемещаю курсор
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ФормаVanessaEditorСоздатьНовыйСценарий' UI Automation
		И Пауза 1
		

* At that a tab with a new script was created. There are already several lines in it.
		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
			| 'Имя/ID'                 | 'Type' |
			| 'Новый сценарий.feature' | ''    |

			| 'Name'  | 'Value'      |
			| 'text' | 'New tab' |

* We will talk about scripting syntax in separate lessons. And now let's move on.

* In this submenu there are several commands for feature files downloading and some special tabs opening.
		И Я делаю подсветку элемента VA "ПодменюVanessaEditorЗагрузитьФичи" "Load features" и перемещаю курсор
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ПодменюVanessaEditorЗагрузитьФичи' UI Automation
		И Пауза 1
		И я перемещаю курсор к заголовку Vanessa Automation 


	
* This command loads one feature file into the editor. After that, the file can be both edited and run for execution.
		И Я делаю подсветку элемента VA "VanessaEditorФормаЗагрузитьОднуФичу" "Load one feature" и перемещаю курсор

* Let's, for example, upload a feature file from new release of Vanessa Automation testing set.
		И я загружаю фича файлы в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Глава01\ЧтоТакоеVanessaAutomation.feature"
		И Пауза 3
		И выражение внутреннего языка 'КонтекстСохраняемый.ФормаVAВРежимеОбучения.ФлагСценарииЗагружены' стало Истинно в течение 20 секунд

* Excellent. Feature file has loaded. Moving on.


* Next is a command that loads several feature files at once from a directory and all its subdirectories. This is usually used when running several feature files simultaneously.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ПодменюVanessaEditorЗагрузитьФичи' UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorФормаЗагрузитьФичиИзКаталога" "Load multiple features" и перемещаю курсор

* Let's upload some feature files from the directory. Again, let's use the files from the Vanessa Automation delivery.
		И я загружаю фича файлы в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Глава01"
		И Пауза 3
		И выражение внутреннего языка 'КонтекстСохраняемый.ФормаVAВРежимеОбучения.ФлагСценарииЗагружены' стало Истинно в течение 20 секунд 
		И я разворчаваю все строки дерева в VA в режиме обучения
		И Пауза 1
		



	
* Excellent. Feature files have loaded.

* A significant point. If you execute a command to load several features from the directory, Vanessa Automation will switch to the feature files in the tree execution mode. At that the script editor will be unavailable.
* This is because the script editor can run only one feature file at a time.
* There can be many scripts in one feature file, but only one feature file can be run from the editor at one time.
* And in tree mode, you can run multiple feature files simultaneously.
* Click this button to return to the script editor
		И Я делаю подсветку элемента VA "ФормаПерейтиВVanessaEditor" "Go to the editor" и перемещаю курсор

* If you need to activate tree line that belongs to a feature file, then this file will open when you go to the editor.
		Если существует элемент UI Automation "ЭтотСеанс" с именем "Интерактивная справка. Знакомство с Vanessa Automation. Основные элементы формы. Наименование" и типом "" тогда
			И я запоминаю строку "Интерактивная справка. Знакомство с Vanessa Automation. Основные элементы формы. Наименование" в переменную "FieldName"
		Иначе		
			И я запоминаю строку "Интерактивная справка. Знакомство с Vanessa Automation. Основные элементы формы. Description" в переменную "FieldName"

		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
				| 'Имя/ID'      | 'Type' |
				| '$FieldName$' | ''    |

				| 'Name'  | 'Value'        |
				| 'text' | 'String in the tree' |
			
		И Пауза 2
			
		И я делаю клик по элементу формы 'ЭтотСеанс' '$FieldName$' '' UI Automation
		И Пауза 2
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ФормаПерейтиВVanessaEditor' UI Automation
		И Пауза 2
	
* Got it sorted out. Let's move on.
* In the same submenu, there is a command that opens an arbitrary file in the mark down format in the editor.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ПодменюVanessaEditorЗагрузитьФичи' UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorЗагрузитьФайлДокументации" "Open MD file" и перемещаю курсор

* For example, let's open the file of the list of lessons from the Vanessa Automation delivery.
		И я делаю клик по заголовку Vanessa Automation 
		И я загружаю файл маркдаун в VA в режиме обучения "$КаталогИнструментов$\training\List_of_lessons_ru.md"
		И Пауза 1
		
* The file has loaded. Editing of markdown files is not supported, so the file is opened in read-only mode.

* Next is the command that opens the home page.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ПодменюVanessaEditorЗагрузитьФичи' UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorWelcome" "Home page" и перемещаю курсор

* Let's open it.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorWelcome' UI Automation
		И Пауза 1
		
* Home page allows to execute frequently used commands, such as script creating, feature files opening, recently used commands and others.
	
* And it remains to consider a few more commands. They allow to open recently opened files.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ПодменюVanessaEditorЗагрузитьФичи' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Recently opened files" UI Automation
			| 'Name'                |
			| 'МенюЗагрузитьФичи1' |
			| 'МенюЗагрузитьФичи2' |
			| 'МенюЗагрузитьФичи3' |

* These commands are automatically updated when you upload a feature file or feature file directory.

* That's it, move on to the next lesson of the interactive help.
		И я делаю клик по заголовку Vanessa Automation 


