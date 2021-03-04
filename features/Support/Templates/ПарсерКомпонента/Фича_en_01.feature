# language: en
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA30_Прочие_макеты

@IgnoreOnCIMainBuild
@tree

Feature: Фича_en_01


Test feature.

Background:
	If "ИмяПеременнойКонтекст" variable exists Then
		And I delete "ИмяПеременнойКонтекст" variable
		And I save "2" in "$$ИмяПеременнойКонтекст$$" variable 
	Else	
		And I save "1" in "$$ИмяПеременнойКонтекст$$" variable 
	And I display "ИмяПеременнойКонтекст" variable value


Scenario: Scen_en_01
	And I save "2" in "ИмяПеременной2" variable
	And I display "ИмяПеременной2"   variable value 

Scenario: Scen_en_02
	And I save "3" in "ИмяПеременной3" variable
	And I display "ИмяПеременной3"   variable value 