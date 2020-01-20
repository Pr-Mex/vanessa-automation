#encoding utf-8
#language: en

@IgnoreOnCIMainBuild
@tree


Feature: СлужебнаяФичаEN6

Background:
	Given I launch TestClient opening script or connect the existing one

Scenario: I open some form
	And In the command interface I select "Склады" "Склады"
	Then "Склады" window is opened
	And I click the button named "ФормаСоздать"
	Then "Склады (*)" window is opened



