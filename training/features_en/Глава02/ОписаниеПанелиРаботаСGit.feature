# language: ru

@lessons

Функционал: Интерактивная справка. Панель "Работа с git"

Сценарий: Панель "Работа с git"

* Hi! In this lesson, I will tell you about the "Working with git" panel. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
	
* Excellent. Look. The panel for working with git is located here. This button shows and hides the git panel.
		И Я делаю подсветку кнопки VA с именем "VanessaEditorПоказатьСкрытьДеревоGit" и переход к ней "Panel for working with git"

* This panel was created for execution of frequently used git commands directly from Vanessa Automation.
* Usually, these are commit changes and push to branch commands, because these are the most common scenarios when creating new or editing existing tests.
* This panel does not imply the use of all git functionality and does not imply a complete rejection of other git clients, such as source tree, GitKraken, and moreover, a complete rejection of working with git in the console.

* Let's look at the main elements of the panel.

* In this field, specify the path to the git repository directory.
		И Я делаю подсветку элемента VA "ПутьКПапкеGit" "Git repository directory"

* This button reads the status of the repository files
		И Я делаю подсветку элемента VA "ДеревоGitОбновить" "Update status"
	
* These buttons add changes to the index and remove changes from the index
		И я делаю подсветку нескольких элементов VA с их заголовком "Working with index" UI Automation
			| 'Name'                               | 'Type' | 'РодительЭлемента' |
			| 'ДеревоGitДобавитьВИндекс'          | ''    | ''                 |
			| 'ДеревоGitДеревоGitУбратьИзИндекса' | ''    | ''                 |

			

* This button creates a new commit
		И Я делаю подсветку элемента VA "ДеревоGitДеревоGitЗафиксировать" "Changes commit"

* And this one allows you to specify the author of commits and their email. Usually these parameters are already set in the repository, so it is rarely used.
		И Я делаю подсветку элемента VA "ДеревоGitНастройки" "Author of commits"

* For a commit, of course, you need to fill in the message text
		И Я делаю подсветку элемента VA "ДеревоGitДеревоТекстСообщения" "MessageText"
		
* This field displays files and their statuses
		И я запоминаю строку "Файл" в переменную "ИмяПоляДляПоиска"
		Если я запоминаю элемент "$ИмяПоляДляПоиска$" с типом "List" процесса "ЭтотСеанс" в переменную "IDЭлемента" UI Automation тогда
		Иначе
			И я запоминаю элемент "File" с типом "List" процесса "ЭтотСеанс" в переменную "IDЭлемента" UI Automation 

		
		И я делаю эффект затемнения у элементов формы UI Automation "ЭтотСеанс"
			| 'Name'          | 'Type' |
			| '$IDЭлемента$' | ''    |
			
			| 'Name'      | 'Value'         |
			| 'text'     | 'Modified files' |
			| 'duration' | 4000               |
	
		И Пауза 4


* There are a few more buttons at the bottom. This one allows switching between branches.
		И Я делаю подсветку элемента VA "ДеревоGitВыборВетки" "Branch Selection"

* This one executes a Pull command to get data from a remote repository.
		И Я делаю подсветку элемента VA "ДеревоGitPull" "Pull"

* And this one executes a Push command to send data to a remote repository.
		И Я делаю подсветку элемента VA "ДеревоGitPush" "Push"

* That's it, move on to the next lesson of the interactive help.

//Do not translate 46