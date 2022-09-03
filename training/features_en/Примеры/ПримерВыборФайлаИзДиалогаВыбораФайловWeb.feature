# language: ru

Feature: Примеры, как выполнить выбор файла из диалога выбора файлов. Web клиент.

Scenario: Примеры, как выполнить выбор файла из диалога выбора файлов. Web клиент.

* The action that launches the file selection dialog
		And I click "Select a file" button
		
* A special step that replaces the result of file selection from the file selection dialog
		And I select add-in file "FullPathToFile"


