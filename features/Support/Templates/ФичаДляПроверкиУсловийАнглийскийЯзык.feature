
#language: en

@tree
@IgnoreOnCIMainBuild

Functionality: <description features>

As <Role>
I want <functional description>
To <business effect>

Scenario: First


	And I remember the expression result "1" in the variable "KolichestvoNachalnoe"
	If the variable "KolichestvoNachalnoe" is set to 1 Then
		And I remember the expression result "2" in the variable "KolichestvoNachalnoe"
		And the expression of the internal language "Контекст.KolichestvoNachalnoe = 2" is true
		And I remember the expression result "Контекст.KolichestvoNachalnoe" in the variable "KolichestvoNachalnoe2" globally
		
		
Scenario: Second
	And the expression of the internal language "КонтекстСохраняемый.KolichestvoNachalnoe2 = 2" is true

