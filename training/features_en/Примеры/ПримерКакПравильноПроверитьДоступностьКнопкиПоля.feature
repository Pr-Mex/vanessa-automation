# language: en

Feature: How to check the visibility or accessibility of a button, item or menu item correctly.

Scenario: How to check the visibility or accessibility of a button, item or menu item correctly.

* Availability check
		And form attribute named "ElementName" is available

* Visibility check
		And I wait "Element header" attribute appearance in 20 seconds
		And "Field header" form attribute exists and is invisible
	