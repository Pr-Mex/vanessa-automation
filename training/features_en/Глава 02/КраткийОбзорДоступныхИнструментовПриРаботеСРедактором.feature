# language: ru

@lessons

Функционал: Интерактивная справка. Краткий обзор доступных инструментов при работе с редактором

Сценарий: Краткий обзор доступных инструментов при работе с редактором

* Hi! In this lesson, I will tell you about what additional tools are available when developing a test scenario. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
	
* Excellent. Look. Additional tools can be found here.
		И я запоминаю ID элемента формы Vanessa Automation с именем "ГруппаVanessaEditorИнструменты" в переменную "Id_ГруппаVanessaEditorИнструменты"
		И Я делаю подсветку кнопки VA с именем "ГруппаVanessaEditorИнструменты" и переход к ней "Additional tools" 
		И я перемещаю мышь в центр экрана
	
* Menu item - Steps Library. It opens a new window containing a list of all currently available scripting steps.
		И Я делаю подсветку элемента формы VA по имени и клик по нему "VanessaEditorДобавитьИзвестныйШаг" "Step library"

* For more information about the step library, see the corresponding lesson on the step library.
	
* Let's close this window for now and move on

		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ЗакрытьФормуИзвестныхШагов' UI Automation
		И пауза 1
		
* The next item is Form Explorer. This tool allows to get detailed information on the Test Client form state, available fields in its forms, and other information.
		И я делаю клик в поле "$Id_ГруппаVanessaEditorИнструменты$" UI Automation
		И пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorИсследовательФормы" "Form Explorer" и перемещаю курсор
		
* We will talk about it in details in the corresponding lesson.
	
* Next are the items Save Test Client Form State and Forget Test Client Form State
		И Я делаю подсветку элемента VA "VanessaEditorЗапомнитьСостояниеФормыTestClient" "Save form state" и перемещаю курсор
		И Я делаю подсветку элемента VA "VanessaEditorЗабытьСостояниеФормыTestClient" "Forget form state" и перемещаю курсор

* These options are used when you need to see the changes in the form over a certain period of time.
* This technique will be described in the section about working methods when creating tests.

* Next are Save Test Client Current Form State to File and Save Test Client All Forms State to File
		И Я делаю подсветку элемента VA "VanessaEditorСохранитьСостояниеТекущейФормыКлиентаТестированияВФайл" "Save form state" и перемещаю курсор
		И Я делаю подсветку элемента VA "VanessaEditorСохранитьСостояниеВсехФормКлиентаТестированияВФайл" "Save state of all forms" и перемещаю курсор

* These commands allow saving data about Test Client forms state to mxl file.
* We will talk about this possibility in the section Methods of work - test fails investigation.

* Next are four commands
* Get the state of the entire form in steps format
		И Я делаю подсветку элемента VA "VanessaEditorПолучитьИзмененияФормыGherkin" "The state of the entire form as steps" и перемещаю курсор
* Get the state of the current form element in steps format
		И Я делаю подсветку элемента VA "VanessaEditorПолучитьСостояниеТекущегоЭлементаФормы" "Get current element status" и перемещаю курсор
* Get verification of user messages in steps format
		И Я делаю подсветку элемента VA "VanessaEditorДобавитьПроверкуСообщенийПользователя" "Get user message verification" и перемещаю курсор
* Get the step of opening the navigation link of the current window
		И Я делаю подсветку элемента VA "VanessaEditorПолучитьШагОткрытияНавигационнойСсылкиТекущегоОкна" "Get navigation link launch step" и перемещаю курсор
* These commands quickly get the test steps for the current Test Client form.
* We will talk about this in more detail in the section "How to check form state

* Next is Show/Hide Variable Panel command
		И Я делаю подсветку элемента формы VA по имени и клик по нему "VanessaEditorПоказатьСкрытьТаблоПеременных" "Variables panel"

* It controls the visibility of the panel, which displays the current state of variables and allows to edit them if necessary.
		И я делаю подсветку у табло переменных VA "Variables panel"
			

* We will talk about this in more detail in work with variable panel section.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ТаблоПеременныхЗакрытьТаблоПеременных' UI Automation

		И пауза 1

* Next is Prepare and Upload Data command
		И я запоминаю ID элемента формы Vanessa Automation с именем "ГруппаVanessaEditorИнструменты" в переменную "Id_ГруппаVanessaEditorИнструменты"
		И я делаю клик в поле "$Id_ГруппаVanessaEditorИнструменты$" UI Automation
		И пауза 1
		И Я делаю подсветку элемента формы VA по имени и клик по нему "VanessaEditorОткрытьИнструментПодготовкаИЗагрузкаДанных" "Data preparation and loading"

* This tool manages test data creation for scripts operation.
* We'll talk about it in details in creating test data section.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'MetadataListCloseForm' UI Automation
		И пауза 1


* Next is Compare with another feature file command
		И я запоминаю ID элемента формы Vanessa Automation с именем "ГруппаVanessaEditorИнструменты" в переменную "Id_ГруппаVanessaEditorИнструменты"
		И я делаю клик в поле "$Id_ГруппаVanessaEditorИнструменты$" UI Automation
		И пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorСравнитьСДругимФичаФайлом" "Compare with another feature file" и перемещаю курсор
* It allows display of comparison of this feature file text and another file in the editor. This can be useful when you need to quickly juxtapose changes and another file.


* Next is the Show Allure Report command
		И Я делаю подсветку элемента VA "VanessaEditorПоказатьОтчетAllure" "Show Allure report" и перемещаю курсор
* This is needed when you want to see the result of running tests locally in Allure report format.
* We'll talk about this in Allure report section.

* Next is Voice the current line command
		И Я делаю подсветку элемента VA "VanessaEditorОзвучитьТекущуюСтрокуРедактора" "Voice the current line" и перемещаю курсор
* It is often used when creating auto-documentation in video file format.
* We will talk about this in the auto-instructions creating section.

* Next comes the command - Get area coordinates for the screenshot.
		И Я делаю подсветку элемента VA "VanessaEditorПолучитьКоординатыОбласти" "Get area coordinates for the screenshot" и перемещаю курсор
* This command is also used when creating auto-instructions.

* And we have one more command for the overview - Browser Settings.
		И Я делаю подсветку элемента VA "ФормаНастройкиРаботыСБраузером" "Browser settings" и перемещаю курсор
* This command is used when steps are used to work directly with the browser and arbitrary sites.

	
* That's it, move on to the next lesson of the interactive help.
