﻿# language: ru

@IgnoreOnOFBuilds
@IgnoreOn82Builds

#Из-за проблемы с переключателями.
@IgnoreOn837


@tree



Функциональность: Перебор элементов массива
	Как разработчик
	Хочу иметь возможность пербрать все элементы массива
	Чтобы выполнять сложные бизнес-процессы

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

	
Сценарий: Перебор элементов массива, когда он задан массивом
	//Контекст
	И я выполняю код встроенного языка
	| 'Контекст.Вставить("СписокОтборовКГ",Новый Массив());' |
	| 'Контекст.СписокОтборовКГ.Добавить("111");' |
	| 'Контекст.СписокОтборовКГ.Добавить("222");' |

	
	И Я запоминаю значение выражения '0' в переменную "Итого"
	
	И для каждого значения "ЗначениеИзМассива" из массива "$СписокОтборовКГ$"
		И Я запоминаю значение выражения '$Итого$ + $ЗначениеИзМассива$' в переменную "Итого"
		И я вывожу значение переменной "ЗначениеИзМассива"

			
	//КонтекстСохраняемый			
	И я выполняю код встроенного языка
	| 'КонтекстСохраняемый.Вставить("СписокОтборовКГСохр",Новый Массив());' |
	| 'КонтекстСохраняемый.СписокОтборовКГСохр.Добавить("333");' |
	| 'КонтекстСохраняемый.СписокОтборовКГСохр.Добавить("444");' |

	И для каждого значения "ЗначениеИзМассиваСохр" из массива "$$СписокОтборовКГСохр$$"
		И Я запоминаю значение выражения '$Итого$ + $ЗначениеИзМассиваСохр$' в переменную "Итого"
		И я вывожу значение переменной "ЗначениеИзМассиваСохр"
		
	И выражение внутреннего языка '$Итого$ = 1110' Истинно	
			
		
	
	
	
Сценарий: Перебор таблицы с несколькими колонками
	Дано я задаю таблицу строк "ТЧ"
		| 'РекСтрока' | 'РекЧисло' | 'РекБулево' |
		| '111'       | '11,11'    | 'Да'        |
		| '222'       | '22,22'    | 'Нет'       |
	
	Затем В командном интерфейсе я выбираю "Основная" "Справочник1"
	Тогда открылось окно "Справочник1"
	И     я нажимаю на кнопку "Создать"
	
	
	И для каждого значения "СтрокаТЧ" из таблицы в памяти "ТЧ" 
			И     в таблице "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
			И     в Таблицу "ТабличнаяЧасть1" в поле "Реквизит число" ввожу значение переменной "РекЧисло"
			И     в Таблицу "ТабличнаяЧасть1" в поле "Реквизит строка" ввожу значение переменной "РекСтрока"
			И     в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
	
	И     таблица "ТабличнаяЧасть1" стала равной:
		| 'Реквизит строка' | 'Реквизит число' |
		| '111'             | '11,11'          |
		| '222'             | '22,22'          |
	
	
Сценарий: Перебор элементов массива
	И для каждого значения "ЗначениеПереключателя" из массива "Первое значение;Второе значение" 
			Дано    Я закрыл все окна клиентского приложения
			Когда В панели разделов я выбираю "Основная"
			И     В панели функций я выбираю "Справочник1"
			Тогда открылось окно "Справочник1"
			И     я нажимаю на кнопку "Создать"
			Тогда открылось окно "Справочник1 (создание)"
			И     я меняю значение переключателя "Реквизит переключатель" на значение переменной "ЗначениеПереключателя"
			И     в поле с именем "Наименование" я ввожу текст "1"
			И     я нажимаю на кнопку "Записать и закрыть"
		

		
Сценарий: Перебор таблицы в памяти
	Дано я задаю таблицу строк "ТаблицаЗначенийПереключателя"
		| 'Первое значение' |
		| 'Второе значение' |
		
	И для каждого значения "ЗначениеПереключателя" из таблицы в памяти "ТаблицаЗначенийПереключателя" 
			Дано    Я закрыл все окна клиентского приложения
			Когда В панели разделов я выбираю "Основная"
			И     В панели функций я выбираю "Справочник1"
			Тогда открылось окно "Справочник1"
			И     я нажимаю на кнопку "Создать"
			Тогда открылось окно "Справочник1 (создание)"
			И     я меняю значение переключателя "Реквизит переключатель" на значение переменной "ЗначениеПереключателя"
			И     в поле с именем "Наименование" я ввожу текст "1"
			И     я нажимаю на кнопку "Записать и закрыть"
		
		