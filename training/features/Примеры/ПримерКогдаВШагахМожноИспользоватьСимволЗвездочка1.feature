﻿# language: ru

Функциональность: Пример, когда в шагах можно использовать символ * (звездочка).

Сценарий: Пример, когда в шагах можно использовать символ * (звездочка).

	* При поиске окна по заголовку
		Тогда открылось окно "Заказ*покупателя № *"
	
	* При поиске формы по имени или заголовку
		Тогда открылась форма с именем "Справочник.Клиенты.*"
	
	* При поиске элемента формы по имени или заголовку
		Тогда элемент формы с именем "Кл*ент" стал равен "ЗначениеПоля"
		
	* При сравнении таблицы формы с таблицей Gherkin. Всё значение ячейки заменяется на *
		Тогда таблица "Список" стала равной:
			| 'Наименование'       | 'Код'       |
			| 'Тестовый Элемент 1' | '*'         |
			| 'Тестовый Элемент 2' | '000000002' |
	
	* При сравнении табличного документа с таблицей Gherkin. Всё значение ячейки заменяется на *
		Тогда табличный документ "РеквизитТабличныйДокумент" равен:
			| 'Наименование' | 'Предопределенный' |
			| '111'          | '*'                |

			
				