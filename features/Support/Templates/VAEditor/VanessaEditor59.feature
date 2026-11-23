#language: en
# encoding: utf-8

@IgnoreOnCIMainBuild


Feature: VAEditor59
 

Scenario: VAEditor59

	And Delay 1
	And I input text from "TemplateName" template in the field named "FieldName"
	And "TableName" table does not contain rows by template:
 		| 'ColumnName1' | 'ColumnName2' |
 		| 'Value1'      | 'Value2'      |

	

