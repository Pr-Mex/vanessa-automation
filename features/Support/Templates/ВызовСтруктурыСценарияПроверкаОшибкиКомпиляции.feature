# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA30_Прочие_макеты

@tree
@IgnoreOnCIMainBuild

Функционал: Тест 1


Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Сценарий заполнения Справочника Контрагентов для Клиента XXX
	Дано Заполнение Справочника Контрагентов (Общий) (с Уникальным Именем)
			|PartnerName|MainContact|Responsible|RegCountry|
			|	111	|	Kent Rønning Andersen	|	Юрий Буренко	|	Denmark	|
			|	222	|	Kent Rønning Andersen	|	Юрий Буренко	|	Denmark	|