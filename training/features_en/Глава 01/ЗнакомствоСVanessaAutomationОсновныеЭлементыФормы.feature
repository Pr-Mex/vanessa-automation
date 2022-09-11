# language: ru

@lessons

Функционал: Интерактивная справка. Знакомство с Vanessa Automation. Основные элементы формы.

Сценарий: Знакомство с Vanessa Automation. Основные элементы формы.

* Hi! In this lesson, I will tell you about the basic elements of the Vanessa Automation form. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
	

* Excellent. First, let's look here. There are six bookmarks on the main form of Vanessa Automation. Each of them has its own purpose. There will be a separate lesson for each bookmark, and now we will quickly talk about why they are needed.
		И Пауза 3
		
		И я делаю подсветку нескольких элементов VA с их заголовком "The main tabs of the form." UI Automation
			| 'Name'                |
			| 'ГруппаЗапускТестов' |
			| 'ГруппаНастройки'    |

	//Закладка "Запуск сценариев"
* On framework launch, the first one is active, which is called "Running Scripts".
		И Я делаю подсветку закладки VA и переход к ней "ГруппаЗапускТестов" "Working with scripts"

* This is where the main work with tests takes place. Here they are created and run for execution. We will constantly work with her in our lessons.



	//Закладка "Генератор EPF"
* Next is the tab "EPF Generator". This is where data processors with new steps are created. Usually, there are enough steps from the main library on tests creating.
		И Я делаю подсветку закладки VA и переход к ней "ГруппаГенерацияEPF" "Create data processor with steps"

* But sometimes there may be a situation when you need to create your own step and then it happens here.


	//Закладка "Библиотеки"
* Next is "Libraries" tab. It specifies the locations from which Vanessa will upload steps to use in test scripts.
		И Я делаю подсветку закладки VA и переход к ней "ГруппаКаталогиБиблиотек" "Step libraries"

* We'll talk about step libraries in a separate lesson.


	//Закладка "Работа с UI"
* Next is the tab "Working with UI". This bookmark was actively used before Vanessa Automation got its own script editor.
		И Я делаю подсветку закладки VA и переход к ней "ГруппаДополнительно" "Outdated"
		
* Now this bookmark is rarely used. You can find some technical information in it, but as a rule we will not use it. It is left for compatibility.



	//Закладка "Клиенты тестирования"
* Next is the tab "Test Clients". Here is a table of Test Clients.
		И Я делаю подсветку закладки VA и переход к ней "ГруппаНесколькоКлиентовТестирования" "List of test clients"
		
* This table describes the parameters for Test Clients connections, such as the database path, user name, and so on. Let's talk about it later.



	//Закладка "Сервис"
* And the last tab is "Service". Here are Vanessa Automation settings.
		И Я делаю подсветку закладки VA и переход к ней "ГруппаНастройки" "Vanessa Automation settings"
		
* There are a lot of settings, we will consider them in detail in separate lessons.

* This ends up the topic about the main elements. Go to the following sections of the interactive help.











