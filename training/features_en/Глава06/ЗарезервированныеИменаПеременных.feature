# language: ru

@lessons

Функционал: Интерактивная справка. Зарезервированные имена переменных КаталогПроекта, КаталогИнструментов, КаталогФичи.

Сценарий: Зарезервированные имена переменных КаталогПроекта, КаталогИнструментов, КаталогФичи.

* Hi! In this lesson, I will tell you about the service variables. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерСлужебныеПеременные.feature"

* There are three service variables. To refer to a service variable, frame its name with dollar characters.

* The first service variable is the ProjectDirectory.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 9 строку 'ProjectDirectory variable' подсценарий
* It stores the value that is specified in the Project Directory setting.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки'
		И Пауза 0.5
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаСервисОсновные'
		И Пауза 0.5
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаСистемныеКаталоги'
		И Пауза 0.5
		И Я делаю подсветку элемента VA "КаталогПроекта" "Project directory"
		И Пауза 0.5

* The second service variable is the ToolsCatalog.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЗапускТестов'
		И Пауза 0.5
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 12 по 13 строку 'ToolsDirectory variable' подсценарий
* It stores the value that is specified in the Tools Catalog setting. This is the directory where Vanessa Automation is located.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки'
		И Пауза 0.5
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаСервисОсновные'
		И Пауза 0.5
		И Я делаю подсветку элемента VA "КаталогИнструментов" "Tools directory"
		И Пауза 0.5


* The third service variable is the FeatureCatalog.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЗапускТестов'
		И Пауза 0.5
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 16 по 17 строку 'FeatureDirectory variable' подсценарий
* It stores the directory where the current feature file is located.

* That's it, move on to the next lesson of the interactive help.




