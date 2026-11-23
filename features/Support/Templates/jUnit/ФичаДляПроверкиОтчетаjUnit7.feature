# language: ru
# encoding: utf-8

@IgnoreOnCIMainBuild

Функциональность: ФичаДляПроверкиОтчетаjUnit7

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эфект> 

@classname=ModuleExceptionPath
Сценарий: ФичаДляПроверкиОтчетаjUnit7
	И я выполняю код встроенного языка
		| 'ВызватьИсключение "' |
		| '\|[AssertError]' |
		| '\|";' |
	