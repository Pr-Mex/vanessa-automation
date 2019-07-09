
#language: en

@tree
@IgnoreOnCIMainBuild

Functionality: <description features>

As <Role>
I want <functional description>
To <business effect>

Scenario: First


	And I save "1" in "KolichestvoNachalnoe" variable
	If "KolichestvoNachalnoe" variable is equal to 1 Then
		And I save "2" in "KolichestvoNachalnoe" variable
		And 1C:Enterprise language expression "Контекст.KolichestvoNachalnoe = 2" is true
		And I save "Контекст.KolichestvoNachalnoe" in "KolichestvoNachalnoe2" variable globally
		
		
Scenario: Second
	And 1C:Enterprise language expression "КонтекстСохраняемый.KolichestvoNachalnoe2 = 2" is true

