# language: ru

Feature: Примеры, как выполнить выбор файла из диалога выбора файлов. Тонкий и толстый клиент.

Scenario: Примеры, как выполнить выбор файла из диалога выбора файлов. Тонкий и толстый клиент.

* A special step that replaces the result of file selection from the file selection dialog
		And I select "FullPathToFile" file

* The action that launches the file selection dialog
		And I click "Select a file" button

