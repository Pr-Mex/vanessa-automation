# language: ru

@lessons

Функционал: Интерактивная справка. Управление сворачиванием и разворачиванием шагов.

Сценарий: Управление сворачиванием и разворачиванием шагов.

* Hi! In this lesson, I will tell you about the buttons for convenient script viewing. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		

* There are buttons that control steps collapsing and expanding.
		И Я делаю подсветку элемента формы VA по имени "ГруппаVanessaEditorСвернутьШаги" "Collapse/expand step groups"

* Let's upload a test case
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерСвернутьРазвернутьШаги.feature"

* After feature file downloading, all step groups are displayed expanded.
* It is often convenient to collapse part of the script lines.
* Let's start by collapsing all the lines.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorСвернутьШаги' UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorViewFoldAll" "Collapse all" и перемещаю курсор
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorViewFoldAll' UI Automation
		И Пауза 1
		
* After that, we see only a few lines in the feature file, because the rest have been collapsed.

* Now let's make the rows of the next tree level appear.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorСвернутьШаги' UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorViewUnfold2" "Collapse to the first level" и перемещаю курсор
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorViewUnfold2' UI Automation
		И Пауза 1

* Thus, you can choose the depth of viewing steps in groups.

* And this button expands all the lines in the editor.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorСвернутьШаги' UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorViewUnfoldAll" "Expand all" и перемещаю курсор
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorViewUnfoldAll' UI Automation
		И Пауза 1


* That's it, move on to the next lesson of the interactive help.



