# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA45_Прочая_активность_вообще

@IgnoreOnCIMainBuild


Функционал: Один сценарий структура сценария
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность выполнить один сценарий структуры сценария
 

Структура сценария: Загрузка тестовой фичи проверка с выбранного шага
	Когда это шаг служебного экспортного сценария
	Когда Я увеличил значение <ИмяПараметра> в КонтекстСохраняемый на 1
	И     Я увеличил значение <ИмяПараметра> в КонтекстСохраняемый на 1
	И     Я увеличил значение <ИмяПараметра> в КонтекстСохраняемый на 1
	И     Я могу продолжить выполнение шагов в хост системе

	Примеры:
		| ИмяПараметра      |
		| СлужебныйПараметр |
		| СлужебныйПараметр |

		
		
		
Сценарий: Тестовый сценарий. Один сценарий структура сценария
	И     Я увеличил значение "СлужебныйПараметр" в КонтекстСохраняемый на 1