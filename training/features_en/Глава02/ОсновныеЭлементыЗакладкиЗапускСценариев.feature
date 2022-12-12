# language: ru

@lessons

Функционал: Интерактивная справка. Основные элементы на закладке "Запуск сценариев"

Сценарий: Основные элементы на закладке "Запуск сценариев"

* Hi! In this lesson, I will tell you about the main elements of the "Run Scripts" tab. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
	
* Excellent. Look. Here is the main toolbar, with which we will constantly interact when creating scripts.
		И Пауза 1
		И Я делаю подсветку родителя элемента формы VA по имени "ПанельVanessaEditorСохранитьФайлКак" "Toolbar"
	
* There are many buttons in it that run and debug scripts, manage test client and get data from it, and so on. We'll talk about them later.
		И Я запоминаю значение выражения 'ПолучитьИнформациюЭкрановКлиента()[0].Ширина - 450' в переменную "left"
		И Я запоминаю значение выражения 'ПолучитьИнформациюЭкрановКлиента()[0].Высота - 450' в переменную "top"
		
		И я запоминаю родителя элемента с именем "VanessaEditorПоказатьСкрытьДеревоGit" в переменную "IDПанели" Vanessa Automation
		//И я запоминаю родителя элемента "Работа с git" с типом '' процесса "ЭтотСеанс" в переменную "IDПанели" UI Automation

		И я показываю увеличение фрагмента экрана
			| 'left'   | '$left$' |
			| 'top'    | '$top$'  |
			| 'width'  | '400'    |
			| 'height' | '400'    |
			| 'factor' | '2'      |
			| 'shape'  | '2'      |

		И я перемещаю мышку к каждой кнопке панели "$IDПанели$" Vanessa Automation
		И я перемещаю мышь в центр экрана
		И я закрываю увеличение фрагмента экрана
		
* Next is the area of script editing. A tool based on Monaco is used as a script editor. A similar editor is used in Visual Studio Code.
		И Я делаю подсветку элемента формы VA по типу "Document" "Editor field"
		
* Next, at the bottom of the form there is a field showing the current name of the file opened in the editor.
		И Я делаю подсветку элемента формы VA по имени "КаталогФич" "Current file name"

* And here is an inscription displaying the statistics of script execution.
		И я делаю подсветку нескольких элементов VA с их заголовком "Statistics" UI Automation
			| 'Name'        |
			| 'Статистика' |

* That's it, move on to the next lesson of the interactive help.

//Do not translate 45