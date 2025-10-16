# language: ru

@lessons

Функционал: Интерактивная справка. Отчет в формате Allure. Данные Allure меток.

Сценарий: Отчет в формате Allure. Данные Allure меток.

* Hi! In this lesson, I will tell you about the settings of additional Allure report labels. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаОтчетыОЗапуске' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаAllure' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаAllureМетки' UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA с типом "Table" "Allure tags"

* This table helps to establish the correspondence between the script tags and the labels that are displayed in the report.
* It is possible to set the label match using a regular expression, or to set the match unconditionally.
		И Я делаю подсветку элемента VA с типом "Table" "Allure tags"

* That's it, move on to the next lesson of the interactive help.
