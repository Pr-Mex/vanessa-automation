# language: ru

Feature: Демонстрация как использовать служебные переменные

Scenario: Демонстрация как использовать служебные переменные

* Service variable ProjectCatalog
		And I save "$ProjectPath$" in "ProjectLocation" variable
		And I display "ProjectLocation" variable value
		
* Service variable ToolsCatalog
		And I save "$InstrPath$" in "VanessaAutomationLocation" variable
		And I display "VanessaAutomationLocation" variable value
		
* Service variable FeatureCatalog
		And I save "$FeaturePath$" in "FeatureFileLocation" variable
		And I display "FeatureFileLocation" variable value
		

