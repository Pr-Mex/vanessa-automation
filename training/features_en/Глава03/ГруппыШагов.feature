# language: ru

@lessons

Функционал: Интерактивная справка. Как устроены шаги сценариев? Группы шагов.

Сценарий: Как устроены шаги сценариев? Группы шагов.

* Hi! In this lesson, I will tell you how to work with groups of steps. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерГруппыШагов.feature"

* Step groups are used to group script steps into logical blocks.

* The first point. In order for the group mechanism to work, at least one of two conditions must be met.
* The first condition is this. A special tag should be written in the tags section, which notifies the feature parser that steps can be grouped in this feature.
* This is the tag.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "@tree" 'Service tag @tree'

* The second condition is this. In Vanessa Automation settings, the tag tree checkbox is enabled by default.
* This checkbox is here
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation	
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаСистемныеНастройки' UI Automation	
		И Пауза 1
		И Я делаю подсветку элемента формы VA по имени "ТегTreeВключенПоУмолчанию" "Tag @tree is enabled by default"
		
* It is recommended to leave this checkbox set. Then you can skip a service tag in each feature file.
* If none of the conditions are met, then each line of the script will be considered a common step.

* The second point.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЗапускТестов' UI Automation	
		И Пауза 1
* More precisely, any script line can become a group of steps because the groups are indented.
* Here is an example when a group of steps is declared.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "* Group of steps 1." 'Steps group declaration'
* At that, there is a step or steps inside the group that have bigger indents than the group line.
* Here is a step that belongs to this group.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 10 "Given Step within the first level group" 'Step within a steps group'
* These steps also belong to this group.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 12 по 16 строку 'Steps within a group' подсценарий

* It is better to start the name of the group with an asterisk. Although this is optional.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 9 "*" 'Group beginning symbol'
* Also, step groups are bolded and marked with special icon on the left in script editor.

* Third point. There can be other step groups in a step group. There are no restrictions on the number of nesting levels.
* Here is an example of a nested group.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 12 "* Group of steps 2." 'Nested group of steps'

* Fourth point. The script line itself, which is a group of steps, will not be executed during script execution.
* Therefore, it is necessary to mind carefully the indents in the script text.
* Otherwise, you can accidentally convert a regular step into a group and its execution will stop.

* And the last point. Either tab characters or spaces can be used as indents.
* Tab characters are recommended.
* Moreover, within one feature file, you cannot mix indents and use both spaces and tab characters for them at the same time.
	
* That's it, move on to the next lesson of the interactive help.


