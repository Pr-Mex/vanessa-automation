# language: ru

@lessons

Функционал: Интерактивная справка. Команды поиска и замены текста в сценарии.

Сценарий: Команды поиска и замены текста в сценарии.

* Hi! In this lesson, I will tell you about the buttons that control the search and replace in the script text. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		

* These buttons are here.
		И Я делаю подсветку элемента формы VA по имени "ГруппаVanessaEditorПоискВТексте" "Text search and replace buttons"

* Let's upload a test case
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКнопкиПоиска.feature"

* Use this command to find a fragment of text in the script. Or press the hotkey Control plus. F.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorПоискВТексте' UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorEditFind" "Find text fragment" и перемещаю курсор
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorEditFind' UI Automation
		И Пауза 1

* For example, enter the text to search for the word pause in the script
		И я эмулирую ввод текста "Pause"
		И Пауза 1
		
* At that the found text fragments were highlighted in the editor.

* The second convenient command is text fragment replacement. It can be called using the shortcut Control plus. H.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorПоискВТексте' UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorEditReplace" "Replace text fragment" и перемещаю курсор
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorEditReplace' UI Automation
		И Пауза 1

* At that, the corresponding text replacement dialog appeared in the editor.


* That's it, move on to the next lesson of the interactive help.



