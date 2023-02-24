# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA44_Прочая_активность_по_проверке

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316
@IgnoreOnServer
@tree

Функционал: Проверка формирования файла JsonParams
 
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Проверка формирования файла JsonParams
	Когда Я открываю VanessaAutomation в режиме TestClient

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'СоздатьИнструкциюПоОписаниюЭлементов'
	И Пауза 3
	Тогда не появилось окно предупреждения системы
	
	
	



