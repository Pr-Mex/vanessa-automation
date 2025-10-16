# language: ru

@lessons

Функционал: Интерактивная справка. Основные элементы на закладке "Генератор EPF"

Сценарий: Основные элементы на закладке "Генератор EPF"

* Hi! In this lesson, I will tell you about the main elements of the "EPF Generator" tab. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
	
* Excellent. Look. Sometimes in script creating, you may need to create a new step that is missing in the steps library.
* To do this, go here.
		И Я делаю подсветку закладки VA и переход к ней "ГруппаГенерацияEPF" "Create new steps"
		И Пауза 1
	
* Let's see what the settings are here.

* Checkbox - generate a managed form.
		И Я делаю подсветку элемента VA "ГенерироватьУФ" "Generate a managed form"
* This checkbox determines the form of created epf file. With regular form or managed form.
* It is recommended to leave the checkbox enabled, because most likely you will need epf generation with managed form.

* Checkbox - create areas when generating code.
		И Я делаю подсветку элемента VA "СоздаватьОбластиПриГенерацииКода" "Create regions in code"
* The checkbox determines that the module code will be immediately divided into several areas on data processor is creating.
* It is recommended to leave the checkbox set.
	
* Checkbox - output module text instead of regenerating epf
		И Я делаю подсветку элемента VA "ВыводитьТекстМодуляВместоПерегенерацииEPF" "Output module text"
* The checkbox specifies that instead of creating a data processor and inserting the necessary code into it, this code will be displayed on the screen.
* This option can be useful if epf files generation fails on this PC.

* Next is the field containing platform version for epf generating.
		И Я делаю подсветку элемента VA "ВерсияПлатформыДляГенерацииEPF" "Platform version for epf generation"
	
* This field specifies the path to the directory where the installed 1C platform is located, which will be used when generating epf files.

* A significant point. There are several conditions for epf files generation.
* First, install a thick 1C platform client.
* Secondly, file databases should be launched on this PC. That is, there should be no problems with issuing a license to a 1C session running in a file database.

* For more information on how to add a new step to the Gherkin step library, see this video.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\КакСоздатьСвойШаг.feature"
		И Пауза 1
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 8 строку 'For more information, see the video' подсценарий
		

* That's it, move on to the next lesson of the interactive help.
