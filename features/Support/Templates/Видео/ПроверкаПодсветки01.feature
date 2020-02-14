# language: ru

@IgnoreOnCIMainBuild


Функциональность: ПроверкаПодсветки01
 

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: ПроверкаПодсветки01
	
	* Первая группа шагов
		И В командном интерфейсе я выбираю 'Основная' 'Справочник1'
		Тогда открылось окно 'Справочник1'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Справочник1 (создание)'
		И в поле с именем 'Наименование' я ввожу текст '111'
		И из выпадающего списка с именем "Реквизит1" я выбираю точное значение 'ЗначениеПеречисления1'
		И я устанавливаю флаг с именем 'РеквизитБулево'
		И я меняю значение переключателя с именем 'РеквизитПереключатель' на 'Первое значение'
		
	* Вторая группа шагов	
		И в таблице "ТабличнаяЧасть1" я нажимаю на кнопку с именем 'ТабличнаяЧасть1Добавить'
		И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1РеквизитЧисло' я ввожу текст '111,00'
		И в таблице "ТабличнаяЧасть1" я активизирую поле с именем "ТабличнаяЧасть1РеквизитСтрока"
		И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1РеквизитСтрока' я ввожу текст '111'
		И в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
