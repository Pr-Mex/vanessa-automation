# language: en

Feature: Examples, steps for working with UI Automation.

Scenario: Examples, steps for working with UI Automation.

* Basic steps for working with the Automation UI.
		And I click form item "PID" "Header" "Type" UI Automation
		And I click on form element "PID" "Tooltip" UI Automation. Search by hint

* Reference - technology description
		//https://en.wikipedia.org/wiki/Microsoft_UI_Automation

* Reference - Windows SDK
		//https://developer.microsoft.com/ru-ru/windows/downloads/windows-sdk/

* Where Object Explorer approximately is
		//C:\Program Files (x86)\Windows Kits\10\bin\10.0.19041.0\x64\inspect.exe

* How to get the PID of the Test Client process
		And I read current Test Client profile data
		And I click form item "$PIDTestClient$" "Header" "Type" UI Automation
