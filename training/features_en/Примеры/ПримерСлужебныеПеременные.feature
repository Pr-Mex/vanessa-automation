# language: en

Feature: Demo of service variables usage

Scenario: Demo of service variables usage

* Service variable ProjectCatalog
		And I save "$ProjectPath$" in "ProjectLocation" variable
		And I display "ProjectLocation" variable value
		
* Service variable ToolsCatalog
		And I save "$InstrPath$" in "VanessaAutomationLocation" variable
		And I display "VanessaAutomationLocation" variable value
		
* Service variable FeatureCatalog
		And I save "$FeaturePath$" in "FeatureFileLocation" variable
		And I display "FeatureFileLocation" variable value
		
