# language: ru

@lessons

Функционал: Интерактивная справка. Контекстное меню редактора. Получить шаги по данным клиента тестирования.

Сценарий: Контекстное меню редактора. Получить шаги по данным клиента тестирования.

* Hi! In this lesson, I will tell you about the context menu of the editor and how to get the steps by Test client data. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКонтекстноеМенюРедактораПустойСценарий.feature"


* To get the steps that describe the state of Test client form, there are four commands.
		И я делаю клик по элементу формы 'ЭтотСеанс' '' 'Document' правой кнопкой UI Automation
		И Пауза 1

* Get the state of the entire form in the form of steps.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюПолучитьИзмененияФормыGherkin" "The state of the entire form as steps" и перемещаю курсор
* Get the state of the current form element in the form of steps.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюПолучитьСостояниеТекущегоЭлементаФормы" "Get current element status" и перемещаю курсор
* Get verification of user messages in the form of steps.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюДобавитьПроверкуСообщенийПользователя" "Get user message verification" и перемещаю курсор
* Get the step of opening the navigation link of the current window.
		И Я делаю подсветку элемента VA "VanessaEditorКонтекстноеМенюПолучитьШагОткрытияНавигационнойСсылкиТекущегоОкна" "Get navigation link launch step" и перемещаю курсор
* These commands quickly get the test steps for the current Test Client form.
* We will talk about this in more detail in the section "How to check form state

* That's it, move on to the next lesson of the interactive help.

