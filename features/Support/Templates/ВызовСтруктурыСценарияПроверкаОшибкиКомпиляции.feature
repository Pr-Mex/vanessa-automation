# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA45_Прочая_активность_вообще

@tree
@IgnoreOnCIMainBuild

Функционал: Тест


Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Сценарий заполнения Справочника Контрагентов для Клиента XXX
	Дано Заполнение Справочника Контрагентов (Общий) (с Уникальным Именем)
			|PartnerName|MainContact|Responsible|RegCountry|
			|	111	|	Kent Rønning Andersen	|	Юрий Буренко	|	Denmark	|
			|	222	|	Kent Rønning Andersen	|	Юрий Буренко	|	Denmark	|