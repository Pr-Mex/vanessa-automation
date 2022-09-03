# language: ru

Feature: Примеры, как проверить равенство табличного документа эталону

Scenario: Примеры, как проверить равенство табличного документа эталону

* The main option
	
		Given "AttributeName" spreadsheet document is equal to "TemplateName"
		Given "AttributeName" spreadsheet document is equal to "TemplateName" by template


* A rarer option
		
		Then "SpreadsheetDocumentAttribute" spreadsheet document is equal
			| 'Значение1' | 'Значение2' |
			| 'Значение3' | '*'         |

		Then "SpreadsheetDocumentAttribute" spreadsheet document is equal by template
			| 'Значение1' | 'Значение2' |
			| 'Значение3' | 'Знач*ние4' |
