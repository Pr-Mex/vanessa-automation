# language: ru
# encoding: utf-8
#parent uf:
@UF9_Фичи_макеты
#parent ua:
@UA25_Макеты_для_отчетов_о_выполнении

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
	