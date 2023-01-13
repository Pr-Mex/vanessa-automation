# language: ru

@lessons

Функционал: Интерактивная справка. Создание тестовых данных. Обзор.

Сценарий: Создание тестовых данных. Обзор.

* Hi! In this lesson, I will tell you the main points about creating test data. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Often, when creating new scripts, you need to fill the database with test data.
* These can be companies, goods, organizations, and so on.
* To quickly create test data during script execution, Vanessa Automation has a special tool - Data preparation and loading.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаVanessaEditorИнструменты' UI Automation
		И пауза 1
		И Я делаю подсветку элемента формы VA по имени и клик по нему "VanessaEditorОткрытьИнструментПодготовкаИЗагрузкаДанных" "Data preparation and loading"

* This tool allows custom steps generation that will then generate test data.
* To generate test steps, mark the necessary metadata and click the feature generation button.

* A significant point. The steps of creating test data work on the Test Manager side.
* One more significant point. The created test data are not deleted automatically.
* This should be taken into account if many scripts are run in the same database, since the test data of one script may affect the operation of another script.

* That's it, move on to the next lesson of the interactive help.

