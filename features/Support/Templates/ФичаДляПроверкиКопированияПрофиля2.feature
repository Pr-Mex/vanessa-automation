# language: ru
# encoding: utf-8
#parent ua:
@UA26_Макеты_для_проверки_test_client
#parent uf:
@UF9_Вспомогательные_фичи

@IgnoreOnCIMainBuild
@tree


Функциональность: ФичаДляПроверкиКопированияПрофиля

Сценарий: ФичаДляПроверкиКопированияПрофиля

	Когда Я копирую текущий профиль TestClient с установкой параметров:
		| 'Имя'         | 'Синоним'        | 'Порт' | 'Логин' | 'Пароль' |
		| 'ИмяПрофиля2' | 'СинонимПрофиля' | '1538' | ''      | ''       |