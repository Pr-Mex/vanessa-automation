# language: ru

Feature: Как правильно проверить видимость или доступность кнопки, элемента или пункта меню.

Scenario: Как правильно проверить видимость или доступность кнопки, элемента или пункта меню.

* Availability check
		And form attribute named "ElementName" is available

* Visibility check
		And I wait "Element header" attribute appearance in 20 seconds
		And "Field header" form attribute exists and is invisible
	
