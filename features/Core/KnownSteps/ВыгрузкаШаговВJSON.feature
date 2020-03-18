# language: ru
# encoding: utf-8
#parent uf:
@UF3_формирование_features
#parent ua:
@UA32_Создание_фиче_файлов

@IgnoreOn82Builds
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOnOFBuilds
@IgnoreOnWeb




Функционал: Выгрузка известных шагов в JSON



Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

	
Сценарий: Выгрузка известных шагов в JSON
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой		
	

	И я перехожу к закладке с именем "ГруппаДополнительно"
	И я нажимаю на кнопку с именем 'ДобавитьИзвестныйШаг'
	Тогда открылось окно 'Известные шаги*'

	Если Файл "C:\Temp\CommandFeature\Steps.json" существует тогда 
		Тогда я удаляю файл "C:\Temp\CommandFeature\Steps.json"

	И я буду выбирать внешний файл "C:\Temp\CommandFeature\Steps.json"
	И я нажимаю на кнопку с именем 'ФормаВыгрузитьШагиВJSON'
	
	И пауза 5
	
	И Файл "C:\Temp\CommandFeature\Steps.json" существует
	Тогда я удаляю файл "C:\Temp\CommandFeature\Steps.json"

	И Я закрываю окно 'Известные шаги*'