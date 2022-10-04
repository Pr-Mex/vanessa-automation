# language: en

Feature: Variables section. Tabular.

Variables:

	| 'Name'                | 'Performance'  | 'Type'        |
	| 'MainCounterparty1' | 'OOO My Firma1' | 'Catalog' |

* CompaniesList
		| 'Name'                | 'Performance'  | 'Type'        | 'Expression'      |
		| 'MainCounterparty2' | 'OOO My Firma2' | 'Catalog' | '{String(2+2)}'  |
		| 'MainCounterparty3' | 'OOO My Firma3' | 'Catalog' | '{!String(2+2)}' |

Scenario: Variables section. Tabular.
	And I display "MainCounterparty1.Presentation" variable value
	And I display "CounterpartyList.MainCounterparty2.Presentation" variable value
	And I display "CounterpartyList.MainCounterparty3.Expression" variable value
