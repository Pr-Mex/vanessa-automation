#language: en

@IgnoreOnCIMainBuild

Feature: <feature description>

As <Role>
I want <functionality description>
To <business effect>


Scenario: <описание сценария>

	And I execute 1C:Enterprise script
			| 'Сообщить("Hellow world1.")' |
	Then I raise "Текст исключения1" exception
