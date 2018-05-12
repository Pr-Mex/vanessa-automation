﻿# language: ru

#https://github.com/silverbulleters/vanessa-behavior/issues/261

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree

Функционал: Проверка работы получения состояния Vanessa-Behavior
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность получить состояние vanessa-behavior
	Чтобы я мог использовать эти данные в своих сценариях
 

	Сценарий: Проверка работы получения состояния Vanessa-Behavior

		Когда Я открываю VanessaBehavior в режиме TestClient	
		
		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ПолучениеСостоянияVanessaBehavior"
		И в VanessaBehavoir в TestClient я загружаю и выполняю сценарии
				И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient
				И Я нажимаю на кнопку выполнить сценарии в Vanessa-Behavior TestClient
				
		Тогда в VanessaBehavoir в TestClient снипет заполнился верно
			И     таблица формы с именем "ДеревоТестов" стала равной:
				| 'Статус'  |
				| ''        |
				| ''        |
				| 'Success' |
				| 'Success' |
						