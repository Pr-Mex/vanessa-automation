# language: ru

@lessons

Функционал: Интерактивная справка. Шаги для работы с UI Automation.

Сценарий: Шаги для работы с UI Automation.

* Hi! In this lesson, I will tell you how to use the steps that work with the UI Automation mechanism. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерШагиДляРаботыСUIAutomation.feature"

* A significant point. The UI Automation mechanism is Microsoft technology. Therefore, it only works under Windows operating system.
* To read more about this technology, follow this link.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 12 по 12 строку 'Technology description' подсценарий

* In short, this technology allows interaction with any form element of any application in Windows.

* For example, to click on a button using this technology, you need to perform a step - And I click UI Automation form element
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 8 строку 'Example' подсценарий
* Let's look at the parameters of this step.
* The first parameter is the process ID.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 8 "PID" 'Process ID'
* If you need to click on a button in a third-party application, get the process ID using the external VanessaExt component.
* If you need to click Test Client button, get Test Client process ID into the variable, as shown in this example.
		И Пауза 2
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 20 по 22 строку 'How to get the PID of the current Test client' подсценарий

* Moving on.
* The second parameter of the step is the element header.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 8 "Header" 'Element header'
* To find out the title of an element, it is better to use the UI Automation Object Explorer.
* The Object Explorer is located approximately by this path
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 18 по 18 строку 'Object explorer' подсценарий

* A significant point. The Object Explorer is not included by default in the initial installation of Windows.
* For it to appear, first install the Windows SDK.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 15 по 15 строку 'Windows SDK' подсценарий

* Moving on.
* To find out the element type for the third parameter, also use Object Explorer.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 8 "Type" 'Element type'

* There are also other steps in Vanessa steps library for working with UI Automation technology.
* Be sure to check them out.

* That's it, move on to the next lesson of the interactive help.


