﻿# language: ru

Функциональность: Пример, когда нужно использовать паузу.

Сценарий: Пример, когда нужно использовать паузу.

	* Лучше всего использовать шаги, ожидающиее наступления какого-то события. Примеры.
		И я жду закрытия окна "Нужное окно" в течение 20 секунд
		И я жду, что табличный документ "ИмяЭлемента" заполнится данными в течение 10 секунд
		И выражение внутреннего языка 'Выражение' стало Истинно в течение 10 секунд
		И я жду, что в таблице "ИмяТаблицы" количество строк будет "больше" 0 в течение 20 секунд
										

	* Также в сценариях есть возможность использовать шаг паузы
		И пауза 5
		И пауза 0.1
	