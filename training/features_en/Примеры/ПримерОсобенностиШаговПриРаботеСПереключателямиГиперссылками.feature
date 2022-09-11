# language: en

Feature: Example of the peculiarities of the steps when working with switches and hyperlinks.

Scenario: Example of the peculiarities of the steps when working with switches and hyperlinks.

* Switches
		And I change the radio button named "ElementName" value to "SwitchValue"
		And I change the radio button named "ElementName" value to 1
	
* Hyperlinks
		And I click "HyperlinkName" hyperlink of the field named "ElementName"
		And I click 1 hyperlink of the field named "ElementName"

* Fields
		And I select "Value" exact value from the drop-down list named "ElementName"
		And I select 1 exact value from the drop-down list named "ElementName"