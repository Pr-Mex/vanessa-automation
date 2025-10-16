# language: en

Feature: Examples of file selection from the file selection dialog. Web client.

Scenario: Examples of file selection from the file selection dialog. Web client.

* The action that launches the file selection dialog
		And I click "Select a file" button
		
* A special step that replaces the result of file selection from the file selection dialog
		And I select add-in file "FullPathToFile"

