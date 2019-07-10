# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312

//Фича корректно работает только на 8.3.13 и выше.

@tree


Функциональность: Проверка видимости полей с учетом родителя

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
Сценарий: Проверка видимости полей с учетом родителя
	И В командном интерфейсе я выбираю 'Основная' 'Справочник1'
	Тогда открылось окно 'Справочник1'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Справочник1 (создание)'
	И я перехожу к закладке "Видимость элементов"

	И элемент формы с именем "ЭлементНевидимаяГруппа1" присутствует на форме
	И я нажимаю на кнопку 'Скрыть невидимая группа 1'
	//И пауза 1
	И элемент формы с именем "ЭлементНевидимаяГруппа1" отсутствует на форме
	И элемент формы с именем "ЭлементНевидимаяГруппа1" существует и невидим на форме
	
	И элемент формы с именем "ЭлементНевидимаяГруппа2" присутствует на форме
	И я нажимаю на кнопку 'Скрыть невидимая группа 21'
	//И пауза 1
	И элемент формы с именем "ЭлементНевидимаяГруппа2" отсутствует на форме

	И элемент формы с именем "НевидимаяТаблицаКомандаВНевидимойТаблице" присутствует на форме
	И в таблице "НевидимаяТаблица" я нажимаю на кнопку 'Скрыть кнопку в таблице'
	//И пауза 1
	И элемент формы с именем "НевидимаяТаблицаКомандаВНевидимойТаблице" отсутствует на форме
	
	//эта кнопка (НевидимаяТаблицаСкрытьКнопкуВТаблице) пока ещё видима
	И элемент формы с именем "НевидимаяТаблицаСкрытьКнопкуВТаблице" присутствует на форме
	И я нажимаю на кнопку 'Скрыть невидимая группа 3'
	//а сейчас, группа, в которой находится вся таблица скрыта и кнопка тоже невидима пользователю
	//И пауза 1
	И я включаю проверку видимости элементов с учётом видимости групп элементов
	И элемент формы с именем "НевидимаяТаблицаСкрытьКнопкуВТаблице" отсутствует на форме
	
	
	
	И    Я закрыл все окна клиентского приложения
	
	И В командном интерфейсе я выбираю 'Основная' 'Обработка страницы без отображения'
	//элемент на первой странице
	И элемент формы с именем "Поле1Страница1" присутствует на форме
	//элемент на второй странице
	И элемент формы с именем "Поле1Страница2" отсутствует на форме
	
	И я нажимаю на кнопку 'Перейти на страницу 2'
	//элемент на первой странице
	И элемент формы с именем "Поле1Страница1" отсутствует на форме
	//элемент на второй странице
	И элемент формы с именем "Поле1Страница2" присутствует на форме
	И я выключаю проверку видимости элементов с учётом видимости групп элементов
	
	
	