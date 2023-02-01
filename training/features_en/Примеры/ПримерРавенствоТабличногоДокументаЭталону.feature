# language: en

Feature: Examples of checking the equality of spreadsheet document and a template

Scenario: Examples of checking the equality of spreadsheet document and a template

* The main option
	
		Given "AttributeName" spreadsheet document is equal to "TemplateName"
		Given "AttributeName" spreadsheet document is equal to "TemplateName" by template


* A rarer option
		
		Then "SpreadsheetDocumentAttribute" spreadsheet document is equal
			| 'Value1' | 'Value2' |
			| 'Value3' | '*'         |

		Then "SpreadsheetDocumentAttribute" spreadsheet document is equal by template
			| 'Value1' | 'Value2' |
			| 'Value3' | 'Va*ue4' |