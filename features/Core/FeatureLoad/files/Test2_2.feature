#language: en

@IgnoreOnCIMainBuild

Feature: <feature description>

As <Role>
I want <functionality description>
To <business effect>


Scenario: <описание сценария>

	And I execute 1C:Enterprise script
			| 'Сообщить("Hello world2.")' |
	Then I raise "Текст исключения2" exception
