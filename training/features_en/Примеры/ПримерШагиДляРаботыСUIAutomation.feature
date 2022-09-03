# language: ru

Feature: Примеры, шаги для работы с UI Automation.

Scenario: Примеры, шаги для работы с UI Automation.

* Basic steps for working with the Automation UI.
		And I click form item %1 PID %2 Title%3 Type UI Automation
		And I click on form element "PID" "Tooltip" UI Automation. Search by hint

* Reference - technology description
		//https://en.wikipedia.org/wiki/Microsoft_UI_Automation

* Reference - Windows SDK
		//https://developer.microsoft.com/ru-ru/windows/downloads/windows-sdk/

* Where Object Explorer approximately is
		//C:\Program Files (x86)\Windows Kits\10\bin\10.0.19041.0\x64\inspect.exe

* How to get the PID of the Test Client process
		And I read current Test Client profile data
		And I click form item %1 PID %2 Title%3 Type UI Automation

