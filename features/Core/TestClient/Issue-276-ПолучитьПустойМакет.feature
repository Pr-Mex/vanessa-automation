# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA44_Прочая_активность_по_проверке

@IgnoreOn82Builds
@IgnoreOnOFBuilds



Функционал: Проверка получения пустого макета

Как разработчик
Я хочу чтобы корректно происходило получение пустого макета
Чтобы я мог получить пустой макет без ошибок с помощью кнопки Получить изменения формы


Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Получение пустого макета
	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник3"
	Тогда открылось окно "Справочник3"
	И     В открытой форме я нажимаю на кнопку с заголовком "Создать"
	И     Я нажмаю на кнопку Vanessa-Behavior "Забыть состояние формы TestClient"
	И     Я нажмаю на кнопку Vanessa-Behavior "ПолучитьИзмененияФормыGherkin"
	И Пауза 3
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'табличный документ формы с именем "РеквизитТабличныйДокумент" стал пустым'
	И     табличный документ формы с именем "РеквизитТабличныйДокумент" стал пустым