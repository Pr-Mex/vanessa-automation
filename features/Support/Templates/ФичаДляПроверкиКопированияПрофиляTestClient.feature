﻿# language: ru

@IgnoreOnCIMainBuild

Функциональность: ФичаДляПроверкиКопированияПрофиляTestClient
 

 
Сценарий: Для ФичаДляПроверкиКопированияПрофиляTestClient
	
Дано Я копирую текущий профиль TestClient с установкой параметров:
	| 'Имя подключения' | 'Логин'            | 'Пароль'      | 'Дополнительные параметры строки запуска' |
	| 'ДоКопирования'   | 'Акакий Ататаевич' | "1Aa А а >!<" | '/C\"ПараметрыЗапускаИзВнешнейОперации=/TestClient -TPort 48050\"' |

