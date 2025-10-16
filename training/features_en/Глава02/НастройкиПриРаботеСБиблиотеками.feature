# language: ru

@lessons

Функционал: Интерактивная справка. Основные элементы на закладке "Библиотеки"

Сценарий: Основные элементы на закладке "Библиотеки"

* Hi! In this lesson, I will tell you about the main elements of the "Libraries" tab. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
	
* Excellent. Look. On this tab, the step libraries are connected.
		И Я делаю подсветку закладки VA и переход к ней "ГруппаКаталогиБиблиотек" "Step libraries"
		И Пауза 1
	
* Step libraries need to be connected in two cases.
* The first is when the main Vanessa Automation supply is used, and not Vanessa Single.
* In this case, there should be a row in this table that specifies the path to the library of steps from the main delivery.
		И Я делаю подсветку элемента VA с типом "List". Элемент ищется у родителя элемента "МетаданныеБиблиотек" "Library table"	
* Usually this line is created automatically and you do not need to add it manually.

* The second case is usage not only the steps from the main delivery of Vanessa Automation, but also own steps on tests creating.
* Then specify the path to the steps directory in this table.
		И Я делаю подсветку элемента VA с типом "List". Элемент ищется у родителя элемента "МетаданныеБиблиотек" "Library table"	

* The same is for general export scenarios.

* That's it, move on to the next lesson of the interactive help.


