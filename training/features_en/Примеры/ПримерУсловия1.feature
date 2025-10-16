# language: en

Feature: Examples of conditions.

Scenario: Examples of conditions.

* Steps that are historically created as conditions

		If current window header is "Window header" Then
			And Delay 1
			// some actions

		If form element named "FieldName" is equal to "FieldValue" Then
			// some actions



* Any steps wrapped in If..Then
	
		Given "AttributeName" spreadsheet document is equal to "TemplateName"

		If Spreadsheet document "AttributeName" is equal to layout "LayoutName" Then
			// some actions


