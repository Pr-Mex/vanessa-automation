#encoding utf-8
#language: en

@IgnoreOnCIMainBuild
@tree

Feature: Creare Clientii pe CUI

As Manager
I want Crea Clientii pe CUI
To indeplini catalogului Parteneri

Background:
	Given I launch TestClient opening script or connect the existing one

Scenario Outline: Indeplinire catalogului Parteneri
	And I close "Clienți" window

Examples:
	|CUI|
	|RO9335522|
