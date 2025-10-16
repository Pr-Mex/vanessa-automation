# language: ru

@lessons

Функционал: Интерактивная справка. Основная информация по дереву известных шагов.

Сценарий: Основная информация по дереву известных шагов

* Hi! In this lesson, I will tell you how to work with the steps library when the feature file is created in another language. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения


* Let's indicate that we want to create feature files in a different language.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки'
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаСервисОсновные'
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЯзык'
		И Пауза 1
		И Я делаю подсветку элемента формы VA по имени "ЯзыкГенератораGherkin" "Current language"


* For example, let's choose English
		Если существует элемент UI Automation "ЭтотСеанс" с именем "Генератор EPF" и типом "" Тогда
			И я запоминаю строку "Истина" в переменную "ЯзыкРусский"
			И я запоминаю строку "Показать шаги на русском" в переменную "ПеременнаяЗаголовокЭлемента"
		Иначе	
			И я запоминаю строку "Ложь" в переменную "ЯзыкРусский"

		Если выражение внутреннего языка 'КонтекстСохраняемый.ФормаVAВРежимеОбучения.Объект.ЯзыкГенератораGherkin = "ru"' Истинно Тогда
			И я выбираю английский яызк VA Режим обучения

* Now let's open the steps library
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorИнструменты'
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorДобавитьИзвестныйШаг'
		И Пауза 1
		Если '$ЯзыкРусский$' Тогда
			И я жду появления элемента UI Automation "ЭтотСеанс" с именем "$ПеременнаяЗаголовокЭлемента$" и типом "" в течение 20 секунд
		Иначе	
			И я жду появления элемента UI Automation "ЭтотСеанс" с именем "Show steps in Russian" и типом "" в течение 20 секунд
		И Пауза 1
		
* There is an additional checkbox that allows you to enable the display of steps in two languages simultaneously.
		И Пауза 2
		
		Если '$ЯзыкРусский$' Тогда	
			И Я делаю подсветку у поля дерева шагов по подсказке '$ПеременнаяЗаголовокЭлемента$' 'Show steps in Russian'
		Иначе	
			И Я делаю подсветку у поля дерева шагов по подсказке 'Show steps in Russian' 'Show steps in Russian'

* Let's set this checkbox. This will allow us to see the text of the steps in two languages at once.
		И я делаю клик по элементу формы 'ЭтотСеанс' 'Built-in language' 'ListItem' UI Automation
		И Пауза 1
		И я нажимаю сочетание клавиш "Right"
		И Пауза 1
		И я делаю клик по элементу формы 'ЭтотСеанс' 'If "True" Then' 'ListItem' UI Automation
		И Пауза 1

		Если '$ЯзыкРусский$' Тогда	
			И Я делаю клик в поле дерева шагов по подсказке '$ПеременнаяЗаголовокЭлемента$' 	
		Иначе	
			И Я делаю клик в поле дерева шагов по подсказке 'Show steps in Russian' 	
		И Пауза 2

		
* Now the steps tree contains information both in Russian and in English.
		И Я делаю подсветку у дерева известных шагов "Information in two languages"


* That's it, move on to the next lesson of the interactive help.


//Do not translate 26


