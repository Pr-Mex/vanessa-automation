# language: ru
#parent uf:
@UF5_формирование_результатов_выполнения_сценариев
#parent ua:
@UA21_формировать_отчет_jUnit

@IgnoreOnCIMainBuild

Функциональность: ФичаДляПроверкиОтчетаjUnit6

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эфект> 

@classname=ModuleExceptionPath
Сценарий: ФичаДляПроверкиОтчетаjUnit6
	И я выполняю код встроенного языка на сервере
		| 'ВызватьИсключение "' |
		| '\|[AssertError]' |
		| '\|[Expected]' |
		| '\|Timeout exceeded' |
		| '\|[Actual]' |
		| '\|Internet error' |
		| '\|Timeout exceeded' |
		| '\|";' |
	