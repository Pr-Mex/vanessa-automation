# language: ru

Feature: Примеры условий.

Scenario: Примеры условий.

* Steps that are historically created as conditions

		If current window header is "Window header" Then
			And Delay 1
			//какие-то действия

		If form element named "FieldName" is equal to "FieldValue" Then
			// какие-то действия



* Any steps wrapped in If..Then
	
		Given "AttributeName" spreadsheet document is equal to "TemplateName"

		Если Табличный документ "AttributeName" равен макету "TemplateName" Тогда
			// какие-то действия



