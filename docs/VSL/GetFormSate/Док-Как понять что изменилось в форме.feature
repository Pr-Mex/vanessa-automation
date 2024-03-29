﻿# language: ru
# encoding: utf-8
#parent uf:
@UF6_текстовые_и_видео_инструкции
#parent ua:
@UA31_описание_настроек_и_инструкции

@IgnoreOnCIMainBuild



Функциональность: Получение состояние формы

 
Контекст:
	И я закрываю сеанс текущего клиента тестирования
	Дано Я открываю Vanessa-Automation в TestClient для записи автодокументации "TestManager"
	И Пауза 1
	И я устанавливаю флаг с именем 'ПроверкаСинтаксисаВРедакторе'
	И Пауза 1
	И я снимаю флаг с именем 'ПроверкаСинтаксисаВРедакторе'
	Если есть картинка "ЭлементРазделовДемоБазыГлавное" Тогда
		И я нажимаю сочетание клавиш "Ctrl+Shift+`"
		И Пауза 1
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	И я нажимаю на кнопку с именем 'ФормаVanessaEditorСоздатьНовыйСценарий'
	И Пауза 1
	//Корректный буфер изменений
	И я нажимаю сочетание клавиш "Ctrl+z"
	И Пауза 1
	И я нажимаю сочетание клавиш "Ctrl+y"
	И Пауза 1
	И клик по координатам "1200" "800"
	И Пауза 1
	
		

Сценарий: Получение состояние формы

	@YandexTTS: ermil,neutral
	* Привет, Ванесса! Расскажи пожалуйста как мне понять что изменилось в форме после выполненного действия?
	@YandexTTS: ermil,neutral
	* Я пишу сценарий, и мне надо добавить шаг, который ждет что у формы изменилось состояние, но мне непонятно за что зацепиться.


	* Привет! Это не проблема, сейчас покажу!
	* В Vanessa Automation есть механизм, который позволяет запомнить состояние формы, а затем найти, что в ней изменилось.
	* Давай сначала подкл^ючим клиент тестирования.
		И я перехожу к закладке "Клиенты тестирования"
		И в таблице "ДанныеКлиентовТестирования" я нажимаю на кнопку с именем 'ТестКлиентПодключить'
		И Пауза 1
		
				
	#[autodoc.ignorestep]	
	И пауза 12
		
	* И откроем в нём какую-нибудь форму.
		Затем клик на картинку "Основная"
		Затем клик на картинку "Справочник1"
	
	* Расположим ^окна поудобнее, чтобы было видно и менеджера тестирования и клиента тестирования.
		Дано я нажимаю хоткей "right" "win"
		И я читаю данные текущего профиля клиента тестирования
		И я активизирую процесс "$PIDКлиентаТестирования$"
		И Пауза 0.1
		Затем клик на картинку "Vanessa_Automation"
		И Пауза 0.1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И Пауза 1
		Дано я нажимаю хоткей "left" "win"

	#[autodoc.ignorestep]	
	* Служебная группа
		И я получаю данные процесса по заголовку окна "Конфигурация*"
		И я активизирую процесс "$PIDКлиентаТестирования$"
		И я активизирую процесс "$ProcessId$"
		И Пауза 1


	* Допустим у нас задача найти изменения в форме элемента справочника после изменения его реквизитов.
	* Откроем его и выполним в Vanessa Automation команду, которая запоминает текущее состояние формы клиента тестирования.
		И я получаю данные процесса по заголовку окна "Конфигурация*"
		И я активизирую процесс "$PIDКлиентаТестирования$"
		И я активизирую процесс "$ProcessId$"
		И Пауза 1
		И я перемещаю курсор к элементу формы  '$ProcessId$' 'Тестовый Элемент 1 Наименование' '' UI Automation
		И я делаю двойной клик по элементу формы '$ProcessId$' 'Тестовый Элемент 1 Наименование' '' UI Automation
		И Пауза 1
		Дано я нажимаю хоткей "right" "win"
		И Пауза 1
		И я перемещаю курсор к элементу формы  '$PIDКлиентаТестирования$' 'Инструменты' '' UI Automation
		И я делаю клик по элементу формы '$PIDКлиентаТестирования$' 'Инструменты' '' UI Automation
		И Пауза 1
		И я перемещаю курсор к элементу формы  '$PIDКлиентаТестирования$' 'Запомнить состояние формы клиента тестирования' '' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы '$PIDКлиентаТестирования$' 'Запомнить состояние формы клиента тестирования' '' UI Automation
		И Пауза 1
	
	* Далее изменим несколько реквизитов в форме элемента справочника. Пусть это будет выпадающий список и флаг.
			И я перемещаю курсор к элементу формы  '$ProcessId$' 'Реквизит1' 'ComboBox' UI Automation
			И я делаю клик по элементу формы '$ProcessId$' 'Реквизит1' 'ComboBox' UI Automation
			И Пауза 0.1
			И я нажимаю сочетание клавиш "Down"
			И Пауза 0.1
			И я перемещаю курсор к элементу формы  '$ProcessId$' 'ЗначениеПеречисления1' '' UI Automation
			И я делаю клик по элементу формы '$ProcessId$' 'ЗначениеПеречисления1' '' UI Automation
			И Пауза 1
			И я перемещаю курсор к элементу формы  '$ProcessId$' 'Реквизит булево:' 'CheckBox' UI Automation
			И я делаю клик по элементу формы '$ProcessId$' 'Реквизит булево:' 'CheckBox' UI Automation
			И Пауза 1
	* При этом сработали обработчики событий этих элементов формы. И какие-то связанные элементы формы тоже могли измениться.
			
		
	* Теперь выполним команду для получений изменений состояния формы клиента тестирования.
		И я перемещаю курсор к элементу формы  '$PIDКлиентаТестирования$' 'Инструменты' '' UI Automation
		И я делаю клик по элементу формы '$PIDКлиентаТестирования$' 'Инструменты' '' UI Automation
		И Пауза 1
		И я перемещаю курсор к элементу формы  '$PIDКлиентаТестирования$' 'Получить изменения формы в виде шагов' '' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы '$PIDКлиентаТестирования$' 'Получить изменения формы в виде шагов' '' UI Automation
		И Пауза 1

	* Таким образом в редакторе сценария появились шаги, с помощью которых понятно что именно изменилось в форме.
	* Обрати внимание, что мы изменяли только два реквизита формы, но в реальности их изменилось три и механизм сравнения форм это обнаружил.
	* С помощью полученных шагов легко понять на какое событие формы можно завязаться, при написании сценария, чтобы дождаться нужного состояния формы.
	* В нашем случае, например, можно использовать шаг ожидания значения установки флага с именем Реквизит булево.
			И Пауза 1
			И я нажимаю сочетание клавиш "Ctrl+z"
			И Пауза 0.1
			И я помещаю в буфер обмена строку 'И у элемента с именем \'РеквизитБулево\' я жду значения \'Да\' в течение 60 секунд'
			И я нажимаю сочетание клавиш "Ctrl+v"
			И Пауза 0.1
			
	@YandexTTS: ermil,neutral
	* Спасибо Ванесса! Пойду доработаю свой сценарий!
			
	* Отлично. На этом всё. Подписывайтесь, ставьте лайки, до новых встреч!
	
	И видеовставка "Ванесса! Тесты - есть!"
					