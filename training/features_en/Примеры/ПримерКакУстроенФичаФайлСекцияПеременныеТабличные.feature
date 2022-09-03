# language: ru

Feature: Секция Переменные. Табличные.

Переменные:

	| 'Имя'                | 'Представление'  | 'Type'        |
	| 'MainCounterparty1' | 'ООО Моя Фирма1' | 'Справочник' |

* CompaniesList
		| 'Имя'                | 'Представление'  | 'Type'        | 'Выражение'      |
		| 'MainCounterparty2' | 'ООО Моя Фирма2' | 'Справочник' | '{Строка(2+2)}'  |
		| 'MainCounterparty3' | 'ООО Моя Фирма3' | 'Справочник' | '{!Строка(2+2)}' |

Scenario: Секция Переменные. Табличные.
	And I display "MainCounterparty1.Presentation" variable value
	And I display "CounterpartyList.MainCounterparty2.Presentation" variable value
	And I display "CounterpartyList.MainCounterparty3.Expression" variable value

