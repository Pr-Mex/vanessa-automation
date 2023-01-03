&НаКлиенте
Процедура OnOpen(Cancel)
	
	ОписаниеОповещения = Новый ОписаниеОповещения("EndRemoteList", ЭтаФорма);
	ВладелецФормы.ВнешняяКомпонентаРаботаСGit.BeginGettingRemotes(ОписаниеОповещения);
	
КонецПроцедуры

&НаКлиенте
Процедура GetDefaultSignature(Команда)
	
	ОписаниеОповещения = Новый ОписаниеОповещения("EndDefaultSignature", ЭтаФорма);
	ВладелецФормы.ВнешняяКомпонентаРаботаСGit.BeginGettingSignature(ОписаниеОповещения);
	
КонецПроцедуры

&НаКлиенте
Процедура EndRemoteList(Value, AdditionalParameters) Экспорт 
	
	RemoteList.Очистить();
	JsonData = FormOwner.ПрочитатьОбъектJSON(Value);
	Если JsonData.success Тогда
		Если ТипЗнч(JsonData.result) = Тип("Array") Тогда 
			Для Каждого RemoteItem In JsonData.result Do
				FillPropertyValues(RemoteList.Добавить(), RemoteItem);
			КонецЦикла;
		КонецЕсли;
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура EndDefaultSignature(Value, AdditionalParameters) Экспорт 
	
	JsonData = FormOwner.ПрочитатьОбъектJSON(Value);
	Если JsonData.success Тогда
		ПодписьИмя = JsonData.result.name;
		ПодписьEmail = JsonData.result.email;
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура SetSignatureAuthor(Команда)
	
	ВладелецФормы.ВнешняяКомпонентаРаботаСGit.BeginCallingSetAuthor(Новый ОписаниеОповещения, ПодписьИмя, ПодписьEmail);
	
КонецПроцедуры

&НаКлиенте
Процедура SetSignatureCommitter(Команда)

	ВладелецФормы.ВнешняяКомпонентаРаботаСGit.BeginCallingSetCommitter(Новый ОписаниеОповещения, ПодписьИмя, ПодписьEmail);

КонецПроцедуры

