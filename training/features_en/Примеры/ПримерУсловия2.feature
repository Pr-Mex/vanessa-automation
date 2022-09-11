# language: en

Feature: Examples of conditions.

Scenario: Examples of conditions.


* You can use ElseIf and Else

		If the number of rows in the table "TableName" is "equal" to 0 Then
			// some actions
		ElseIf the number of rows in table "TableName" is "equal" to 1 Then
			// some actions
		ElseIf the number of rows in table "TableName" is "equal" to 2 Then
			// some actions
		Else	
			// some actions

